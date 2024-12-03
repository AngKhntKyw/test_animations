import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_animations/provider/feed_input_provider.dart';
import 'package:test_animations/provider/feed_provider.dart';
import 'package:test_animations/service/model/comment.dart';
import 'package:test_animations/service/model/feed.dart';
import 'package:test_animations/widgets/feed_page/comment_widget.dart';

class CommentsWidget extends StatefulWidget {
  final Feed feed;
  final ScrollController scrollController;
  const CommentsWidget({
    super.key,
    required this.feed,
    required this.scrollController,
  });

  @override
  State<CommentsWidget> createState() => _CommentsWidgetState();
}

class _CommentsWidgetState extends State<CommentsWidget> {
  List<Comment> commentList = [];
  bool? hasNextPage;
  String? cursor;
  bool isLoading = false;

  @override
  void initState() {
    getCommentsOfAFeed(cs: null);
    widget.scrollController.addListener(loadMoreComments);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: commentList.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Column(
            children: [
              CommentWidget(comment: commentList[index]),
              if (index == commentList.length - 1 && isLoading)
                const Center(
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: CircularProgressIndicator(),
                  ),
                ),
            ],
          ),
        );
      },
    );
  }

  void loadMoreComments() {
    if (!isLoading &&
        widget.scrollController.position.pixels ==
            widget.scrollController.position.maxScrollExtent &&
        hasNextPage!) {
      getCommentsOfAFeed(cs: cursor);
    }
  }

  void getCommentsOfAFeed({required String? cs}) async {
    setState(() {
      isLoading = true;
    });

    final response = await context
        .read<FeedProvider>()
        .getCommentsOfAFeed(feedId: widget.feed.id, cursor: cs);

    //
    List<Comment> modifiableData = List.from(response.data);

    modifiableData.removeWhere((e) {
      return context
          .read<FeedInputProvider>()
          .currentCommentList
          .any((element) => e.id == element.id);
    });

    setState(() {
      isLoading = false;
      commentList.addAll(modifiableData);
      cursor = response.cursor;
      hasNextPage = response.has_next_page;
    });
  }
}
