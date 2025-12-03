// lib/screens/article_detail_screen.dart
import 'package:flutter/material.dart';
import '../models/post_model.dart';
import '../models/comment_model.dart';
import '../widgets/video_player_widget.dart';

class ArticleDetailScreen extends StatelessWidget {
  final Post post;

  const ArticleDetailScreen({super.key, required this.post});

  @override
  Widget build(BuildContext context) {
    // Mock comments data
    final List<Comment> comments = [
      Comment(id: '1', author: 'User 1', content: 'Great article!', date: DateTime.now()),
      Comment(id: '2', author: 'User 2', content: 'Very informative.', date: DateTime.now()),
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text(post.title),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                post.title,
                style: Theme.of(context).textTheme.headline5,
              ),
              const SizedBox(height: 8.0),
              Text(
                'By ${post.author} on ${post.date}',
                style: Theme.of(context).textTheme.caption,
              ),
              const SizedBox(height: 16.0),
              if (post.imageUrl.isNotEmpty)
                Image.network(post.imageUrl),
              if (post.videoUrl.isNotEmpty)
                VideoPlayerWidget(videoUrl: post.videoUrl),
              const SizedBox(height: 16.0),
              Text(
                post.content,
                style: Theme.of(context).textTheme.bodyText2,
              ),
              const SizedBox(height: 24.0),
              Text(
                'Comments',
                style: Theme.of(context).textTheme.headline6,
              ),
              const SizedBox(height: 16.0),
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: comments.length,
                itemBuilder: (context, index) {
                  final comment = comments[index];
                  return Card(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            comment.author,
                            style: Theme.of(context).textTheme.subtitle1,
                          ),
                          const SizedBox(height: 8.0),
                          Text(comment.content),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
