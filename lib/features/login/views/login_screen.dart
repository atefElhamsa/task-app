import 'dart:io';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:tasks/core/utils/app_colors.dart';
import 'package:tasks/core/utils/app_images.dart';
import 'package:tasks/core/utils/app_texts.dart';
import 'package:tasks/features/login/views/widgets/form_widget.dart';
import 'package:tasks/features/login/views/widgets/navigate_container_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var userNameKey = GlobalKey<FormState>();
  var name = TextEditingController();

  XFile? myPhoto;

  Future<XFile?> pickImage() async {
    final ImagePicker picker = ImagePicker();
    final XFile? image = await picker.pickImage(source: ImageSource.gallery);
    return image;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.05),
          child: Column(
            children: [
              Image.asset(AppImages.loginImage),
              InkWell(
                onTap: () {
                  pickImage().then(
                    (value) {
                      setState(() {
                        myPhoto = value;
                      });
                    },
                  );
                },
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.2,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      MediaQuery.of(context).size.width * 0.022,
                    ),
                    border: Border.all(
                      color: AppColors.blueSky,
                    ),
                  ),
                  child: myPhoto == null
                      ? Padding(
                        padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.1),
                        child: Icon(
                            Icons.add_a_photo,
                            size: MediaQuery.of(context).size.height * 0.05,
                            color: AppColors.blueSky,
                          ),
                      )
                      : ClipRRect(
                          borderRadius: BorderRadius.circular(
                            MediaQuery.of(context).size.width * 0.02,
                          ),
                          child: Image.file(
                            File(
                              myPhoto!.path,
                            ),
                          ),
                        ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              TextButton(
                onPressed: () {
                  pickImage().then(
                    (value) {
                      setState(() {
                        myPhoto = value;
                      });
                    },
                  );
                },
                child: Text(
                  myPhoto == null ? AppTexts.addPhoto : AppTexts.updatePhoto,
                  style: GoogleFonts.lexendDeca(
                    textStyle: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: AppColors.grey,
                      fontSize: MediaQuery.of(context).size.height * 0.02,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              FormWidget(
                name: name,
                userNameKey: userNameKey,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              NavigateContainerWidgetLogin(
                userNameKey: userNameKey,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
