import 'package:flutter/material.dart';

import '../style.dart';

class EditeImage extends StatelessWidget {
  const EditeImage(
      {Key? key,
      this.customEdit,
      this.radiusCircleAvatar,
      required this.imagePicker,
      this.colorIcon,
      this.editCircleColor})
      : super(key: key);

  final Widget? customEdit;
  final Color? colorIcon;
  final double? radiusCircleAvatar;
  final void Function() imagePicker;
  final Color? editCircleColor;
  @override
  Widget build(BuildContext context) {
    return StatefulBuilder(
      builder: (context, setState) => customEdit != null
          ? const SizedBox()
          : CircleAvatar(
              radius: radiusCircleAvatar ?? 20,
              backgroundColor: editCircleColor ?? Colors.grey.shade300,
              child: Icon(
                Icons.camera_alt,
                size: 25,
                color: StyleWidget.grey.withOpacity(0.9),
              ),
            ),
    );
  }
}
