import 'package:threen/models/user.dart';
import 'package:threen/models/video.dart';

User currentUser =
    User("current_user", "https://randomuser.me/api/portraits/med/women/1.jpg");

Set<User> users = {
  User(
      "goldenpanda746", "https://randomuser.me/api/portraits/med/women/22.jpg"),
  User("smallpanda757", "https://randomuser.me/api/portraits/med/women/27.jpg"),
  User("bigfish842", "https://randomuser.me/api/portraits/med/men/16.jpg"),
  User(
      "beautifulwolf910", "https://randomuser.me/api/portraits/med/men/10.jpg"),
  User("brownlion737", "https://randomuser.me/api/portraits/med/men/11.jpg"),
};

Set<Video> videos = {
  Video("https://www.youtube.com/watch?v=S5Uw8pCx-ps", users.elementAt(0),
      "Tenz is Here to Stay 1.", 41000),
  Video("https://www.youtube.com/watch?v=S5Uw8pCx-ps", users.elementAt(1),
      "Tenz is Here to Stay 2.", 30),
  Video("https://www.youtube.com/watch?v=S5Uw8pCx-ps", users.elementAt(2),
      null, 4000),
  Video("https://www.youtube.com/watch?v=S5Uw8pCx-ps", users.elementAt(3),
      null, 10000000),
  Video("https://www.youtube.com/watch?v=S5Uw8pCx-ps", users.elementAt(4),
      "Tenz is Here to Stay 5.", 4100),
};
