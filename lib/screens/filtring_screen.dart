import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rumedy/consts/Strings.dart';
import 'package:rumedy/consts/colors.dart';
import 'package:rumedy/consts/exports.dart';
import 'package:rumedy/consts/fonts.dart';
import 'package:rumedy/consts/icons.dart';
import 'package:rumedy/consts/list.dart';
import 'package:rumedy/providers/filter_provider.dart';
import 'package:rumedy/screens/commen_widget.dart';

class FiltringScreen extends StatefulWidget {
  const FiltringScreen({super.key});

  @override
  State<FiltringScreen> createState() => _FiltringScreenState();
}

class _FiltringScreenState extends State<FiltringScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
        body: SafeArea(
            child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Text(
                      filter,
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
                const Text(
                  location,
                  style: TextStyle(
                      color: whiteColor,
                      fontWeight: FontWeight.w700,
                      fontSize: 18),
                ),
                const SizedBox(
                  height: 15.0,
                ),
                const SesarchBar(),
                const SizedBox(
                  height: 15.0,
                ),
                const Text(
                  distance,
                  style: TextStyle(
                      color: whiteColor,
                      fontWeight: FontWeight.w700,
                      fontSize: 18),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Row(
                    children: distanceList.map((distance) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 20.0),
                    child: Consumer<FilterProvider>(
                      builder: (BuildContext context, filterProvider,
                          Widget? child) {
                        return InkWell(
                          onTap: () async {
                            if (!filterProvider.distanceList
                                .contains(distance)) {
                              filterProvider.addDistanceFilterItems(distance);
                            } else {
                              filterProvider
                                  .removeDistanceFilterItems(distance);
                            }
                          },
                          child: Container(
                              height: 40,
                              width: 110,
                              decoration: BoxDecoration(
                                  color: backGroundColor,
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(
                                      color: filterProvider.distanceList
                                              .contains(distance)
                                          ? focusColor
                                          : grayColor)),
                              child: Center(
                                child: Text(
                                  distance,
                                  style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                              )),
                        );
                      },
                    ),
                  );
                }).toList()),
                const SizedBox(height: 20.0),
                const Text(
                  rating,
                  style: TextStyle(
                      color: whiteColor,
                      fontWeight: FontWeight.w700,
                      fontSize: 18),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Row(
                    children: ratingList.map((rating) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 20.0),
                    child: Consumer<FilterProvider>(
                      builder: (BuildContext context, filterProvider,
                          Widget? child) {
                        return InkWell(
                          onTap: () {
                            if (!filterProvider.ratingList.contains(rating)) {
                              filterProvider.addRating(rating);
                            } else {
                              filterProvider.removeRating(rating);
                            }
                          },
                          child: Container(
                              height: 40,
                              width: 110,
                              decoration: BoxDecoration(
                                  color: backGroundColor,
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(
                                      color: filterProvider.ratingList
                                              .contains(rating)
                                          ? focusColor
                                          : grayColor)),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    rating,
                                    style: const TextStyle(
                                        color: whiteColor,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  const SizedBox(
                                    width: 5.0,
                                  ),
                                  Image.asset(starIcon)
                                ],
                              )),
                        );
                      },
                    ),
                  );
                }).toList()),
                const SizedBox(
                  height: 20.0,
                ),
                const Text(
                  drinlkingType,
                  style: TextStyle(
                      color: whiteColor,
                      fontWeight: FontWeight.w700,
                      fontSize: 16),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                SizedBox(
                    width: size.width,
                    child: Wrap(
                      direction: Axis.horizontal,
                      children: drinks.map((drinkName) {
                        return Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Consumer<FilterProvider>(
                            builder: (BuildContext context, filterProvider,
                                Widget? child) {
                              return InkWell(
                                onTap: () {
                                  if (!filterProvider.drinksList
                                      .contains(drinkName)) {
                                    filterProvider.addDrinksItems(drinkName);
                                  } else {
                                    filterProvider.removeDrinksItems(drinkName);
                                  }
                                },
                                child: Container(
                                    height: 40,
                                    width: drinkName.length * 12,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        border: Border.all(
                                            color: filterProvider.drinksList
                                                    .contains(drinkName)
                                                ? focusColor
                                                : grayColor)),
                                    child: Center(
                                      child: Text(
                                        drinkName,
                                        style: const TextStyle(
                                            color: Colors.white),
                                      ),
                                    )),
                              );
                            },
                          ),
                        );
                      }).toList(),
                    )),
                const Text(
                  flaver,
                  style: TextStyle(
                      color: whiteColor,
                      fontWeight: FontWeight.w700,
                      fontSize: 18),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                SizedBox(
                    width: size.width,
                    child: Wrap(
                      direction: Axis.horizontal,
                      children: flavers.map((flaver) {
                        return Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Consumer<FilterProvider>(
                            builder: (BuildContext context, filterProvider,
                                Widget? child) {
                              return InkWell(
                                onTap: () {
                                  if (!filterProvider.flaversLIst
                                      .contains(flaver)) {
                                    filterProvider.addFlaver(flaver);
                                  } else {
                                    filterProvider.removeFlaver(flaver);
                                  }
                                },
                                child: Container(
                                    height: 40,
                                    width: flaver.length * 12,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        border: Border.all(
                                            color: filterProvider.flaversLIst
                                                    .contains(flaver)
                                                ? focusColor
                                                : grayColor)),
                                    child: Center(
                                      child: Text(
                                        flaver,
                                        style: const TextStyle(
                                            color: Colors.white),
                                      ),
                                    )),
                              );
                            },
                          ),
                        );
                      }).toList(),
                    )),
              ],
            ),
          ),
        )),
        bottomNavigationBar: Container(
          decoration: const BoxDecoration(
              border: Border(top: BorderSide(color: grayColor))),
          child: Padding(
            padding: const EdgeInsets.only(left: 5.0, right: 5.0, top: 10.0),
            child: Consumer<FilterProvider>(
              builder: (BuildContext context, filterProvider, Widget? child) {
                return Row(
                  children: [
                    const SizedBox(
                      width: 15.0,
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          filterProvider.nullableList();
                        },
                        child: Container(
                          height: 50.0,
                          decoration: BoxDecoration(
                            border: Border.all(color: grayColor, width: 1.0),
                            borderRadius: BorderRadius.circular(56.0),
                          ),
                          child: const Center(
                            child: Text(
                              'Clear All',
                              style: TextStyle(
                                  fontSize: 14.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10.0,
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                          height: 50.0,
                          decoration: BoxDecoration(
                            color: (filterProvider.totalItems.isEmpty)
                                ? Colors.transparent
                                : focusColor,
                            border: Border.all(color: grayColor, width: 1.0),
                            borderRadius: BorderRadius.circular(40.0),
                          ),
                          child: Center(
                            child: Text(
                              'Apply (${filterProvider.totalItems.length})',
                              style: TextStyle(
                                  fontSize: 14.0,
                                  color: (filterProvider.totalItems.isEmpty)
                                      ? whiteColor
                                      : backGroundColor,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 15.0,
                    )
                  ],
                );
              },
            ),
          ),
        ));
  }
}
