import 'dart:io';
import 'package:flutter/material.dart';
import 'package:test_animations/utils/util/thumbnail_generator.dart';
import 'package:test_animations/widgets/feed_page/video_player_widget.dart';

class VideoThumbnailWidget extends StatefulWidget {
  final String videoUrl;
  const VideoThumbnailWidget({super.key, required this.videoUrl});

  @override
  State<VideoThumbnailWidget> createState() => _VideoThumbnailWidgetState();
}

class _VideoThumbnailWidgetState extends State<VideoThumbnailWidget> {
  bool watchVideo = false;

  @override
  void dispose() {
    watchVideo = false;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<String>(
      future: ThumbnailGenerator.generateThumbnail(widget.videoUrl),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return const Icon(Icons.error);
        } else if (snapshot.hasData) {
          return watchVideo
              ? VideoPlayerWidget(videoUrl: widget.videoUrl)
              : Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: AspectRatio(
                      aspectRatio: 16 / 9,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Image.file(
                            File(snapshot.data!),
                            fit: BoxFit.fitWidth,
                            width: MediaQuery.sizeOf(context).width,
                            filterQuality: FilterQuality.low,
                          ),
                          Container(color: Colors.black.withOpacity(0.4)),
                          InkWell(
                            onTap: () {
                              setState(() {
                                watchVideo = !watchVideo;
                              });
                            },
                            child: const Icon(
                              Icons.play_arrow,
                              size: 60,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
        } else {
          return const Icon(Icons.broken_image);
        }
      },
    );
  }
}
