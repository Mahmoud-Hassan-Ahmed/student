import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:student/core/theme/colors.dart';
import 'package:student/core/theme/font_size.dart';

class BottomSendMessage extends StatelessWidget {
  const BottomSendMessage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      color: AppColors.bgSendMessage,
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
                color: AppColors.orange,
                borderRadius: BorderRadius.circular(50)),
            child: IconButton(
              onPressed: () {},
              icon: SvgPicture.asset('assets/icons/sendmessage.svg'),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
              child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: TextFormField(
              decoration: const InputDecoration(
                  border: InputBorder.none,
                  hintText: ' ...اكتب رسالة ',
                  hintTextDirection: TextDirection.rtl,
                  hintStyle: TextStyle(
                      fontSize: AppFontSize.hintFormField,
                      color: AppColors.hint,
                      fontFamily: 'Cairo')),
            ),
          ))
        ],
      ),
    );
  }
}
