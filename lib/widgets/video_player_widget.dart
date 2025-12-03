// lib/widgets/video_player_widget.dart
import 'package:flutter/material.dart';

class VideoPlayerWidget extends StatelessWidget {
  final String videoUrl;

  const VideoPlayerWidget({super.key, required this.videoUrl});

  @override
  Widget build(BuildContext context) {
    // Placeholder for a video player widget.
    // In a real app, you would use a package like video_player to display the video.
    return Container(
      height: 200,
      color: Colors.black,
      child: const Center(
        child: Icon(
          Icons.play_circle_fill,
          color: Colors.white,
          size: 50,
        ),
      ),
    );
  }
}
