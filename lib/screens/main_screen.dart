import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rumedy/consts/Strings.dart';
import 'package:rumedy/consts/colors.dart';
import 'package:rumedy/consts/exports.dart';
import 'package:rumedy/consts/fonts.dart';
import 'package:rumedy/consts/icons.dart';
import 'package:rumedy/providers/bar_provider.dart';
import 'package:rumedy/screens/bar_screen.dart';
import 'package:rumedy/screens/filtring_screen.dart';
import 'package:rumedy/screens/map_screen.dart';

class GuestBar extends StatefulWidget {
  const GuestBar({super.key});

  @override
  State<GuestBar> createState() => _GuestBarState();
}

class _GuestBarState extends State<GuestBar> {
  int currentItems = 0;
  int items = 4;
  double? latitude;
  double? longitude;

  bool loadingMap = false;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      await Provider.of<BarProvider>(context, listen: false).getAllBars();
    });
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              width: size.width,
              height: 140,
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      //  const Expanded(child: SesarchBar()),

                      Expanded(
                        child: SizedBox(
                            height: 50,
                            child: TextFormField(
                              decoration: InputDecoration(
                                hintText: searchCocktail,
                                prefixIcon: const Icon(
                                  Icons.search,
                                  size: 24,
                                ),
                                hintStyle: const TextStyle(
                                    color: grayColor,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                    fontStyle: FontStyle.normal),
                                fillColor: grayColor,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8.0),
                                  borderSide:
                                      const BorderSide(color: grayColor),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8.0),
                                  borderSide: const BorderSide(
                                    color: focusColor,
                                  ),
                                ),
                              ),
                              cursorColor: focusColor,
                              //fillColor: Colors.green
                            )),
                      ),
                      const SizedBox(
                        width: 8.0,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (ontext) => const FiltringScreen()));
                        },
                        child: Container(
                          width: 54,
                          height: 54,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: grayColor,
                          ),
                          child: IconButton(
                              onPressed: () {},
                              icon: Image.asset(
                                statusIcon,
                                scale: 1.7,
                              )),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 10.0),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              if (!loadingMap) {
                                loadingMap = true;
                              } else {
                                loadingMap = false;
                              }
                            });
                            print(loadingMap);
                          },
                          child: Container(
                            height: 45,
                            width: 79,
                            decoration: BoxDecoration(
                                color: (loadingMap)
                                    ? focusColor
                                    : Colors.transparent,
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(color: grayColor)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                  mapIcon,
                                  color: (loadingMap)
                                      ? backGroundColor
                                      : whiteColor,
                                ),
                                const SizedBox(
                                  width: 5.0,
                                ),
                                Text(
                                  map,
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: (loadingMap)
                                          ? backGroundColor
                                          : whiteColor,
                                      fontWeight: FontWeight.w400),
                                )
                              ],
                            ),
                          ),
                        ),
                        Container(
                            height: 45,
                            width: 79,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(color: grayColor)),
                            child: const Center(
                              child: Text(
                                beer,
                                style: TextStyle(color: Colors.white),
                              ),
                            )),
                        Container(
                            height: 45,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(color: grayColor)),
                            child: const Center(
                              child: Text(
                                cockTail,
                                style: TextStyle(color: Colors.white),
                              ),
                            )),
                        Container(
                            height: 45,
                            width: 79,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(color: grayColor)),
                            child: const Center(
                              child: Text(
                                wine,
                                style: TextStyle(color: Colors.white),
                              ),
                            ))
                      ])
                ],
              ),
            ),
            (loadingMap)
                ? Expanded(
                    child: MapScreen(
                    latitude: latitude!,
                    longitude: longitude!,
                  ))
                : Expanded(
                    child: Consumer<BarProvider>(
                      builder: (BuildContext context, BarProvider provider,
                          Widget? child) {
                        return (!provider.isLoading)
                            ? ListView.builder(
                                itemCount: provider.bars.length,
                                itemBuilder: (context, index) {
                                  var bar = provider.bars[index];
                                  latitude = bar.latitude;
                                  longitude = bar.longitude;
                                  print(longitude);
                                  print(latitude);
                                  return GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const BarScreen()));
                                    },
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 20, vertical: 10),
                                      child: Container(
                                          height: 258,
                                          width: size.width,
                                          decoration: BoxDecoration(
                                              color: grayColor,
                                              borderRadius:
                                                  BorderRadius.circular(16)),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              SizedBox(
                                                height: 200,
                                                //width: size.width,
                                                child: Stack(
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              10.0),
                                                      child: ClipRRect(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(16.0),
                                                        child: Image.network(
                                                          bar.image!,
                                                          width: size.width,
                                                          fit: BoxFit.fill,
                                                        ),
                                                      ),
                                                    ),
                                                    Align(
                                                      alignment:
                                                          Alignment.bottomRight,
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .only(
                                                                bottom: 40.0,
                                                                right: 20.0),
                                                        child: Container(
                                                          width: 56,
                                                          height: 28,
                                                          decoration:
                                                              BoxDecoration(
                                                            color:
                                                                backGroundColor,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        20),
                                                          ),
                                                          child: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Image.asset(
                                                                ratingIcon,
                                                                scale: 1.5,
                                                              ),
                                                              const SizedBox(
                                                                width: 5.0,
                                                              ),
                                                              Text(
                                                                bar!.ratingScoreAverage
                                                                    .toString(),
                                                                style: const TextStyle(
                                                                    color:
                                                                        whiteColor,
                                                                    fontSize:
                                                                        12),
                                                              )
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 10.0),
                                                child: Text(
                                                  bar.name,
                                                  style: const TextStyle(
                                                      color: whiteColor,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontFamily: semibold),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 10.0),
                                                child: Text(
                                                  bar.address,
                                                  style: const TextStyle(
                                                      color: whiteColor,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontFamily: semibold),
                                                ),
                                              ),
                                            ],
                                          )),
                                    ),
                                  );
                                })
                            : Center(
                                child: Container(
                                  width: 120,
                                  height: 120,
                                  decoration: BoxDecoration(
                                      color: whiteColor,
                                      borderRadius: BorderRadius.circular(20)),
                                  child: const Column(
                                    children: [
                                      Spacer(),
                                      CircularProgressIndicator(
                                        strokeWidth: 2.0,
                                        color: backGroundColor,
                                      ),
                                      Spacer(),
                                      Text(
                                        "please wait..",
                                        style: TextStyle(color: Colors.black),
                                      ),
                                      SizedBox(
                                        height: 10.0,
                                      )
                                    ],
                                  ),
                                ),
                              );
                      },
                    ),
                  )
          ],
        ),
      ),
    );
  }
}
