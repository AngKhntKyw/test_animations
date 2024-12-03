import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_animations/provider/feed_provider.dart';
import 'package:test_animations/service/model/comment.dart';
import 'package:test_animations/service/model/reply.dart';

class FeedInputProvider extends ChangeNotifier {
  //
  TextEditingController? _textEditingController;
  TextEditingController? get textEditingController => _textEditingController;

  int? _currentFeedId;
  int? get currentFeedId => _currentFeedId;

  Comment? _currentComment;
  Comment? get currentComment => _currentComment;

  final List<Comment> _currentCommentList = [];
  List<Comment> get currentCommentList => _currentCommentList;

  final List<Reply> _currentReplyList = [];
  List<Reply> get currentReplyList => _currentReplyList;

  BuildContext? _context;
  BuildContext? get context => _context;

  void initializeTextEditingController(
      TextEditingController controller, int feedId, BuildContext ct) {
    _textEditingController = controller;
    _currentFeedId = feedId;
    _context = ct;
    notifyListeners();
  }

  void typing() {
    textEditingController!.text == '' ? _currentComment = null : null;
    notifyListeners();
  }

  void initializeReply(Comment cmt) {
    _currentComment = cmt;
    _textEditingController!.text = "${_currentComment!.owner.username} :";
    notifyListeners();
  }

  VoidCallback get onPressedSendButton => onPressed;
  void onPressed() async {
    if (_currentComment != null) {
      final rp = await context!.read<FeedProvider>().replyToAComment(
          commentId: _currentComment!.id,
          reply: _textEditingController!.text.split(":")[1]);
      _currentReplyList.insert(0, rp);
      _currentComment = null;
      _textEditingController!.clear();
    } else {
      final cmt = await context!.read<FeedProvider>().commentToAFeed(
          feedId: _currentFeedId!, comment: _textEditingController!.text);
      _textEditingController!.clear();
      _currentCommentList.insert(0, cmt);
    }
    notifyListeners();
  }

  void clearCurrentComments() {
    _currentCommentList.clear();
  }
  //
}
