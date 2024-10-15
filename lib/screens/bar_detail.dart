import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rumedy/consts/Strings.dart';
import 'package:rumedy/consts/colors.dart';
import 'package:rumedy/consts/exports.dart';
import 'package:rumedy/consts/icons.dart';

class BarDetail extends StatefulWidget {
  const BarDetail({super.key});

  @override
  State<BarDetail> createState() => _BarDetailState();
}

class _BarDetailState extends State<BarDetail> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: size.width,
                height: size.height / 2.5,
                child: FittedBox(
                  child: Image.asset(
                    barImage2,
                  ),
                ),
              ),
              const SizedBox(
                height: 100.0,
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "about",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: whiteColor),
                        ),
                        const Text(
                          aboutbar,
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 14,
                              fontWeight: FontWeight.w400),
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        Container(
                          height: 92,
                          width: size.width,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(width: 1, color: grayColor)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 12.0, top: 12),
                                child: Image.asset(
                                  locationIcon,
                                  scale: 2,
                                  color: roundedColor,
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(top: 12.0, left: 10.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Address",
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          color: whiteColor),
                                    ),
                                    SizedBox(
                                      height: 5.0,
                                    ),
                                    Text(
                                      adress,
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.grey),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(22.0),
                                child: Image.asset(
                                  arrowButtonIcon,
                                ),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        Container(
                          height: 92,
                          width: size.width,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(width: 1, color: grayColor)),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 12.0, left: 12.0),
                                child: Image.asset(
                                  clockIcon,
                                  height: 20,
                                  width: 20,
                                ),
                              ),
                              const SizedBox(
                                width: 5.0,
                              ),
                              const Padding(
                                padding: EdgeInsets.only(top: 12.0, left: 10.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Working hours",
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.grey),
                                    ),
                                    Text(
                                      "Mon - Fri    9:00 AM - 11:00 PM",
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color: roundedColor),
                                    ),
                                    Text(
                                      "Sat - Sun    11:00 AM - 12:00 PM",
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color: roundedColor),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        Container(
                          height: 92,
                          width: size.width,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(width: 1, color: grayColor)),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 12.0, left: 12.0),
                                child: Image.asset(
                                  mobileIcon,
                                  height: 20,
                                  width: 20,
                                ),
                              ),
                              const SizedBox(
                                width: 5.0,
                              ),
                              const Padding(
                                padding: EdgeInsets.only(top: 12.0, left: 10.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Phone",
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.grey),
                                    ),
                                    Text(
                                      "+380 12 34 56 789",
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color: roundedColor),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          height: 92,
                          width: size.width,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(width: 1, color: grayColor)),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 12.0, left: 12.0),
                                child: Image.asset(
                                  globeIcon,
                                  height: 20,
                                  width: 20,
                                ),
                              ),
                              const SizedBox(
                                width: 5.0,
                              ),
                              const Padding(
                                padding: EdgeInsets.only(top: 12.0, left: 10.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Website",
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.grey),
                                    ),
                                    Text(
                                      "crosbystreethotel.com",
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color: roundedColor),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        )
                        // next
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
          Positioned(
            top: 270,
            left: 20,
            right: 20,
            child: Container(
              width: size.width,
              height: 175,
              //  margin: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                  color: gryColor, borderRadius: BorderRadius.circular(16)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 16.0, right: 16.0, top: 16.0, bottom: 10.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 56,
                          height: 56,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(56),
                              border: Border.all(width: 1, color: grayColor)),
                          child: Image.asset(
                            gilasIcon,
                            scale: 2,
                            color: roundedColor,
                          ),
                        ),
                        const Spacer(),
                        SizedBox(
                          height: 24,
                          width: 50,
                          child: Row(
                            children: [
                              Image.asset(
                                ratingIcon,
                                scale: 1.5,
                              ),
                              const SizedBox(
                                width: 5.0,
                              ),
                              const Text(
                                "4.0",
                                style: TextStyle(color: whiteColor),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          barName,
                          style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w500,
                              color: whiteColor),
                        ),
                        Text(
                          adress,
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Colors.grey),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
