import 'dart:convert';
import 'package:blog_umbanda/services/config.dart';
import 'package:http/http.dart' as http;
import 'package:blog_umbanda/models/post.model.dart';

class PostService {
  static Future<List<PostModel>> fetchPosts() async {
    final String url = '${Config.baseUrl}/posts';
    print('INFO: Retriving data from: $url');
    final response = await http.get(url);

    if (response.statusCode == 200) {
      Iterable posts = json.decode(response.body);
      return posts.map((post) => PostModel.fromJson(post)).toList();
    } else {
      // If that call was not successful, throw an error.
      throw Exception('Failed to load post');
    }
  }

  static void pushView(postId) {
    print('INFO: Pushed viewed post with identifier: $postId');
    final String url = '${Config.baseUrl}/posts/$postId/viewed';
    http.get(url);
  }
}
