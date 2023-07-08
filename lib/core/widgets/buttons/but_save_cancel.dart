import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:student/core/theme/colors.dart';
import 'package:student/core/theme/font_size.dart';

class ButtonSaveCancelWidget extends StatelessWidget {
  const ButtonSaveCancelWidget(
      {super.key, required this.onSave, required this.onCancel});
  final Function onSave;
  final Function onCancel;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ElevatedButton(
            style: ButtonStyle(
              padding: MaterialStateProperty.all<EdgeInsets>(
                const EdgeInsets.symmetric(horizontal: 60, vertical: 10),
              ),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
              backgroundColor:
                  MaterialStateProperty.all<Color>(AppColors.orange),
            ),
            onPressed: () {
              onSave.call();
            },
            child: const Text(
              'حفظ التعديل',
              style: TextStyle(
                  fontFamily: 'Cairo',
                  fontSize: AppFontSize.hintText - 2,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            )),
        const SizedBox(
          width: 30,
        ),
        TextButton.icon(
          icon: SvgPicture.asset('assets/icons/Fail.svg'),
          label: const Text(
            'إلغاء',
            style: TextStyle(
              color: AppColors.smallTextColor,
              fontSize: AppFontSize.hintText,
              fontWeight: FontWeight.bold,
            ),
          ),
          onPressed: () {
            onCancel.call();
          },
        ),
      ],
    );
  }
}
