import 'package:flutter/material.dart';

import '../style.dart';
import 'body_user_details.dart';
import 'top_user_details.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const TopUserDetails(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: size.width / 13),
              child: const BodyUserDetails(),
            ),
          ],
        ),
      ),
    );
  }
}

class StarIcons extends StatelessWidget {
  const StarIcons(
      {Key? key,
      this.color,
      this.top,
      this.left,
      this.right,
      this.bottom,
      this.iconSize,
      this.child})
      : super(key: key);
  final Color? color;
  final double? top;
  final double? left;
  final double? right;
  final double? bottom;
  final double? iconSize;
  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: top,
        left: left,
        right: right,
        bottom: bottom,
        child: child ??
            Icon(Icons.star,
                size: iconSize ?? 10,
                color: color ?? StyleWidget.background.withOpacity(0.5)));
  }
}
