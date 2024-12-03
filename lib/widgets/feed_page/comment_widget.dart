import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_animations/provider/feed_input_provider.dart';
import 'package:test_animations/provider/feed_provider.dart';
import 'package:test_animations/service/model/comment.dart';
import 'package:test_animations/service/model/reply.dart';
import 'package:comment_tree/widgets/comment_tree_widget.dart';
import 'package:comment_tree/widgets/tree_theme_data.dart';
import 'package:test_animations/widgets/feed_page/shimmer_loading_widget.dart';
import 'package:timeago/timeago.dart' as timeago;

class CommentWidget extends StatefulWidget {
  final Comment comment;
  const CommentWidget({super.key, required this.comment});

  @override
  State<CommentWidget> createState() => _CommentWidgetState();
}

class _CommentWidgetState extends State<CommentWidget> {
  bool initialLoading = false;
  bool isLoading = false;
  List<Reply> replyList = [];
  bool? hasNextPage;
  String? cursor;
  bool showReplies = false;

  @override
  void initState() {
    getRepliesOfAComment(cs: null);
    super.initState();
  }

  void toggleShowReplies() {
    setState(() {
      showReplies = !showReplies;
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return initialLoading
        ? const ShimmerLoadingWidget()
        : Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CommentTreeWidget<Comment, Reply>(
                widget.comment,
                treeThemeData: TreeThemeData(
                  lineWidth: 1,
                  lineColor: widget.comment.reply_count != 0
                      ? Colors.grey
                      : Colors.transparent,
                ),
                avatarRoot: (context, value) {
                  return PreferredSize(
                    preferredSize: const Size.fromRadius(20),
                    child: CircleAvatar(
                      radius: 18,
                      backgroundImage: value.owner.profile_url == null
                          ? null
                          : CachedNetworkImageProvider(
                              value.owner.profile_url!,
                            ),
                    ),
                  );
                },
                contentRoot: (context, value) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: size.width,
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: const Color.fromARGB(123, 158, 158, 158),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            AutoSizeText(value.owner.username),
                            AutoSizeText(value.body),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          AutoSizeText(
                              timeago.format(DateTime.parse(value.created_at))),
                          TextButton(
                            onPressed: () {
                              context
                                  .read<FeedInputProvider>()
                                  .initializeReply(value);
                            },
                            child: const AutoSizeText("Reply"),
                          ),
                        ],
                      )
                    ],
                  );
                },
                showReplies
                    ? [
                        ...replyList.map(
                          (e) {
                            return e;
                          },
                        )
                      ]
                    : [],
                avatarChild: (context, value) {
                  return PreferredSize(
                    preferredSize: const Size.fromRadius(20),
                    child: CircleAvatar(
                      radius: 14,
                      backgroundImage: value.owner.profile_url == null
                          ? null
                          : CachedNetworkImageProvider(
                              value.owner.profile_url!,
                            ),
                    ),
                  );
                },
                contentChild: (context, value) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: size.width,
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: const Color.fromARGB(123, 158, 158, 158),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            AutoSizeText(value.owner.username),
                            AutoSizeText(value.body),
                          ],
                        ),
                      ),
                      AutoSizeText(
                        timeago.format(
                          DateTime.parse(value.created_at),
                        ),
                      ),
                    ],
                  );
                },
              ),
              widget.comment.reply_count == 0
                  ? SizedBox.fromSize()
                  : Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: toggleShowReplies,
                          child: AutoSizeText(showReplies
                              ? "Hide replies"
                              : "Show replies (${widget.comment.reply_count})"),
                        ),
                        hasNextPage!
                            ? InkWell(
                                onTap: loadMoreReplies,
                                child: const AutoSizeText("Load more"),
                              )
                            : SizedBox.fromSize(),
                      ],
                    ),
            ],
          );
  }

  void loadMoreReplies() {
    if (hasNextPage!) {
      getRepliesOfAComment(cs: cursor);
    }
  }

  void getRepliesOfAComment({required String? cs}) async {
    setState(() {
      initialLoading = true;
    });

    final response = await context
        .read<FeedProvider>()
        .getRepliesOfAComment(commentId: widget.comment.id, cursor: cs);

    setState(() {
      initialLoading = false;
      replyList.addAll(response.data);
      cursor = response.cursor;
      hasNextPage = response.has_next_page;
    });
  }
}
