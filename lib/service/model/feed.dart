import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:test_animations/service/model/feed_owner.dart';
part 'feed.freezed.dart';
part 'feed.g.dart';

@freezed
class Feed with _$Feed {
  const Feed._();

  const factory Feed({
    required int id,
    required String body,
    required String created_at,
    required String updated_at,
    String? media_url,
    required String media_type,
    required int like_count,
    required int comment_count,
    required bool is_liked,
    required FeedOwner owner,
  }) = _Feed;

  factory Feed.fromJson(Map<String, dynamic> json) => _$FeedFromJson(json);
}
