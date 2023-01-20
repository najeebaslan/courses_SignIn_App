import 'dart:io';

import 'package:courses/regester/sign_in.dart';
import 'package:flutter/material.dart';

import '../style.dart';
import '../widget/clip_path.dart';
import 'cover_image_profile.dart';

class TopUserDetails extends StatelessWidget {
  const TopUserDetails({Key? key}) : super(key: key);
  static File? file;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return CoverImageProfile(
      imagePicker: () {},
      imageUri: 'assets/images/University_Najran.png',
      disbleEditeImage: true,
      doHero: false,
      file: file,
      leftEdit: size.width / 3.5,
      topEdit: size.height / 4.1,
      topCover: size.height / 8.6,
      radius: 70,
      clipPacth: Container(
        color: StyleWidget.background,
        margin: const EdgeInsets.only(bottom: bottomHeight),
        child: ClipPath(
          clipper: ClipPathClass(),
          child: Container(
            height: size.height / 4.5,
            width: size.width,
            color: kPrimaryColor,
            child: SingleChildScrollView(
              child: SizedBox(
                height: size.height / 4.5,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Positioned(
                        top: -10,
                        right: -30,
                        child: Row(
                          children: [
                            CircleAvatar(
                              radius: 60,
                              backgroundColor:
                                  StyleWidget.background.withOpacity(0.2),
                            ),
                          ],
                        )),
                    Positioned(
                        top: size.height / 16,
                        child: const Center(
                          child: Text(
                            'لنبداء التسجيل؟',
                            style: TextStyle(
                                fontSize: 18,
                                fontFamily: StyleWidget.fontName,
                                color: StyleWidget.white,
                                fontWeight: FontWeight.bold),
                          ),
                        )),
                    Positioned(
                        bottom: -50,
                        left: -30,
                        child: Row(
                          children: [
                            CircleAvatar(
                              radius: 60,
                              backgroundColor:
                                  StyleWidget.background.withOpacity(0.2),
                            ),
                          ],
                        )),
                    StarIcons(
                      top: size.height / 10,
                      right: size.width / 10,
                    ),
                    StarIcons(
                      top: size.height / 7,
                      right: size.width / 5,
                      child: Text(
                        '*',
                        style: TextStyle(
                          fontSize: 17,
                          color: StyleWidget.black.withOpacity(0.3),
                        ),
                      ),
                    ),
                    StarIcons(
                      top: size.height / 11,
                      left: size.width / 4.2,
                    ),
                    StarIcons(
                      top: size.height / 15,
                      left: size.width / 7,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
