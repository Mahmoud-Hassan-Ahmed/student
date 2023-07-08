import 'package:flutter/material.dart';
import 'package:student/core/widgets/appbar/with_title.dart';
import 'package:student/features/student/presentation/widgets/body_tracking/body_tracking.dart';

class TrackingPage extends StatefulWidget {
  const TrackingPage({super.key});

  @override
  State<TrackingPage> createState() => _TrackingPageState();
}

class _TrackingPageState extends State<TrackingPage> {
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
                  title: 'التتبع',
                  context: context)),
          const SliverFillRemaining(
              hasScrollBody: true, child: BodyTrackingWidget())
        ],
      ),
    );
  }
}
