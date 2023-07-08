import 'package:flutter/material.dart';
import 'package:student/core/theme/colors.dart';
import 'package:student/core/theme/font_size.dart';

class ChangePasswordListWidget extends StatelessWidget {
  const ChangePasswordListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController usernameController = TextEditingController();
    final TextEditingController fullNameController = TextEditingController();
    final TextEditingController emailController = TextEditingController();
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Image.asset(
            'assets/images/password.png',
            height: MediaQuery.of(context).size.height / 4,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const Text(
                'كلمة المرور الحالية',
                textAlign: TextAlign.right,
                style: TextStyle(
                    fontFamily: 'Cairo',
                    fontSize: AppFontSize.smallText + 1,
                    color: AppColors.smallText),
              ),
              Container(
                height: 50,
                color: Colors.white,
                child: TextFormField(
                  controller: usernameController,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'كلمة المرور الحالية'),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'كلمة المرور الجديدة',
                textAlign: TextAlign.right,
                style: TextStyle(
                    fontFamily: 'Cairo',
                    fontSize: AppFontSize.smallText + 1,
                    color: AppColors.smallText),
              ),
              Container(
                color: Colors.white,
                child: TextFormField(
                  controller: fullNameController,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'كلمة المرور الجديدة'),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'تأكيد كلمة المرور الجديدة',
                textAlign: TextAlign.right,
                style: TextStyle(
                    fontFamily: 'Cairo',
                    fontSize: AppFontSize.smallText + 1,
                    color: AppColors.smallText),
              ),
              Container(
                height: 50,
                color: Colors.white,
                child: TextFormField(
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'تأكيد كلمة المرور الجديدة',
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
