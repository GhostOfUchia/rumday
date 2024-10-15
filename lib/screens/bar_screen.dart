import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:rumedy/consts/Strings.dart';
import 'package:rumedy/consts/colors.dart';
import 'package:rumedy/consts/exports.dart';
import 'package:rumedy/consts/icons.dart';
import 'package:rumedy/consts/list.dart';
import 'package:rumedy/screens/bar_detail.dart';

class BarScreen extends StatefulWidget {
  const BarScreen({super.key});

  @override
  State<BarScreen> createState() => _BarScreenState();
}

class _BarScreenState extends State<BarScreen> {
  final CarouselSliderController carouselSliderController =
      CarouselSliderController();
  int currentIndex = 0;
  bool isShow = false;

  String scrollerText = "Menu";

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Stack(children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding:
                    const EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(76),
                            border: Border.all(width: 2, color: grayColor)),
                        child: Center(
                          child: Image.asset(backArrow),
                        ),
                      ),
                    ),
                    const Text(
                      barName,
                      style: TextStyle(
                          color: whiteColor,
                          fontSize: 18,
                          fontWeight: FontWeight.w500),
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(76),
                          border: Border.all(width: 2, color: grayColor)),
                      child: const Center(
                        child: Icon(
                          Icons.search,
                          color: whiteColor,
                          size: 30,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      isShow = !isShow;
                    });
                  },
                  child: Container(
                      height: 55,
                      width: size.width,
                      decoration: BoxDecoration(
                          color: gryColor,
                          borderRadius: BorderRadius.circular(76),
                          border: Border.all(width: 0, color: gryColor)),
                      child: Row(
                        children: [
                          const SizedBox(width: 25.0),
                          Text(
                            scrollerText,
                            style: const TextStyle(
                                color: whiteColor,
                                fontWeight: FontWeight.w700,
                                fontSize: 18),
                          ),
                          const Spacer(),
                          Image.asset(scroolIcon),
                          const SizedBox(width: 25.0),
                        ],
                      )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, top: 20),
                child: SizedBox(
                  height: 50,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: barItemsList.length,
                      itemBuilder: (context, index) {
                        int length = barItemsList[index].length;
                        String name = barItemsList[index];
                        return Padding(
                          padding: const EdgeInsets.only(right: 15.0),
                          child: Container(
                              height: 45,
                              width: length * 10.0 + 20,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(color: grayColor)),
                              child: Center(
                                child: Text(
                                  name,
                                  style: const TextStyle(color: Colors.white),
                                ),
                              )),
                        );
                      }),
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const BarDetail();
                  }));
                },
                child: CarouselSlider(
                    items: imageList.map((map) {
                      return Image.asset(
                        map["image_path"],
                        scale: .8,
                      );
                    }).toList(),
                    carouselController: carouselSliderController,
                    options: CarouselOptions(
                        scrollPhysics: const BouncingScrollPhysics(),
                        aspectRatio: 2,
                        viewportFraction: 1,
                        onPageChanged: (index, reason) {
                          setState(() {
                            currentIndex = index;
                          });
                        })),
              ),
              const SizedBox(
                height: 5.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: imageList.asMap().entries.map((entries) {
                  return GestureDetector(
                    onTap: () =>
                        carouselSliderController.animateToPage(entries.key),
                    child: Container(
                      width: currentIndex == entries.key ? 17 : 7,
                      height: 7,
                      margin: const EdgeInsets.all(3.0),
                      decoration: BoxDecoration(
                        color:
                            currentIndex == entries.key ? focusColor : gryColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  );
                }).toList(),
              ),
              Expanded(
                child: SingleChildScrollView(
                    child: Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 10.0,
                      ),
                      SizedBox(
                        width: size.width,
                        child: Row(
                          children: [
                            SizedBox(
                              width: size.width / 2,
                              child: const Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    beach,
                                    style: TextStyle(
                                        color: whiteColor,
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Text(
                                    price,
                                    style: TextStyle(
                                        color: focusColor,
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Text(
                                    aboutBar,
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 12.0,
                                        fontWeight: FontWeight.w500),
                                  )
                                ],
                              ),
                            ),
                            const Spacer(),
                            Container(
                              decoration: BoxDecoration(
                                  color: gryColor,
                                  borderRadius: BorderRadius.circular(20)),
                              child: Stack(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: Image.asset(
                                      barImage1,
                                      fit: BoxFit.fitHeight,
                                      width: 140,
                                      height: 120,
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 20,
                                    left: 10,
                                    right: 10,
                                    child: Container(
                                      height: 50,
                                      decoration: BoxDecoration(
                                          color: backGroundColor,
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          IconButton(
                                              onPressed: () {},
                                              icon: const Icon(
                                                Icons.remove,
                                                color: whiteColor,
                                              )),
                                          const Text(
                                            "0",
                                            style: TextStyle(color: whiteColor),
                                          ),
                                          IconButton(
                                              onPressed: () {},
                                              icon: const Icon(
                                                Icons.add,
                                                color: whiteColor,
                                              ))
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      const Divider(
                        color: gryColor,
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      SizedBox(
                        width: size.width,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            SizedBox(
                              width: size.width / 2,
                              child: const Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    beach,
                                    style: TextStyle(
                                        color: whiteColor,
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Text(
                                    price,
                                    style: TextStyle(
                                        color: focusColor,
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Text(
                                    aboutBar,
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 12.0,
                                        fontWeight: FontWeight.w500),
                                  )
                                ],
                              ),
                            ),
                            const Spacer(),
                            Padding(
                              padding: const EdgeInsets.only(
                                  bottom: 10.0, right: 10.0),
                              child: Container(
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                    color: focusColor,
                                    borderRadius: BorderRadius.circular(70)),
                                child: const Icon(
                                  Icons.add,
                                  color: backGroundColor,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      const Divider(
                        color: gryColor,
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      SizedBox(
                        width: size.width,
                        child: Row(
                          children: [
                            SizedBox(
                              width: size.width / 2,
                              child: const Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    beach,
                                    style: TextStyle(
                                        color: whiteColor,
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Text(
                                    price,
                                    style: TextStyle(
                                        color: focusColor,
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Text(
                                    aboutBar,
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 12.0,
                                        fontWeight: FontWeight.w500),
                                  )
                                ],
                              ),
                            ),
                            const Spacer(),
                            Container(
                              decoration: BoxDecoration(
                                  color: gryColor,
                                  borderRadius: BorderRadius.circular(20)),
                              child: Stack(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: Image.asset(
                                      barImage1,
                                      fit: BoxFit.fitHeight,
                                      width: 140,
                                      height: 120,
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 10,
                                    right: 10,
                                    child: Container(
                                      width: 40,
                                      height: 40,
                                      decoration: BoxDecoration(
                                          color: focusColor,
                                          borderRadius:
                                              BorderRadius.circular(70)),
                                      child: const Icon(
                                        Icons.add,
                                        color: backGroundColor,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                )),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Container(
                  width: size.width,
                  height: 58,
                  decoration: BoxDecoration(
                      color: focusColor,
                      borderRadius: BorderRadius.circular(30)),
                  child: const Center(
                    child: Text(
                      total,
                      style: TextStyle(
                          color: backGroundColor,
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              )
            ],
          ),
          Visibility(
            visible: isShow,
            child: Positioned(
              top: 140,
              right: 10.0,
              left: 10.0,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Container(
                  height: 220,
                  width: size.width,
                  decoration: BoxDecoration(
                      color: gryColor,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(width: 0, color: gryColor)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            scrollerText = "Menu";
                            isShow = !isShow;
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Container(
                            height: 60,
                            decoration: BoxDecoration(
                              color: backGroundColor,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: const Row(
                              children: [
                                SizedBox(
                                  width: 15.0,
                                ),
                                Text(
                                  "Menu",
                                  style: TextStyle(
                                      color: whiteColor,
                                      fontWeight: FontWeight.w700),
                                ),
                                Spacer(),
                                Icon(
                                  Icons.navigate_next,
                                  color: whiteColor,
                                ),
                                SizedBox(
                                  width: 15.0,
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            scrollerText = "Bar";
                            isShow = !isShow;
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Container(
                            height: 60,
                            decoration: BoxDecoration(
                              color: backGroundColor,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: const Row(
                              children: [
                                SizedBox(
                                  width: 15.0,
                                ),
                                Text(
                                  "Bar",
                                  style: TextStyle(
                                      color: whiteColor,
                                      fontWeight: FontWeight.w700),
                                ),
                                Spacer(),
                                Icon(
                                  Icons.navigate_next,
                                  color: whiteColor,
                                ),
                                SizedBox(
                                  width: 15.0,
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            scrollerText = "Wine";
                            isShow = !isShow;
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Container(
                            height: 60,
                            decoration: BoxDecoration(
                              color: backGroundColor,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: const Row(
                              children: [
                                SizedBox(
                                  width: 15.0,
                                ),
                                Text(
                                  "Wine",
                                  style: TextStyle(
                                      color: whiteColor,
                                      fontWeight: FontWeight.w700),
                                ),
                                Spacer(),
                                Icon(
                                  Icons.navigate_next,
                                  color: whiteColor,
                                ),
                                SizedBox(
                                  width: 15.0,
                                )
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
