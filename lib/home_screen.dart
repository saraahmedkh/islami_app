import 'package:flutter/material.dart';
import 'package:islami_application/core/app_colors.dart';
import 'package:islami_application/home/tabs/hadeth_tab.dart';
import 'package:islami_application/home/tabs/quran_tab.dart';
import 'package:islami_application/home/tabs/radio_tab.dart';
import 'package:islami_application/home/tabs/sebha_tab.dart';
import 'package:islami_application/home/tabs/time_tab.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "HomeScreen";

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedTab = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: true,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        backgroundColor: AppColors.primary,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.black,
        currentIndex: selectedTab,
        onTap: (value) {
          selectedTab = value;
          setState(() {});
        },

        items: [
          BottomNavigationBarItem(
            backgroundColor: AppColors.primary,
            icon: _getbtnselectedNavbaritem("ic_quran", 0),
            label: "quran",
          ),
          BottomNavigationBarItem(
            backgroundColor: AppColors.primary,
            icon: _getbtnselectedNavbaritem("ic_hadeth", 1),
            label: "hadeth",
          ),
          BottomNavigationBarItem(
            backgroundColor: AppColors.primary,
            icon: _getbtnselectedNavbaritem("ic_sebha", 2),
            label: "sebha",
          ),
          BottomNavigationBarItem(
            backgroundColor: AppColors.primary,
            icon: _getbtnselectedNavbaritem("ic_radio", 3),
            label: "radio",
          ),
          BottomNavigationBarItem(
            backgroundColor: AppColors.primary,
            icon: _getbtnselectedNavbaritem("ic_time", 4),
            label: "time",
          ),
        ],
      ),
       
      body: Stack( alignment: Alignment.topCenter,
          children: [
          tabs[selectedTab],
          Image.asset("assets/images/islami_top.png",
          )]
      ),
    );
  }


  Widget _getbtnselectedNavbaritem(String image, int index) {
    return
      selectedTab == index ? Container(
          padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          decoration: BoxDecoration(
            color: Colors.black12,
            borderRadius: BorderRadius.circular(24),
          ),
           child: ImageIcon(AssetImage("assets/images/$image.png")))
          : ImageIcon(AssetImage("assets/images/$image.png"));
  }
  List<Widget>tabs=[
    QuranTab(),
    HadethTab(),
    SebhaTab(),
    RadioTab(),
    TimeTab(),
  ];
}
