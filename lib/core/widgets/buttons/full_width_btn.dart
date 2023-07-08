import 'package:flutter/material.dart';
import 'package:student/core/theme/colors.dart';
import 'package:student/core/theme/font_size.dart';

class FullWidthBtn extends StatelessWidget {
  final String label;
  final Color? bg;
  final Color? textColor;
  final Function? callBack;
  const FullWidthBtn(
      {super.key,
      required this.label,
      required this.callBack,
      this.bg,
      this.textColor});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
          style: ButtonStyle(
            padding: MaterialStateProperty.all<EdgeInsets>(
              const EdgeInsets.all(8),
            ),
            backgroundColor:
                MaterialStateProperty.all<Color>(bg ?? AppColors.orange),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            )),
          ),
          onPressed: callBack != null
              ? () {
                  callBack!.call();
                }
              : null,
          child: Text(
            label,
            style: TextStyle(
                fontSize: AppFontSize.hintFormField,
                fontFamily: 'Cairo',
                fontWeight: FontWeight.bold,
                color: textColor ?? Colors.white),
          )),
    );
  }
}
