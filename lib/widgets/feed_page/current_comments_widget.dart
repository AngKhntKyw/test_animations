import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_animations/provider/feed_input_provider.dart';
import 'package:test_animations/widgets/feed_page/comment_widget.dart';

class CurrentCommentsWidget extends StatelessWidget {
  const CurrentCommentsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: context.watch<FeedInputProvider>().currentCommentList.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: CommentWidget(
              comment:
                  context.watch<FeedInputProvider>().currentCommentList[index]),
        );
      },
    );
  }
}
