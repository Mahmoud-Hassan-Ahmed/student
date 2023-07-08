import 'package:flutter/material.dart';
import 'package:student/core/helper/AppUtils.dart';
import 'package:student/core/widgets/appbar/with_title.dart';
import 'package:student/core/widgets/bottom_bar/save_bottom.dart';
import 'package:student/features/student/presentation/pages/confirm_phone.dart';
import 'package:student/features/student/presentation/widgets/password/change_password_widget.dart';

class ChangePasswordPagw extends StatefulWidget {
  const ChangePasswordPagw({super.key});

  @override
  State<ChangePasswordPagw> createState() => _ChangePasswordPagwState();
}

class _ChangePasswordPagwState extends State<ChangePasswordPagw> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomSaveWidget(
        onCancel: () {},
        onSave: () {
          AppUtils.pushTo(context, const ConfirmPhonePage());
        },
      ),
      body: CustomScrollView(
        slivers: [
          SliverPersistentHeader(
              pinned: true,
              floating: false,
              delegate: AppBarWithTitle(
                  context: context,
                  title: 'إعادة تعيين كلمة المرور',
                  callBack: () {
                    Navigator.pop(context);
                  })),
          const SliverFillRemaining(
              hasScrollBody: true, child: ChangePasswordListWidget())
        ],
      ),
    );
  }
}
