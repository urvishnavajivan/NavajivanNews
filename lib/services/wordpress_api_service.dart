// lib/services/wordpress_api_service.dart
import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/post_model.dart';
import '../models/category_model.dart';

class WordPressApiService {
  static const String _baseUrl = 'https://navajivan.com/wp-json/wp/v2';

  Future<List<Post>> fetchPosts({int page = 1, int perPage = 10}) async {
    final response = await http.get(Uri.parse('$_baseUrl/posts?page=$page&per_page=$perPage'));
    if (response.statusCode == 200) {
      final List<dynamic> data = json.decode(response.body);
      return data.map((json) => Post.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load posts');
    }
  }

  Future<List<Category>> fetchCategories() async {
    final response = await http.get(Uri.parse('$_baseUrl/categories'));
    if (response.statusCode == 200) {
      final List<dynamic> data = json.decode(response.body);
      return data.map((json) => Category.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load categories');
    }
  }
}
