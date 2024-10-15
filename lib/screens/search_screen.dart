import 'package:flutter/material.dart';
import 'package:rumedy/consts/colors.dart';
import 'package:rumedy/consts/exports.dart';
import 'package:rumedy/consts/fonts.dart';
import 'package:rumedy/consts/icons.dart';
import 'package:rumedy/consts/list.dart';
import 'package:rumedy/screens/commen_widget.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                children: [
                  const Text(
                    "Search",
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        color: whiteColor,
                        fontSize: 20,
                        fontFamily: bold),
                  ),
                  const Spacer(),
                  IconButton(onPressed: () {}, icon: Image.asset(cutIcon))
                ],
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: SesarchBar(),
            ),
            const SizedBox(
              height: 30.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Container(
                height: 40,
                width: size.width,
                decoration: BoxDecoration(
                    border: Border.all(color: grayColor),
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(10.0),
                        topRight: Radius.circular(10.0))),
                child: const Row(children: [
                  SizedBox(
                    width: 15.0,
                  ),
                  Icon(
                    Icons.timer,
                    color: grayColor,
                  ),
                  SizedBox(
                    width: 30.0,
                  ),
                  Text(
                    "Beer",
                    style: TextStyle(color: whiteColor),
                  ),
                ]),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Container(
                height: 40,
                width: size.width,
                decoration: BoxDecoration(
                  border: Border.all(color: grayColor),
                ),
                child: const Row(children: [
                  SizedBox(
                    width: 15.0,
                  ),
                  Icon(
                    Icons.timer,
                    color: grayColor,
                  ),
                  SizedBox(
                    width: 30.0,
                  ),
                  Text(
                    "Wine",
                    style: TextStyle(color: whiteColor),
                  ),
                ]),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Container(
                height: 40,
                width: size.width,
                decoration: BoxDecoration(
                    border: Border.all(color: grayColor),
                    borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(10.0),
                        bottomRight: Radius.circular(10.0))),
                child: const Row(children: [
                  SizedBox(
                    width: 15.0,
                  ),
                  Icon(
                    Icons.timer,
                    color: grayColor,
                  ),
                  SizedBox(
                    width: 30.0,
                  ),
                  Text(
                    "Brandy",
                    style: TextStyle(color: whiteColor),
                  ),
                ]),
              ),
            ),
            const SizedBox(
              height: 15.0,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 22.0),
              child: Text(
                "Popular cocktails",
                style: TextStyle(fontSize: 18, color: whiteColor),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: SizedBox(
                  width: size.width,
                  child: Wrap(
                    direction: Axis.horizontal,
                    children: drinks.map((item) {
                      return Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                            height: 40,
                            width: item.length * 12,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(color: grayColor)),
                            child: Center(
                              child: Text(
                                item,
                                style: const TextStyle(color: Colors.white),
                              ),
                            )),
                      );
                    }).toList(),
                  )),
            )
          ]),
        ),
      ),
    );
  }
}
/*

*/