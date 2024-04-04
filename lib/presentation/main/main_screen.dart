import 'package:flutter/material.dart';
import 'package:flutter_youtube_clone_coding/core/constants/images.dart';
import 'package:flutter_youtube_clone_coding/presentation/main/tabs/home_tab.dart';
import 'package:flutter_youtube_clone_coding/presentation/main/tabs/profile_tab.dart';
import 'package:flutter_youtube_clone_coding/presentation/main/tabs/service_tab.dart';

class MainScreen extends StatefulWidget {
  final List<Widget> _tabs = [
    const HomeTab(),
    const ServiceTab(),
    const ProfileTab(),
    const ProfileTab(),
    const ProfileTab(),
  ];

  MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 100,
        leading: Image.asset(AppImages.youtubeLogo),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Image.asset(
              AppImages.mirroring,
              color: Colors.white,
              width: 30,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Badge(
              offset: const Offset(1, -5),
              label: const Text('9+'),
              textColor: Colors.white,
              textStyle: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
              backgroundColor: Colors.red,
              child: Image.asset(
                AppImages.bell,
                color: Colors.white,
                width: 30,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Image.asset(
              AppImages.search,
              color: Colors.white,
              width: 25,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image.asset(
                AppImages.junsuk,
                width: 30,
              ),
            ),
          )
        ],
      ),
      body: widget._tabs[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.white,
        backgroundColor: Colors.black,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        currentIndex: _selectedIndex,
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              AppImages.home,
              width: 30,
              height: 30,
              color: Colors.white,
            ),
            label: '홈',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              AppImages.shorts,
              width: 30,
              height: 30,
              color: Colors.white,
            ),
            label: 'shorts',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              AppImages.plusCircle,
              width: 40,
              height: 40,
              color: Colors.white,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              AppImages.subscribe,
              width: 30,
              height: 30,
              color: Colors.white,
            ),
            label: '구독',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              AppImages.videoStorage,
              width: 30,
              height: 30,
              color: Colors.white,
            ),
            label: '보관함',
          ),
        ],
      ),
    );
  }
}
