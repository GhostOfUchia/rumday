import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rumedy/consts/colors.dart';
import 'package:rumedy/consts/exports.dart';
import 'package:rumedy/consts/icons.dart';
import 'package:rumedy/providers/calculate_order_provider.dart';

class TotalOrder extends StatefulWidget {
  const TotalOrder({super.key});

  @override
  State<TotalOrder> createState() => _TotalOrderState();
}

class _TotalOrderState extends State<TotalOrder> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0),
            child: Column(
              children: [
                Row(
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
                      "Order",
                      style: TextStyle(
                          color: whiteColor,
                          fontSize: 20,
                          fontWeight: FontWeight.w500),
                    ),
                    Container(
                      width: 52,
                      height: 52,
                      decoration: BoxDecoration(
                          color: grayColor,
                          borderRadius: BorderRadius.circular(80),
                          border: Border.all(width: 2, color: grayColor)),
                      child: Center(
                        child: Image.asset(
                          deleteIcon,
                          height: 23,
                          width: 23,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Container(
                  height: 140,
                  width: size.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(width: 1, color: grayColor)),
                  child: Column(children: [
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                      child: Row(
                        children: [
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Beach Baby",
                                style: TextStyle(
                                    color: whiteColor,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500),
                              ),
                              Text(
                                "\$10",
                                style: TextStyle(
                                    color: focusColor,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
                          const Spacer(),
                          Image.asset(
                            penIcon,
                            width: 20,
                            height: 20,
                          ),
                          const SizedBox(
                            width: 20.0,
                          ),
                          Container(
                            width: 120,
                            height: 40,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(27),
                                border: Border.all(width: 1, color: grayColor)),
                            child: Row(
                              children: [
                                Consumer<CalculateOrderProvider>(
                                  builder: (BuildContext context,
                                      calCulateOrderProvider, Widget? child) {
                                    return IconButton(
                                        onPressed: () {
                                          calCulateOrderProvider
                                              .removeValue(10.0);
                                          calCulateOrderProvider
                                              .removeBeachBaby();
                                        },
                                        icon: const Icon(
                                          Icons.remove,
                                          color: whiteColor,
                                        ));
                                  },
                                ),
                                Consumer<CalculateOrderProvider>(
                                  builder: (BuildContext context, value,
                                      Widget? child) {
                                    return Text(
                                      value.beachBaby.toString(),
                                      style: const TextStyle(
                                          color: whiteColor, fontSize: 20),
                                    );
                                  },
                                ),
                                Consumer<CalculateOrderProvider>(
                                  builder: (BuildContext context,
                                      calCulateOrderProvider, Widget? child) {
                                    return IconButton(
                                        onPressed: () {
                                          calCulateOrderProvider.addValue(10.0);
                                          calCulateOrderProvider.addBeachBaby();
                                        },
                                        icon: const Icon(
                                          Icons.add,
                                          color: whiteColor,
                                        ));
                                  },
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                      child: Row(
                        children: [
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Espresso Martini",
                                style: TextStyle(
                                    color: whiteColor,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500),
                              ),
                              Text(
                                "\$10",
                                style: TextStyle(
                                    color: focusColor,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
                          const Spacer(),
                          Image.asset(
                            penIcon,
                            width: 20,
                            height: 20,
                          ),
                          const SizedBox(
                            width: 20.0,
                          ),
                          Container(
                            width: 120,
                            height: 40,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(27),
                                border: Border.all(width: 1, color: grayColor)),
                            child: Row(
                              children: [
                                Consumer<CalculateOrderProvider>(
                                  builder: (BuildContext context, provider,
                                      Widget? child) {
                                    return IconButton(
                                      onPressed: () {
                                        provider
                                            .removeValue(10.0)
                                            .removeEspressoMartini();
                                      },
                                      icon: Image.asset(
                                        deleteIcon,
                                        color: whiteColor,
                                      ),
                                    );
                                  },
                                ),
                                Consumer<CalculateOrderProvider>(
                                  builder: (BuildContext context, provider,
                                      Widget? child) {
                                    return Text(
                                      provider.espressoMartini.toString(),
                                      style: const TextStyle(
                                          color: whiteColor, fontSize: 20),
                                    );
                                  },
                                ),
                                Consumer<CalculateOrderProvider>(
                                  builder: (BuildContext context, provider,
                                      Widget? child) {
                                    return IconButton(
                                      onPressed: () {
                                        provider
                                            .addValue(10.0)
                                            .addEspressoMartini();
                                      },
                                      icon: const Icon(
                                        Icons.add,
                                        color: whiteColor,
                                      ),
                                    );
                                  },
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Spacer(),
                  ]),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Container(
                  height: 72,
                  width: size.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(width: 1, color: grayColor)),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(
                        width: 15.0,
                      ),
                      Image.asset(tikMarkIcon),
                      const SizedBox(
                        width: 10.0,
                      ),
                      const Column(
                        children: [
                          Spacer(),
                          Text(
                            "Schedule for later",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: whiteColor),
                          ),
                          Text(
                            "Aug 10, 8:00 PM",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Colors.grey),
                          ),
                          Spacer()
                        ],
                      ),
                      const Spacer(),
                      const Text(
                        "Edit",
                        style: TextStyle(
                            color: focusColor,
                            fontSize: 14,
                            fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(
                        width: 25.0,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Container(
                  height: 120,
                  width: size.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(width: 1, color: grayColor)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Spacer(),
                      const Padding(
                        padding: EdgeInsets.only(
                          left: 16.0,
                        ),
                        child: Text(
                          "Tip amount",
                          style: TextStyle(
                              color: whiteColor,
                              fontSize: 14,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      const Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Consumer<CalculateOrderProvider>(
                            builder: (BuildContext context, provider,
                                Widget? child) {
                              return InkWell(
                                onTap: () {
                                  if (provider.tips == 0.0) {
                                    provider.tips = 5.25;
                                    provider.addValue(5.25);
                                  } else {
                                    provider.tips = 0.0;
                                    provider.removeValue(5.25);
                                  }
                                },
                                child: Container(
                                  width: 72,
                                  height: 58,
                                  decoration: BoxDecoration(
                                      color: (provider.tips == 5.25)
                                          ? focusColor
                                          : Colors.transparent,
                                      borderRadius: BorderRadius.circular(16),
                                      border: Border.all(
                                          width: 1, color: grayColor)),
                                  child: Column(
                                    children: [
                                      const Spacer(),
                                      Text(
                                        "\$5.25",
                                        style: TextStyle(
                                            color: (provider.tips == 5.25)
                                                ? backGroundColor
                                                : whiteColor,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      const Spacer(),
                                      Text(
                                        "(15%)",
                                        style: TextStyle(
                                            color: (provider.tips == 5.25)
                                                ? backGroundColor
                                                : whiteColor,
                                            fontSize: 10,
                                            fontWeight: FontWeight.w400),
                                      ),
                                      const Spacer()
                                    ],
                                  ),
                                ),
                              );
                            },
                          ),
                          Consumer<CalculateOrderProvider>(
                            builder: (BuildContext context, provider,
                                Widget? child) {
                              return InkWell(
                                onTap: () {
                                  if (provider.tips != 7.25) {
                                    provider.tips = 7.25;
                                    provider.addValue(7.25);
                                  } else {
                                    provider.tips = 0.0;
                                    provider.removeValue(7.25);
                                  }
                                },
                                child: Container(
                                  width: 72,
                                  height: 58,
                                  decoration: BoxDecoration(
                                      color: (provider.tips == 7.25)
                                          ? focusColor
                                          : Colors.transparent,
                                      borderRadius: BorderRadius.circular(16),
                                      border: Border.all(
                                          width: 1, color: grayColor)),
                                  child: Column(
                                    children: [
                                      const Spacer(),
                                      Text(
                                        "\$7.25",
                                        style: TextStyle(
                                            color: (provider.tips == 7.25)
                                                ? backGroundColor
                                                : whiteColor,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      const Spacer(),
                                      Text(
                                        "(20%)",
                                        style: TextStyle(
                                            color: (provider.tips == 7.25)
                                                ? backGroundColor
                                                : whiteColor,
                                            fontSize: 10,
                                            fontWeight: FontWeight.w400),
                                      ),
                                      const Spacer()
                                    ],
                                  ),
                                ),
                              );
                            },
                          ),
                          Consumer<CalculateOrderProvider>(
                            builder: (BuildContext context, provider,
                                Widget? child) {
                              return InkWell(
                                onTap: () {
                                  if (provider.tips != 9.25) {
                                    provider.tips = 9.25;
                                    provider.addValue(9.25);
                                  } else {
                                    provider.tips = 0.0;
                                    provider.removeValue(9.25);
                                  }
                                },
                                child: Container(
                                  width: 72,
                                  height: 58,
                                  decoration: BoxDecoration(
                                      color: (provider.tips == 9.25)
                                          ? focusColor
                                          : Colors.transparent,
                                      borderRadius: BorderRadius.circular(16),
                                      border: Border.all(
                                          width: 1, color: grayColor)),
                                  child: Column(
                                    children: [
                                      const Spacer(),
                                      Text(
                                        "\$9.25",
                                        style: TextStyle(
                                            color: (provider.tips == 9.25)
                                                ? backGroundColor
                                                : whiteColor,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      const Spacer(),
                                      Text(
                                        "(20%)",
                                        style: TextStyle(
                                            color: (provider.tips == 9.25)
                                                ? backGroundColor
                                                : whiteColor,
                                            fontSize: 10,
                                            fontWeight: FontWeight.w400),
                                      ),
                                      const Spacer()
                                    ],
                                  ),
                                ),
                              );
                            },
                          ),
                          Container(
                              width: 72,
                              height: 58,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16),
                                  border:
                                      Border.all(width: 1, color: grayColor)),
                              child: const Center(
                                child: Text(
                                  "Other",
                                  style: TextStyle(
                                      color: whiteColor,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400),
                                ),
                              )),
                        ],
                      ),
                      const Spacer()
                      //
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Container(
                  height: 62,
                  width: size.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(width: 1, color: grayColor)),
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 20.0,
                      ),
                      const Text(
                        "Amount due",
                        style: TextStyle(
                            color: whiteColor,
                            fontSize: 14,
                            fontWeight: FontWeight.w500),
                      ),
                      const Spacer(),
                      Consumer<CalculateOrderProvider>(
                        builder: (BuildContext context, calCulateOrderProvider,
                            Widget? child) {
                          return Text(
                            "${calCulateOrderProvider.totalOrder.toString()} \$",
                            style: const TextStyle(
                                color: whiteColor,
                                fontSize: 14,
                                fontWeight: FontWeight.w500),
                          );
                        },
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: Image.asset(
                            downDropIcon,
                            color: whiteColor,
                          )),
                      const SizedBox(
                        width: 10.0,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          const Spacer(),
          const Divider(
            color: grayColor,
          )
        ],
      )),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          width: size.width,
          height: 72,
          decoration: BoxDecoration(
              color: focusColor,
              borderRadius: BorderRadius.circular(35),
              border: Border.all(width: 1, color: grayColor)),
          child: const Center(
            child: Text(
              "Log In To Continue",
              style: TextStyle(
                  color: backGroundColor,
                  fontSize: 17,
                  fontWeight: FontWeight.w700),
            ),
          ),
        ),
      ),
    );
  }
}
