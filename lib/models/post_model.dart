// lib/models/post_model.dart

class Post {
  final String id;
  final String title;
  final String content;
  final String author;
  final DateTime date;
  final String imageUrl;
  final String videoUrl;

  Post({
    required this.id,
    required this.title,
    required this.content,
    required this.author,
    required this.date,
    required this.imageUrl,
    required this.videoUrl,
  });

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      id: json['id'],
      title: json['title']['rendered'],
      content: json['content']['rendered'],
      author: json['author'],
      date: DateTime.parse(json['date']),
      imageUrl: json['jetpack_featured_media_url'],
      videoUrl: '', // Placeholder for video URL
    );
  }
}
