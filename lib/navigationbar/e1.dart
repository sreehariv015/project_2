import 'package:flutter/material.dart';
class ExampleNavigation1 extends StatefulWidget {
  const ExampleNavigation1({super.key});

  @override
  State<ExampleNavigation1> createState() => _ExampleNavigation1State();
}

class _ExampleNavigation1State extends State<ExampleNavigation1> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
        title: Text('Bottom Navigation Bar Example'),
    ),
    body: Center(
    child: Text('Content of the selected tab'),
    ),
    bottomNavigationBar: BottomNavigationBar(
    items: [
    BottomNavigationBarItem(
    icon: Icon(Icons.home),
    label: 'Home',
    ),
    BottomNavigationBarItem(
    icon: Icon(Icons.search),
    label: 'Search',
    ),
    BottomNavigationBarItem(
    icon: Icon(Icons.person),
    label: 'Profile',
    ),
    ],
    currentIndex: 0, // Index of the tab to be selected by default
    onTap: (int index) {
// Handle tab selection
    print('Tab $index selected');
  },
    )
    );

  }
}
