import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rumedy/consts/colors.dart';
import 'package:rumedy/consts/icons.dart';
import 'package:rumedy/screens/splash_screens/splash_screen_two.dart';

class SplashScreenOne extends StatelessWidget {
  const SplashScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: size.height / 1.3,
              width: size.width,
              child: Image.asset(
                splashImage1,
                fit: BoxFit.fill,
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            const Text(
              "Choose the drink you love 🍹",
              style: TextStyle(
                  decoration: TextDecoration.none,
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: whiteColor),
            ),
            const SizedBox(
              height: 10.0,
            ),
            const Text(
              "Sip, Share, Enjoy:",
              style: TextStyle(
                  decoration: TextDecoration.none,
                  color: Colors.grey,
                  fontSize: 15,
                  fontWeight: FontWeight.w500),
            ),
            const Text(
              "Your Cocktail Companion",
              style: TextStyle(
                  decoration: TextDecoration.none,
                  color: Colors.grey,
                  fontSize: 15,
                  fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Container(
                width: size.width,
                height: 58,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(30)),
                child: ElevatedButton(
                  onPressed: () {
                    print("clicked");
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const SplashScreenTwo();
                    }));
                  },
                  style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(focusColor)),
                  child: const Center(
                    child: Text(
                      "Get started",
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          color: backGroundColor,
                          fontSize: 14,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
