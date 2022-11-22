import 'user.dart';

class Video {
  final User owner;

  final String videoUrl;
  final String? description;

  final int likes;

  Video(this.videoUrl, this.owner, this.description, this.likes);
}
