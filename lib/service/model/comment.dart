import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:test_animations/service/model/comment_owner.dart';
part 'comment.freezed.dart';
part 'comment.g.dart';

@freezed
class Comment with _$Comment {
  const Comment._();

  const factory Comment({
    required int id,
    required String body,
    required String created_at,
    required String updated_at,
    required int post_id,
    required int reply_count,
    required CommentOwner owner,
  }) = _Comment;

  factory Comment.fromJson(Map<String, dynamic> json) =>
      _$CommentFromJson(json);
}
