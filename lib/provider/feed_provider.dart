import 'package:flutter/material.dart';
import 'package:test_animations/service/model/comment.dart';
import 'package:test_animations/service/model/comment_list.dart';
import 'package:test_animations/service/model/feed.dart';
import 'package:test_animations/service/model/feed_list.dart';
import 'package:test_animations/service/model/reply.dart';
import 'package:test_animations/service/model/reply_list.dart';
import 'package:test_animations/service/service/feed_service.dart';

class FeedProvider extends ChangeNotifier {
  Future<FeedList> getFeeds({required String? cursor}) async {
    return await FeedService.getFeeds(cursor: cursor);
  }

  Future<Feed> getFeedById({required int feedId}) async {
    return await FeedService.getFeedById(feedId: feedId);
  }

  Future<CommentList> getCommentsOfAFeed(
      {required int feedId, required String? cursor}) async {
    return await FeedService.getCommentsOfAFeed(feedId: feedId, cursor: cursor);
  }

  Future<ReplyList> getRepliesOfAComment(
      {required int commentId, required String? cursor}) async {
    return await FeedService.getRepliesOFAComment(
        commentId: commentId, cursor: cursor);
  }

  Future<Comment> commentToAFeed(
      {required int feedId, required String comment}) async {
    return await FeedService.commentToAFeed(feedId: feedId, comment: comment);
  }

  Future<Reply> replyToAComment(
      {required int commentId, required String reply}) async {
    return await FeedService.replyToAComment(
        commentId: commentId, reply: reply);
  }
}
