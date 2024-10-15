import 'package:flutter/material.dart';
import 'package:rumedy/consts/colors.dart';
import 'package:rumedy/consts/icons.dart';
import 'package:rumedy/screens/main_screen.dart';
import 'package:rumedy/screens/order_screen.dart';
import 'package:rumedy/screens/profile_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List<Widget> pages = [
    const GuestBar(),
    const OrderScreen(),
    const ProfileScreen()
  ];
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentPage],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: backGroundColor,
        unselectedItemColor: whiteColor,
        selectedItemColor: focusColor,
        onTap: (value) {
          setState(() {
            currentPage = value;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              barIcon,
              scale: 0.9,
              color: whiteColor,
            ),
            label: "Bars",
          ),
          BottomNavigationBarItem(
              icon: Image.asset(
                orderIcon,
                scale: 18,
                color: whiteColor,
              ),
              label: "Order"),
          BottomNavigationBarItem(
              icon: Image.asset(
                profileIcon,
                scale: 18,
                color: whiteColor,
              ),
              label: "Profile")
        ],
        currentIndex: currentPage,
      ),
    );
  }
}
