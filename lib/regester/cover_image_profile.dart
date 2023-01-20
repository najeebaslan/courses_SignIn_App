import 'dart:developer';
import 'dart:io';
import 'package:flutter/material.dart';

import 'cover_image.dart';
import 'edit_image.dart';

const double coverHeight = 220;
const double profileHeight = 144;
const top = coverHeight - profileHeight / 2;
const bottomHeight = profileHeight / 2;

class CoverImageProfile extends StatelessWidget {
  const CoverImageProfile(
      {Key? key,
      this.clipPacth,
      required this.file,
      this.leftEdit,
      this.topCover,
      this.topEdit,
      this.leftCover,
      required this.imageUri,
      this.disbleEditeImage = true,
      required this.doHero,
      this.radius,
      this.coverColor,
      this.coverPadding,
      this.radiusCircleAvatar,
      this.imagePicker,
      this.circleAvatarColor,
      this.editCircleColor})
      : super(key: key);
  static const top = coverHeight - profileHeight / 2;
  static const bottom = profileHeight / 2;
  final Widget? clipPacth;
  final File? file;
  final double? topCover;
  final double? leftCover;
  final double? topEdit;
  final double? leftEdit;
  final String? imageUri;
  final bool? disbleEditeImage;
  final bool? doHero;
  final double? radius;
  final Color? coverColor;
  final double? radiusCircleAvatar;
  final double? coverPadding;
  final Color? circleAvatarColor;
  final Color? editCircleColor;

  final void Function()? imagePicker;
  @override
  Widget build(BuildContext context) {
    Widget editeImage() => EditeImage(
          radiusCircleAvatar: radiusCircleAvatar,
          imagePicker: imagePicker!,
          editCircleColor: editCircleColor,
        );
    log('rebuild CoverImageProfile');
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children: [
        clipPacth != null ? clipPacth! : const SizedBox(),
        Positioned(
          top: topCover,
          left: leftCover,
          child: CoverImage(
              circleAvatarColor: circleAvatarColor,
              imageUri: imageUri,
              radius: radius,
              coverPadding: coverPadding,
              coverColor: coverColor),
        ),
        !disbleEditeImage!
            ? Positioned(
                top: topEdit,
                left: leftEdit,
                child: doHero == true
                    ? FloatingActionButton(
                        focusElevation: 0,
                        autofocus: true,
                        focusColor: Colors.transparent,
                        onPressed: () {},
                        backgroundColor: Colors.transparent,
                        heroTag: 'TagProfile',
                        child: editeImage())
                    : editeImage(),
              )
            : const SizedBox(),
      ],
    );
  }
}
