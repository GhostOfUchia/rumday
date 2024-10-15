import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rumedy/consts/colors.dart';
import 'package:rumedy/consts/exports.dart';
import 'package:rumedy/consts/icons.dart';
import 'package:rumedy/screens/bottom_bar_screen.dart';

class SplashScreenThree extends StatelessWidget {
  const SplashScreenThree({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return Scaffold(
      extendBodyBehindAppBar: true,
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
          child: SizedBox(
        width: size.width,
        height: size.height,
        child: Stack(
          children: [
            SizedBox(
              width: size.width,
              height: size.height / 1.3,
              child: Image.asset(
                splashImage3,
                fit: BoxFit.fill,
              ),
            ),
            Positioned(
              top: size.height * 0.5 + 50,
              child: Container(
                  width: size.width,
                  height: size.height * 0.5,
                  decoration: const BoxDecoration(
                      color: backGroundColor,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(70.0),
                          topRight: Radius.circular(70.0))),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 30.0,
                      ),
                      const Text(
                        "Find Your Perfect Bar with Rumedy",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: whiteColor),
                      ),
                      const SizedBox(
                        height: 5.0,
                      ),
                      const Text(
                        "Log in to start your journey!",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey),
                      ),
                      const SizedBox(
                        height: 40.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Container(
                          width: size.width,
                          height: 58,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(32)),
                          child: ElevatedButton(
                            onPressed: () {},
                            style: const ButtonStyle(
                                backgroundColor:
                                    MaterialStatePropertyAll(backGroundColor)),
                            child: Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(appleIcon),
                                  const SizedBox(
                                    width: 10.0,
                                  ),
                                  const Text(
                                    "Continue with Apple",
                                    style: TextStyle(
                                        color: whiteColor,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w700),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Container(
                          width: size.width,
                          height: 58,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(32)),
                          child: ElevatedButton(
                            onPressed: () {},
                            style: const ButtonStyle(
                                backgroundColor:
                                    MaterialStatePropertyAll(backGroundColor)),
                            child: Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(googleIcon),
                                  const SizedBox(
                                    width: 10.0,
                                  ),
                                  const Text(
                                    "Continue with Google",
                                    style: TextStyle(
                                        color: whiteColor,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w700),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Container(
                          width: size.width,
                          height: 58,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(32)),
                          child: ElevatedButton(
                            onPressed: () {},
                            style: const ButtonStyle(
                                backgroundColor:
                                    MaterialStatePropertyAll(backGroundColor)),
                            child: const Text(
                              "Continue with Phone",
                              style: TextStyle(
                                  color: whiteColor,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Container(
                          width: size.width,
                          height: 58,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(32)),
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return const MainScreen();
                              }));
                            },
                            style: const ButtonStyle(
                                backgroundColor:
                                    MaterialStatePropertyAll(backGroundColor)),
                            child: const Text(
                              "Continue as Guest",
                              style: TextStyle(
                                  color: whiteColor,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )),
            )
          ],
        ),
      )),
    );
  }
}
