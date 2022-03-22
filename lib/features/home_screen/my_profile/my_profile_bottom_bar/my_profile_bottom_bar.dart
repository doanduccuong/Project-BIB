import 'package:base_flutter/commands/base_command.dart';
import 'package:base_flutter/configs/images.dart';
import 'package:base_flutter/features/home_screen/my_profile/my_profile_bottom_bar/provider/my_profile_bottom_bar_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyProfileBottomBar extends StatelessWidget {
  MyProfileBottomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 96,
      child: BottomNavigationBar(
        selectedFontSize: 11,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage(AppImage.investorIconImage),
            ),
            label: 'Investor',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage(AppImage.transactionIconImage),
            ),
            label: 'Transaction',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage(AppImage.leaderIconImage),
            ),
            label: 'Leads',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage(AppImage.reportIconImage),
            ),
            label: 'Report',
          ),
        ],
        currentIndex:
            Provider.of<MyProfileBottomBarProvider>(context).currentIndex,
        selectedItemColor: Colors.amber[800],
        onTap: (index) =>
            Provider.of<MyProfileBottomBarProvider>(context, listen: false)
                .currentIndex = index,
      ),
    );
  }
}
