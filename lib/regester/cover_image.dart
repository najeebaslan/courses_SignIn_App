import 'package:flutter/material.dart';

import '../style.dart';
import 'cover_image_profile.dart';

class CoverImage extends StatelessWidget {
  const CoverImage(
      {Key? key,
      required this.imageUri,
      this.radius,
      this.coverColor,
      this.coverPadding,
      this.circleAvatarColor})
      : super(key: key);
  final String? imageUri;
  final double? radius;
  final Color? coverColor;
  final Color? circleAvatarColor;
  final double? coverPadding;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(coverPadding ?? 4),
      decoration: BoxDecoration(
          shape: BoxShape.circle, color: coverColor ?? Colors.grey.shade300),
      child: Container(
          padding: const EdgeInsets.all(3),
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white,
          ),
          child: imageUri != null
              ? CircleAvatar(
                  backgroundColor:
                      circleAvatarColor ?? kPrimaryColor.withOpacity(0.3),
                  radius: radius ?? profileHeight / 2,
                  child: Image.asset(imageUri!),
                )
              : CircleAvatar(
                  backgroundColor:
                      circleAvatarColor ?? kPrimaryColor.withOpacity(0.3),
                  radius: radius ?? profileHeight / 2,
                )),
    );
  }
}
