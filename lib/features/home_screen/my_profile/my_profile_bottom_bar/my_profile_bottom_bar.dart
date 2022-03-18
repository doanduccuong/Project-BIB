import 'package:base_flutter/commands/base_command.dart';
import 'package:base_flutter/features/home_screen/my_profile/my_profile_bottom_bar/provider/my_profile_bottom_bar_provider.dart';
import 'package:flutter/material.dart';

class MyProfileBottomBar extends StatelessWidget {
  MyProfileBottomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 96,
      child: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
        ],
        currentIndex:
            Provider.of<MyProfileBottomBarProvider>(context).currentIndex,
        selectedItemColor: Colors.amber[800],
        onTap: (index) =>
            Provider.of<MyProfileBottomBarProvider>(context,listen: false).currentIndex=index,
      ),
    );
  }
}
