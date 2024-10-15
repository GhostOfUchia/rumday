import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:rumedy/consts/colors.dart';
import 'package:rumedy/providers/bar_provider.dart';
import 'package:rumedy/providers/calculate_order_provider.dart';
import 'package:rumedy/providers/filter_provider.dart';
import 'package:rumedy/screens/splash_screens/splash_screen_one.dart';

Future<void> main() async {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    systemNavigationBarColor: backGroundColor, // navigation bar color
    statusBarColor: backGroundColor, // status bar color
  ));

  runApp(const Rumedy());
}

class Rumedy extends StatelessWidget {
  const Rumedy({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => FilterProvider()),
        ChangeNotifierProvider(create: (_) => CalculateOrderProvider()),
        ChangeNotifierProvider(create: (_) => BarProvider())
      ],
      child: MaterialApp(
        theme: ThemeData(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            hoverColor: Colors.transparent,
            scaffoldBackgroundColor: backGroundColor,
            bottomAppBarTheme:
                const BottomAppBarTheme(shadowColor: whiteColor)),
        debugShowCheckedModeBanner: false,
        home: const SplashScreenOne(),
      ),
    );
  }
}
