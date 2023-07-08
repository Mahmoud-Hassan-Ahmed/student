import 'package:flutter/material.dart';
import 'package:student/core/widgets/appbar/with_title.dart';
import 'package:student/features/student/presentation/widgets/notifications/notification.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverPersistentHeader(
              pinned: true,
              floating: false,
              delegate: AppBarWithTitle(
                  callBack: () {
                    Navigator.pop(context);
                  },
                  context: context,
                  title: 'الاشعارات')),
          SliverFillRemaining(
            hasScrollBody: true,
            child: ListView(
              padding: EdgeInsets.zero,
              children: const [
                NotificationWidget(),
                NotificationWidget(),
                NotificationWidget(),
                NotificationWidget(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
