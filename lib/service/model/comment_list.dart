import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:test_animations/service/model/comment.dart';
part 'comment_list.freezed.dart';
part 'comment_list.g.dart';

@freezed
class CommentList with _$CommentList {
  const CommentList._();

  const factory CommentList({
    required List<Comment> data,
    String? cursor,
    required bool has_next_page,
  }) = _CommentList;

  factory CommentList.fromJson(Map<String, dynamic> json) =>
      _$CommentListFromJson(json);
}
