// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_texts.dart';

class NavigateContainerWidgetLogin extends StatefulWidget {
  NavigateContainerWidgetLogin({super.key, required this.userNameKey});

  GlobalKey<FormState> userNameKey;

  @override
  State<NavigateContainerWidgetLogin> createState() => _NavigateContainerWidgetLoginState();
}

class _NavigateContainerWidgetLoginState extends State<NavigateContainerWidgetLogin> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
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
          if(widget.userNameKey.currentState!.validate() == true){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context){
                return const Text("data");
              }),
            );
          }
        },
        child: Text(
          AppTexts.getStarted,
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
    );
  }
}
