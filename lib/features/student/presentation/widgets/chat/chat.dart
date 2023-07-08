import 'package:flutter/material.dart';
import 'package:student/core/theme/colors.dart';
import 'package:student/core/theme/font_size.dart';

class ChatWidget extends StatelessWidget {
  const ChatWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.only(top: 20),
      physics: const NeverScrollableScrollPhysics(),
      children: [
        Container(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CircleAvatar(
                backgroundImage: AssetImage('assets/images/parent.png'),
                radius: 20.0,
              ),
              const SizedBox(width: 10.0),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: AppColors.bgSendMessage,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: const Text(
                    'تفاصيل الرسالة تفاصيل الرسالة تفاصيل الرسالة تفاصيل الرسالة تفاصيل الرسالة تفاصيل الرسالة تفاصيل الرسالة ',
                    style: TextStyle(
                      fontSize: AppFontSize.smallText,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: AppColors.recieveColorMessage,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: const Text(
                    'تفاصيل الرسالة تفاصيل الرسالة تفاصيل الرسالة تفاصيل الرسالة تفاصيل الرسالة تفاصيل الرسالة تفاصيل الرسالة ',
                    style: TextStyle(
                      fontSize: AppFontSize.smallText,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 10.0),
              const CircleAvatar(
                backgroundImage: AssetImage('assets/images/user_send.png'),
                radius: 20.0,
              ),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 10),
          child: Text(' 3:45pm ,30/11/2022',
              style: TextStyle(
                  fontSize: AppFontSize.hintText - 2,
                  color: Colors.grey,
                  fontFamily: 'Cairo')),
        ),
        Container(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CircleAvatar(
                backgroundImage: AssetImage('assets/images/parent.png'),
                radius: 20.0,
              ),
              const SizedBox(width: 10.0),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: AppColors.bgSendMessage,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: const Text(
                    'تفاصيل الرسالة تفاصيل الرسالة تفاصيل الرسالة تفاصيل الرسالة تفاصيل الرسالة تفاصيل الرسالة تفاصيل الرسالة ',
                    style: TextStyle(
                      fontSize: AppFontSize.smallText,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: AppColors.recieveColorMessage,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: const Text(
                    'تفاصيل الرسالة تفاصيل الرسالة تفاصيل الرسالة تفاصيل الرسالة تفاصيل الرسالة تفاصيل الرسالة تفاصيل الرسالة ',
                    style: TextStyle(
                      fontSize: AppFontSize.smallText,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 10.0),
              const CircleAvatar(
                backgroundImage: AssetImage('assets/images/user_send.png'),
                radius: 20.0,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
