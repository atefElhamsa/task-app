import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_images.dart';
import '../../../../core/utils/app_texts.dart';
import '../../../login/views/login_screen.dart';

class NavigateContainerWidgetOnBoarding extends StatefulWidget {
  const NavigateContainerWidgetOnBoarding({super.key});

  @override
  State<NavigateContainerWidgetOnBoarding> createState() => _NavigateContainerWidgetOnBoardingState();
}

class _NavigateContainerWidgetOnBoardingState extends State<NavigateContainerWidgetOnBoarding> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            AppColors.blue,
            AppColors.move,
          ],
        ),
        borderRadius: BorderRadius.circular(
            MediaQuery.of(context).size.width * 0.03),
      ),
      child: MaterialButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context){
              return const LoginScreen();
            }),
          );
        },
        child: Row(
          children: [
            Expanded(
              child: Text(
                AppTexts.letsStart,
                style: GoogleFonts.lexendDeca(
                  textStyle: TextStyle(
                    color: AppColors.white,
                    fontWeight: FontWeight.w600,
                    fontSize:
                    MediaQuery.of(context).size.height * 0.027,
                  ),
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Image.asset(AppImages.arrowLeft),
          ],
        ),
      ),
    );
  }
}
