import 'package:flutter/material.dart';
import 'package:threen/_mock_data/mock.dart';

import '../widgets/video_detail.dart';

enum Thread { all, followings, friends, groups }

extension ThreadTypeExtension on Thread {
  String get name {
    switch (this) {
      case Thread.all:
        return 'All';
      case Thread.followings:
        return 'Followings';
      case Thread.friends:
        return 'Friends';
      case Thread.groups:
        return 'Groups';
      default:
        return 'All';
    }
  }

  String get emoji {
    switch (this) {
      case Thread.all:
        return '🌎';
      case Thread.followings:
        return '👥';
      case Thread.friends:
        return '👫';
      case Thread.groups:
        return '👪';
      default:
        return '🌎';
    }
  }

  Text get text {
    return Text("$emoji $name");
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Thread _currentThread = Thread.all;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: // Row as a select for all threads
            Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: Thread.values
              .map(
                (thread) => // Selectable text
                    TextButton(
                  onPressed: () {
                    setState(() {
                      _currentThread = thread;
                    });
                  },
                  style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all(
                      _currentThread == thread
                          ? Colors.white
                          : Colors.white.withOpacity(0.5),
                    ),
                    overlayColor: MaterialStateColor.resolveWith(
                        (states) => Colors.transparent),
                    textStyle: MaterialStateProperty.all(
                      TextStyle(
                        fontSize: 16,
                        fontWeight: _currentThread == thread
                            ? FontWeight.bold
                            : FontWeight.normal,
                      ),
                    ),
                  ),
                  child: thread.text,
                ),
              )
              .toList(),
        ),
      ),
      body: PageView.builder(
        scrollDirection: Axis.vertical,
        itemCount: videos.length,
        itemBuilder: (context, index) {
          var color = Colors.primaries[index % Colors.primaries.length];

          return Stack(
            children: [
              Container(
                color: color,
                child: Center(
                  child: Text(
                    'Page ${index + 1}',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: VideoDetail(
                  video: videos.elementAt(index),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
