// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_texts.dart';

class FormWidget extends StatelessWidget {
  FormWidget({super.key, required this.userNameKey, required this.name});

  GlobalKey<FormState> userNameKey;
  TextEditingController name;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: userNameKey,
      child: TextFormField(
        onFieldSubmitted: (value) {
          FocusScope.of(context).requestFocus(
            FocusNode(),
          );
        },
        validator: (value) {
          if (value == null || value.isEmpty) {
            return "name can't be empty";
          }
          return null;
        },
        controller: name,
        keyboardType: TextInputType.name,
        cursorColor: AppColors.black,
        decoration: InputDecoration(
          focusedErrorBorder: OutlineInputBorder(
            borderRadius:
                BorderRadius.circular(MediaQuery.of(context).size.width * 0.03),
            borderSide: const BorderSide(
              color: AppColors.blueSky,
              width: 2,
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius:
                BorderRadius.circular(MediaQuery.of(context).size.width * 0.03),
            borderSide: const BorderSide(
              color: AppColors.red,
              width: 1,
            ),
          ),
          filled: true,
          fillColor: AppColors.white,
          label: const Text(
            AppTexts.enterName,
            style: TextStyle(color: AppColors.grey),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius:
                BorderRadius.circular(MediaQuery.of(context).size.width * 0.03),
            borderSide: const BorderSide(
              color: AppColors.blueSky,
              width: 1,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius:
                BorderRadius.circular(MediaQuery.of(context).size.width * 0.03),
            borderSide: const BorderSide(
              color: AppColors.blue,
              width: 2,
            ),
          ),
        ),
      ),
    );
  }
}
