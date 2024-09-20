import 'dart:math';
import 'package:flutter/material.dart';
import 'package:webinar_x/services/jitsi_meet_method.dart';
import 'package:webinar_x/widgets/home_meeting_button.dart';

class MeetingScreen extends StatelessWidget {
  MeetingScreen({super.key});

  final JitsiMeetMethod _jitsiMeetMethods = JitsiMeetMethod();

  createNewMeeting() async {
    var random = Random();
    String roomName = (random.nextInt(10000000) + 10000000).toString();
    _jitsiMeetMethods.createMeeting(
        roomName: roomName, isAudioMuted: true, isVideoMuted: true);
  }

  joinMeeting(BuildContext context) {
    Navigator.pushNamed(context, '/video-call');
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            HomeMeetingButton(
              onPressed: () {},
              icon: Icons.video_call,
              text: 'New',
            ),
            HomeMeetingButton(
              onPressed: () {},
              icon: Icons.add_box,
              text: 'Join',
            ),
            HomeMeetingButton(
              onPressed: () {},
              icon: Icons.calendar_today,
              text: 'Schedule',
            ),
            HomeMeetingButton(
              onPressed: () {},
              icon: Icons.share_rounded,
              text: 'Share Screen',
            ),
          ],
        ),
        Image.asset('lib/assets/images/ic_chat.png'),
        const Expanded(
          child: Center(
            child: Text(
              'Create or join meeting',
              style: TextStyle(
                  fontSize: 14, color: Color.fromARGB(75, 255, 255, 255)),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ],
    );
  }
}
