import 'package:flutter/material.dart';
import 'package:student/core/widgets/appbar/with_title.dart';
import 'package:student/core/widgets/bottom_bar/bottom_bar.dart';
import 'package:student/features/student/presentation/widgets/message/messages.dart';

class MessagesPage extends StatefulWidget {
  const MessagesPage({super.key});

  @override
  State<MessagesPage> createState() => _MessagesPageState();
}

class _MessagesPageState extends State<MessagesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      bottomNavigationBar: const BottomBarWidget(
        indexActive: 1,
      ),
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverPersistentHeader(
            pinned: true,
            floating: false,
            delegate: AppBarWithTitle(
                context: context,
                title: 'الرسائل',
                bg: 'assets/images/bg_message_bar.png',
                callBack: () {
                  Navigator.pop(context);
                }),
          ),
          const SliverFillRemaining(
            hasScrollBody: true,
            child: Directionality(
                textDirection: TextDirection.rtl, child: MessagesWidget()),
          )
        ],
      ),
    );
  }
}
