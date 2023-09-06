import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_health_and_fitness/src/core/styles/colors.dart';

Widget customSubmitButton(String title, Function()? onTap) {
  return Material(
    child: GestureDetector(
      // onTap: onTap,
      onTap: onTap,
      child: Container(
        width: 300,
        height: 60,
        decoration: BoxDecoration(
          color: customSubmitColor,

          borderRadius: const BorderRadius.all(
              Radius.circular(15.0)), // Set rounded corner radius
          // boxShadow: [BoxShadow(blurRadius: 10,color: Colors.black,offset: Offset(1,3))] // Make rounded corner of border
        ),
        child: Center(
          child: DefaultTextStyle(
            style: GoogleFonts.rubik(
              textStyle: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
            child: Text(
              title,
            ),
          ),
        ),
      ),
    ),
  );
}
