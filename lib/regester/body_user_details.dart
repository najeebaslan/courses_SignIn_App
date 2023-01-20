import 'dart:developer';

import 'package:courses/style.dart';
import 'package:flutter/material.dart';

import '../widget/auth_sharing.dart';
import '../widget/text_fiald.dart';

class BodyUserDetails extends StatefulWidget {
  const BodyUserDetails({super.key});

  @override
  State<BodyUserDetails> createState() => _BodyUserDetailsState();
}

class _BodyUserDetailsState extends State<BodyUserDetails> {
  final TextEditingController nameStudent = TextEditingController();
  final TextEditingController nameCoures = TextEditingController();
  final TextEditingController nameTecher = TextEditingController();
  final TextEditingController gradeNumber = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    nameStudent.dispose();
    nameCoures.dispose();
    nameTecher.dispose();
    gradeNumber.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Form(
        key: _formKey,
        child: Column(children: [
          const SizedBox(
            height: 30,
          ),
          Row(
            children: [
              Expanded(
                child: CustomTextFormField(
                  textDirection: TextDirection.rtl,
                  controller: nameStudent,
                  input: AuthSharing.inputDecoration(
                      labelText: "اسم الطالب",
                      edge: const EdgeInsets.fromLTRB(20, 10, 10, 20),
                      borderRadius: 35),
                  textInputType: TextInputType.name,
                  autovalidate: AutovalidateMode.disabled,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            children: [
              Expanded(
                child: CustomTextFormField(
                  textDirection: TextDirection.rtl,
                  controller: nameCoures,
                  input: AuthSharing.inputDecoration(
                      labelText: "اسم الكورس",
                      edge: const EdgeInsets.fromLTRB(20, 10, 10, 20),
                      borderRadius: 35),
                  textInputType: TextInputType.name,
                  autovalidate: AutovalidateMode.disabled,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            children: [
              Expanded(
                child: CustomTextFormField(
                  textDirection: TextDirection.rtl,
                  controller: nameTecher,
                  input: AuthSharing.inputDecoration(
                      labelText: "اسم المعلم",
                      edge: const EdgeInsets.fromLTRB(20, 10, 10, 20),
                      borderRadius: 35),
                  textInputType: TextInputType.name,
                  autovalidate: AutovalidateMode.disabled,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            children: [
              Expanded(
                child: CustomTextFormField(
                  textDirection: TextDirection.rtl,
                  controller: gradeNumber,
                  input: AuthSharing.inputDecoration(
                      labelText: "رقم الدرجة",
                      edge: const EdgeInsets.fromLTRB(20, 10, 10, 20),
                      borderRadius: 35),
                  textInputType: TextInputType.number,
                  autovalidate: AutovalidateMode.disabled,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 80,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: kPrimaryColor,
              padding:
                  const EdgeInsets.symmetric(horizontal: 150, vertical: 18),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(32.0),
              ),
            ),
            onPressed: () {
              String? grade = '';
              //Part A
              if (int.parse(gradeNumber.text) > 95) {
                setState(() => grade = 'A+');
              } else if (int.parse(gradeNumber.text) == 95) {
                setState(() => grade = 'A');
              } else
              //Part B
              if (int.parse(gradeNumber.text) >= 90) {
                setState(() => grade = 'B+');
              } else if (int.parse(gradeNumber.text) >= 80 &&
                  int.parse(gradeNumber.text) < 86) {
                setState(() => grade = 'B');
              } else

              //Part C
              if (int.parse(gradeNumber.text) > 80 &&
                  int.parse(gradeNumber.text) < 86) {
                setState(() => grade = 'C+');
              } else if (int.parse(gradeNumber.text) > 70 &&
                  int.parse(gradeNumber.text) < 76) {
                setState(() => grade = 'C');
              } else
              //Part D
              if (int.parse(gradeNumber.text) > 65 &&
                  int.parse(gradeNumber.text) < 70) {
                setState(() => grade = 'D+');
              } else if (int.parse(gradeNumber.text) > 60 &&
                  int.parse(gradeNumber.text) < 66) {
                setState(() => grade = 'D');
              }
              //Part F
              if (int.parse(gradeNumber.text) < 59) {
                setState(() => grade = 'F');
              }

              log('gradeNumber => ${grade.toString()}');
              if (gradeNumber.text.isNotEmpty) {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    backgroundColor: kPrimaryColor,
                    content: Text(
                      '$grade الدرجة ',
                      style: const TextStyle(
                          fontFamily: 'Cairo', color: StyleWidget.white),
                    )));
              }
            },
            child: const Text(
              'تسجيل',
              style: TextStyle(
                height: 1.2,
                fontFamily: StyleWidget.fontName,
              ),
            ),
          )
        ]),
      ),
    );
  }
}
