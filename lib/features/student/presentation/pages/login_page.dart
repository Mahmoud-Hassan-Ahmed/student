import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:student/core/widgets/appbar/with_logo.dart';
import 'package:student/core/widgets/texts/note_text.dart';
import 'package:student/features/student/presentation/bloc/login/login_bloc.dart';
import 'package:student/features/student/presentation/widgets/login/form.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginBloc(),
      child: Scaffold(
        // backgroundColor: Colors.white,
        body: CustomScrollView(
          slivers: [
            SliverPersistentHeader(
                pinned: true,
                floating: false,
                delegate: AppBarWithLogo(
                    context: context, logo: 'assets/images/logo.png')),
            const SliverFillRemaining(
              fillOverscroll: true,
              hasScrollBody: false,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FormLogIn(),
                  SizedBox(
                    height: 15,
                  ),
                  NoteTextWidget(
                    text:
                        'ملاحظة : يرجى التواصل مع المدرسة/ المركز للحصول علي بيانات الدخول لأول مرة',
                  ),
                  SizedBox(
                    height: 28,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
