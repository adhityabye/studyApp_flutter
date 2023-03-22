import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:study_app_flutter/routes/app_routes.dart';
import 'package:study_app_flutter/screens/home/home_screen.dart';
import 'package:study_app_flutter/widgets/app_circle_button.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../configs/themes/app_colors.dart';

class AppIntroductionScreen extends StatelessWidget {
  const AppIntroductionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(gradient: mainGradient(context)),
        alignment: Alignment.center,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: Get.width * 0.2),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.star,
                size: 65,
              ),
              SizedBox(height: 40),
              const Text(
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                    color: onSurfaceTextColor,
                    fontWeight: FontWeight.w400,
                  ),
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam"),
              SizedBox(height: 40),
              InkWell(
                onTap: () => null,
                child: Container(
                  child: Icon(Icons.arrow_forward_ios_rounded, size: 40),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
