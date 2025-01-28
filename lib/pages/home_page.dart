import 'package:flutter/material.dart';
import 'package:sociapp/pages/feed_page.dart';
import 'package:sociapp/pages/profile_page.dart';
import 'package:sociapp/routes/buttom_tab.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<StatefulWidget> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  int _currentPage = 0; // Track the selected tab
    final List<Widget> _pages = [
    const FeedPage(),
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Sociapp",
        ),
        actions: [
          GestureDetector(
            // onTap: _postImage,
            onTap: () {},
            child: const Icon(Icons.add_a_photo),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 8.0,
              right: 8.0,
            ),
            child: GestureDetector(
              onTap: () {},
              // onTap: () async {
              //   await _firebaseService!.logout();
              //   Navigator.popAndPushNamed(context, 'login');
              // },
              child: const Icon(Icons.logout),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomTab(
        currentIndex: _currentPage,
        onTap: (index) {
          setState(() {
            _currentPage = index;
          });
          // Handle navigation or actions based on selected tab
        },
      ),
      body: _pages[_currentPage],
    );
  }

}
