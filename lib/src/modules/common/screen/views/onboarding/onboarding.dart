import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_health_and_fitness/src/core/styles/colors.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_health_and_fitness/src/modules/common/screen/components/custom_button.dart';

class OnBoarding extends ConsumerWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // double height1 = height - padding.top - padding.bottom;
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Container(
        color: Colors.white,
        child: Column(
          children: [
            SizedBox(
              height: screenHeight / 15,
            ),
            //----------- Logo ---------------//
            SizedBox(
              height: 100,
              width: 100,
              child: Image.asset('assets/images/ic.png'),
            ),
            //----------- Logo ---------------//

            Column(
              children: [
                SizedBox(
                  child: DefaultTextStyle(
                    style: GoogleFonts.rubik(
                      textStyle: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.w500,
                        color: textColor,
                      ),
                    ),
                    child: const Text(
                      "Welcome to",
                    ),
                  ),
                ),
                SizedBox(
                  child: DefaultTextStyle(
                    style: GoogleFonts.rubik(
                      textStyle: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.w500,
                        color: textColor,
                      ),
                    ),
                    child: const Text(
                      "My Health and Fitness App",
                    ),
                  ),
                ),
                SizedBox(
                  height: screenHeight / 30,
                ),
                SizedBox(
                  child: DefaultTextStyle(
                    style: GoogleFonts.rubik(
                      textStyle: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.w300,
                        color: textColor,
                      ),
                    ),
                    child: const Text(
                      "The best health and fitness",
                    ),
                  ),
                ),
                SizedBox(
                  child: DefaultTextStyle(
                    style: GoogleFonts.rubik(
                      textStyle: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.w300,
                        color: textColor,
                      ),
                    ),
                    child: const Text(
                      "Monitoring and tracking app",
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 300,
              width: 300,
              child: Image.asset('assets/images/exercise.png'),
            ),
            SizedBox(
              height: screenHeight / 30,
            ),
            customSubmitButton(
              "Get Started",
              () {},
            ),
            SizedBox(
              height: screenHeight / 30,
            ),
            Row(
              children: [
                SizedBox(
                  width: screenWidth / 6,
                ),
                Center(
                  child: DefaultTextStyle(
                    style: GoogleFonts.rubik(
                      textStyle: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF4C5980),
                      ),
                    ),
                    child: const Text(
                      "Already have account ?",
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: DefaultTextStyle(
                    style: GoogleFonts.rubik(
                      textStyle: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.w700,
                        color: customSubmitColor,
                      ),
                    ),
                    child: const Text(
                      "Sign In",
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
