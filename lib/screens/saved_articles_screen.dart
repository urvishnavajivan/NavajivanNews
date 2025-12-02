// lib/screens/saved_articles_screen.dart
import 'package.flutter/material.dart';
import '../services/local_storage_service.dart';
import '../models/post_model.dart';
import '../widgets/post_card.dart';

class SavedArticlesScreen extends StatefulWidget {
  const SavedArticlesScreen({super.key});

  @override
  _SavedArticlesScreenState createState() => _SavedArticlesScreenState();
}

class _SavedArticlesScreenState extends State<SavedArticlesScreen> {
  final LocalStorageService _localStorageService = LocalStorageService();
  late Future<List<Post>> _savedArticles;

  @override
  void initState() {
    super.initState();
    _savedArticles = _localStorageService.getSavedArticles();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Saved Articles'),
      ),
      body: FutureBuilder<List<Post>>(
        future: _savedArticles,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            if (snapshot.data!.isEmpty) {
              return const Center(
                child: Text('You have no saved articles.'),
              );
            }
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                return PostCard(post: snapshot.data![index]);
              },
            );
          } else if (snapshot.hasError) {
            return Center(
              child: Text('Error: ${snapshot.error}'),
            );
          }
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
