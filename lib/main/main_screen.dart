import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_rent_app/main/chat/chat_screen.dart';
import 'package:home_rent_app/main/explore/explore_screen.dart';
import 'package:home_rent_app/main/home/home_screen.dart';
import 'package:home_rent_app/main/profile/profile_screen.dart';
import 'package:home_rent_app/main/saved/saved_screen.dart';
import 'package:home_rent_app/utils/app_theme.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  static const routeName = '/main';
  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentScreen = 0;
  changeScreen(int selectedScreen) {
    setState(() {
      currentScreen = selectedScreen;
    });
  }

  List<Widget> screens = [
    HomeScreen(),
    ExploreScreen(),
    ChatScreen(),
    SavedScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentScreen],
      bottomNavigationBar: BottomNavigationBar(
        onTap: changeScreen,
        currentIndex: currentScreen,
        iconSize: 24.sp,
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 12.sp,
        unselectedFontSize: 12.sp,
        backgroundColor: Colors.white,
        selectedLabelStyle: const TextStyle(
          fontWeight: FontWeight.w600,
          color: AppTheme.mainColor,
        ),
        unselectedLabelStyle: const TextStyle(
          fontWeight: FontWeight.w500,
          color: AppTheme.navGrey2,
        ),
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              currentScreen == 0
                  ? 'assets/icons/selected_home_icon.png'
                  : 'assets/icons/not_selected_home_icon.png',
              height: 24.h,
              width: 24.w,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              currentScreen == 1
                  ? 'assets/icons/selected_explore_icon.png'
                  : 'assets/icons/not_selected_explore_icon.png',
              height: 24.h,
              width: 24.w,
            ),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              currentScreen == 2
                  ? 'assets/icons/selected_message_icon.png'
                  : 'assets/icons/not_selected_message_icon.png',
              height: 24.h,
              width: 24.w,
            ),
            label: 'Chats',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              currentScreen == 3
                  ? 'assets/icons/selected_heart_icon.png'
                  : 'assets/icons/not_selected_heart_icon.png',
              height: 24.h,
              width: 24.w,
            ),
            label: 'Saved',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              currentScreen == 4
                  ? 'assets/icons/selected_profile_icon.png'
                  : 'assets/icons/not_selected_profile_icon.png',
              height: 24.h,
              width: 24.w,
            ),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
