import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tasks/core/utils/app_colors.dart';
import 'package:tasks/core/utils/app_images.dart';
import 'package:tasks/core/utils/app_texts.dart';
import 'package:tasks/features/onboarding/views/widgets/navigate_container_widget.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 0.1,
            vertical: MediaQuery.of(context).size.height * 0.08,
          ),
          child: Column(
            children: [
              Image.asset(AppImages.onBoardingImage),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.08,
              ),
              Text(
                AppTexts.todoListDailyTask,
                style: GoogleFonts.lexendDeca(
                  textStyle: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: AppColors.black,
                    fontSize: MediaQuery.of(context).size.height * 0.03,
                  ),
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              Text(
                AppTexts.descriptionOnBoarding,
                style: GoogleFonts.lexendDeca(
                  textStyle: TextStyle(
                    color: AppColors.grey,
                    fontWeight: FontWeight.w400,
                    fontSize: MediaQuery.of(context).size.height * 0.02,
                  ),
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              const NavigateContainerWidgetOnBoarding(),
            ],
          ),
        ),
      ),
    );
  }
}
