// lib/services/local_storage_service.dart
import '../models/post_model.dart';

class LocalStorageService {
  // Placeholder for local storage logic.
  // In a real app, you would use a database like SQLite or a key-value store like shared_preferences.

  final List<Post> _savedArticles = [];

  Future<List<Post>> getSavedArticles() async {
    // Simulate fetching saved articles from local storage.
    await Future.delayed(const Duration(milliseconds: 500));
    return _savedArticles;
  }

  Future<void> saveArticle(Post post) async {
    // Simulate saving an article to local storage.
    await Future.delayed(const Duration(milliseconds: 500));
    _savedArticles.add(post);
  }

  Future<void> removeArticle(Post post) async {
    // Simulate removing an article from local storage.
    await Future.delayed(const Duration(milliseconds: 500));
    _savedArticles.removeWhere((p) => p.id == post.id);
  }
}
