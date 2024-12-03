// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'feed_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FeedList _$FeedListFromJson(Map<String, dynamic> json) {
  return _FeedList.fromJson(json);
}

/// @nodoc
mixin _$FeedList {
  List<Feed> get data => throw _privateConstructorUsedError;
  String? get cursor => throw _privateConstructorUsedError;
  bool get has_next_page => throw _privateConstructorUsedError;

  /// Serializes this FeedList to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FeedList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FeedListCopyWith<FeedList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedListCopyWith<$Res> {
  factory $FeedListCopyWith(FeedList value, $Res Function(FeedList) then) =
      _$FeedListCopyWithImpl<$Res, FeedList>;
  @useResult
  $Res call({List<Feed> data, String? cursor, bool has_next_page});
}

/// @nodoc
class _$FeedListCopyWithImpl<$Res, $Val extends FeedList>
    implements $FeedListCopyWith<$Res> {
  _$FeedListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FeedList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? cursor = freezed,
    Object? has_next_page = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Feed>,
      cursor: freezed == cursor
          ? _value.cursor
          : cursor // ignore: cast_nullable_to_non_nullable
              as String?,
      has_next_page: null == has_next_page
          ? _value.has_next_page
          : has_next_page // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FeedListImplCopyWith<$Res>
    implements $FeedListCopyWith<$Res> {
  factory _$$FeedListImplCopyWith(
          _$FeedListImpl value, $Res Function(_$FeedListImpl) then) =
      __$$FeedListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Feed> data, String? cursor, bool has_next_page});
}

/// @nodoc
class __$$FeedListImplCopyWithImpl<$Res>
    extends _$FeedListCopyWithImpl<$Res, _$FeedListImpl>
    implements _$$FeedListImplCopyWith<$Res> {
  __$$FeedListImplCopyWithImpl(
      _$FeedListImpl _value, $Res Function(_$FeedListImpl) _then)
      : super(_value, _then);

  /// Create a copy of FeedList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? cursor = freezed,
    Object? has_next_page = null,
  }) {
    return _then(_$FeedListImpl(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Feed>,
      cursor: freezed == cursor
          ? _value.cursor
          : cursor // ignore: cast_nullable_to_non_nullable
              as String?,
      has_next_page: null == has_next_page
          ? _value.has_next_page
          : has_next_page // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FeedListImpl extends _FeedList {
  const _$FeedListImpl(
      {required final List<Feed> data,
      this.cursor,
      required this.has_next_page})
      : _data = data,
        super._();

  factory _$FeedListImpl.fromJson(Map<String, dynamic> json) =>
      _$$FeedListImplFromJson(json);

  final List<Feed> _data;
  @override
  List<Feed> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  final String? cursor;
  @override
  final bool has_next_page;

  @override
  String toString() {
    return 'FeedList(data: $data, cursor: $cursor, has_next_page: $has_next_page)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FeedListImpl &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.cursor, cursor) || other.cursor == cursor) &&
            (identical(other.has_next_page, has_next_page) ||
                other.has_next_page == has_next_page));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_data), cursor, has_next_page);

  /// Create a copy of FeedList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FeedListImplCopyWith<_$FeedListImpl> get copyWith =>
      __$$FeedListImplCopyWithImpl<_$FeedListImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FeedListImplToJson(
      this,
    );
  }
}

abstract class _FeedList extends FeedList {
  const factory _FeedList(
      {required final List<Feed> data,
      final String? cursor,
      required final bool has_next_page}) = _$FeedListImpl;
  const _FeedList._() : super._();

  factory _FeedList.fromJson(Map<String, dynamic> json) =
      _$FeedListImpl.fromJson;

  @override
  List<Feed> get data;
  @override
  String? get cursor;
  @override
  bool get has_next_page;

  /// Create a copy of FeedList
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FeedListImplCopyWith<_$FeedListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
