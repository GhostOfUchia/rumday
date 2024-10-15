import 'package:flutter/material.dart';
import 'package:rumedy/consts/Strings.dart';
import 'package:rumedy/consts/colors.dart';

class SesarchBar extends StatefulWidget {
  const SesarchBar({super.key});

  @override
  State<SesarchBar> createState() => _SesarchBarState();
}

class _SesarchBarState extends State<SesarchBar> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
              borderSide: const BorderSide(color: grayColor),
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
        ));
  }
}
