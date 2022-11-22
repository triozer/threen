import 'package:flutter/material.dart';
import 'package:threen/models/video.dart';

class VideoDetail extends StatelessWidget {
  const VideoDetail({Key? key, required this.video}) : super(key: key);
  final Video video;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(25),
      decoration: const BoxDecoration(
          gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          Colors.transparent,
          Colors.black38,
        ],
      )),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Video owner picture
          Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.circular(100),
                image: DecorationImage(
                    image: NetworkImage(video.owner.profileImageUrl)),
              )),
          // Video title
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                video.owner.username,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              ...(video.description != null
                  ? [
                      const SizedBox(height: 8),
                      Text(
                        video.description as String,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ]
                  : [])
            ],
          ),
          // Video actions
          Column(
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.favorite_border),
                color: Colors.white,
              ),
              Text(
                video.likes.toString(),
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
