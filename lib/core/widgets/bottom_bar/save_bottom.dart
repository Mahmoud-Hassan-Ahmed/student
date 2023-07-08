import 'package:flutter/material.dart';
import 'package:student/core/theme/colors.dart';
import 'package:student/core/widgets/buttons/but_save_cancel.dart';

class BottomSaveWidget extends StatelessWidget {
  const BottomSaveWidget(
      {super.key, required this.onSave, required this.onCancel});
  final Function onSave;
  final Function onCancel;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Container(
          padding: const EdgeInsets.all(15),
          decoration: const BoxDecoration(
            color: AppColors.bgSendMessage,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          child: ButtonSaveCancelWidget(
            onSave: () {
              onSave.call();
            },
            onCancel: () {},
          )),
    );
  }
}
