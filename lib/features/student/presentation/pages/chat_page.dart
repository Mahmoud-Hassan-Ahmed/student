import 'package:flutter/material.dart';
import 'package:student/core/widgets/appbar/with_title.dart';
import 'package:student/core/widgets/bottom_bar/send_message.dart';
import 'package:student/features/student/presentation/widgets/chat/chat.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      bottomNavigationBar: Padding(
        padding: MediaQuery.of(context).viewInsets,
        child: const BottomSendMessage(),
      ),
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverPersistentHeader(
            pinned: true,
            floating: false,
            delegate: AppBarWithTitle(
                context: context,
                title: 'شات مع المشرف',
                callBack: () {
                  Navigator.pop(context);
                }),
          ),
          const SliverFillRemaining(hasScrollBody: true, child: ChatWidget())
        ],
      ),
    );
  }
}
