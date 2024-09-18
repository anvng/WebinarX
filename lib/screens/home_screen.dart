import 'package:flutter/material.dart';
import 'package:webinar_x/themes/colors.dart';
import 'package:webinar_x/widgets/home_meeting_button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _page = 0;

  void onPageChanged(int page) {
    setState(() {
      _page = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text(
          'Chatting',
          style: TextStyle(
            color: textColor,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
        backgroundColor: primaryColor,
      ),
      body: Column(
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
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: primaryColor,
        selectedItemColor: navigationColor,
        unselectedItemColor: secondaryColor,
        unselectedFontSize: 10,
        currentIndex: _page,
        onTap: onPageChanged,
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.comment_bank,
            ),
            label: 'Chatting',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.meeting_room,
            ),
            label: 'Meetings',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_outline,
            ),
            label: 'Contacts',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.settings_outlined,
            ),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}
