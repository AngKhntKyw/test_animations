import 'package:test_animations/service/model/comment.dart';
import 'package:test_animations/service/model/comment_list.dart';
import 'package:test_animations/service/model/feed.dart';
import 'package:test_animations/service/model/feed_list.dart';
import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:test_animations/service/model/reply.dart';
import 'package:test_animations/service/model/reply_list.dart';

class FeedService {
  static String baseUrl = "https://test.rangoonsuccess.app/api";
  static String token =
      "eyJhbGciOiJIUzUxMiJ9.eyJqdGkiOiIxMiIsInN1YiI6IlBvY2tlciBGYWNlIiwicm9sZXMiOiJST0xFX1VTRVIiLCJpYXQiOjE3MzI2MzU4OTYsImV4cCI6MTczMjcyMjI5Nn0.MRAWA1Io4zriLUDRyu0PC2uX6-yco19Ya7DBBVID1DmghaYPu4jzRyItiY2aMX3WGeta9N1sAX-2ZBNV48K2Zg";

  static Future<FeedList> getFeeds({required String? cursor}) async {
    try {
      final getFeedWithoutCursor = "$baseUrl/posts/all?limit=3";
      final getFeedWithCursor = "$baseUrl/posts/all?limit=3&&cursor=$cursor";

      final resp = await http.get(
          Uri.parse(cursor == null ? getFeedWithoutCursor : getFeedWithCursor),
          headers: {
            HttpHeaders.acceptCharsetHeader: "UTF-8",
            HttpHeaders.acceptHeader: 'application/json',
            HttpHeaders.contentTypeHeader: 'application/json',
            HttpHeaders.authorizationHeader: 'Bearer $token',
          });

      if (resp.statusCode == HttpStatus.ok) {
        return FeedList.fromJson(json.decode(resp.body));
      } else {
        throw Exception(resp.body);
      }
    } on SocketException catch (e) {
      throw Exception(e.message);
    } catch (e) {
      throw Exception(e);
    }
  }

  static Future<Feed> getFeedById({required int feedId}) async {
    try {
      final resp =
          await http.get(Uri.parse("$baseUrl/posts/$feedId"), headers: {
        HttpHeaders.acceptCharsetHeader: "UTF-8",
        HttpHeaders.acceptHeader: 'application/json',
        HttpHeaders.contentTypeHeader: 'application/json',
        HttpHeaders.authorizationHeader: 'Bearer $token',
      });

      if (resp.statusCode == HttpStatus.ok) {
        return Feed.fromJson(json.decode(resp.body));
      } else {
        throw Exception('Fail to load Feed -> ${resp.body}');
      }
    } on SocketException catch (e) {
      throw Exception(e);
    } catch (e) {
      throw Exception(e);
    }
  }

  static Future<CommentList> getCommentsOfAFeed(
      {required int feedId, required String? cursor}) async {
    try {
      final getCommentsWithoutCursor = "$baseUrl/posts/$feedId/comments";
      final getCommentsWithCursor =
          "$baseUrl/posts/$feedId/comments?cursor=$cursor";

      final resp = await http.get(
          Uri.parse(cursor == null
              ? getCommentsWithoutCursor
              : getCommentsWithCursor),
          headers: {
            HttpHeaders.acceptHeader: 'application/json',
            HttpHeaders.contentTypeHeader: 'application/json',
            HttpHeaders.authorizationHeader: 'Bearer $token',
          });
      if (resp.statusCode == HttpStatus.ok) {
        return CommentList.fromJson(json.decode(resp.body));
      } else {
        throw Exception('failed to load Feed comments -> ${resp.body}');
      }
    } on SocketException catch (e) {
      throw Exception(e);
    } catch (e) {
      throw Exception(e);
    }
  }

  static Future<ReplyList> getRepliesOFAComment(
      {required int commentId, required String? cursor}) async {
    try {
      final getRepliesWithoutCursor = "$baseUrl/comments/$commentId/replies";
      final getRepliesWithCursor =
          "$baseUrl/comments/$commentId/replies?cursor=$cursor";

      final resp = await http.get(
          Uri.parse(
              cursor == null ? getRepliesWithoutCursor : getRepliesWithCursor),
          headers: {
            HttpHeaders.acceptHeader: 'application/json',
            HttpHeaders.contentTypeHeader: 'application/json',
            HttpHeaders.authorizationHeader: 'Bearer $token',
          });
      if (resp.statusCode == HttpStatus.ok) {
        return ReplyList.fromJson(json.decode(resp.body));
      } else {
        throw Exception('failed to load Feed comments -> ${resp.body}');
      }
    } on SocketException catch (e) {
      throw Exception(e);
    } catch (e) {
      throw Exception(e);
    }
  }

  static Future<Comment> commentToAFeed(
      {required int feedId, required String comment}) async {
    try {
      final resp = await http.post(Uri.parse("$baseUrl/posts/$feedId/comments"),
          headers: {
            HttpHeaders.acceptHeader: 'application/json',
            HttpHeaders.contentTypeHeader: 'application/json',
            HttpHeaders.authorizationHeader: 'Bearer $token',
          },
          body: json.encode({"body": comment}));
      if (resp.statusCode == HttpStatus.ok) {
        return Comment.fromJson(jsonDecode(resp.body));
      } else {
        throw Exception('failed to comment -> ${resp.body}');
      }
    } on SocketException catch (e) {
      throw Exception(e);
    } catch (e) {
      throw Exception(e);
    }
  }

  static Future<Reply> replyToAComment(
      {required int commentId, required String reply}) async {
    try {
      final resp =
          await http.post(Uri.parse("$baseUrl/comments/$commentId/replies"),
              headers: {
                HttpHeaders.acceptHeader: 'application/json',
                HttpHeaders.contentTypeHeader: 'application/json',
                HttpHeaders.authorizationHeader: 'Bearer $token',
              },
              body: json.encode({"body": reply}));

      if (resp.statusCode == HttpStatus.ok) {
        return Reply.fromJson(jsonDecode(resp.body));
      } else {
        throw Exception('failed to reply -> ${resp.body}');
      }
    } on SocketException catch (e) {
      throw Exception(e);
    } catch (e) {
      throw Exception(e);
    }
  }
}
