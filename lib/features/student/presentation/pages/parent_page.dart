import 'package:flutter/material.dart';
import 'package:student/core/widgets/appbar/with_title.dart';
import 'package:student/core/widgets/bottom_bar/add_bottom.dart';
import 'package:student/features/student/presentation/widgets/parents/card_parent.dart';
import 'package:student/features/student/presentation/widgets/parents/body_sheet.dart';

class ParentPage extends StatefulWidget {
  const ParentPage({super.key});

  @override
  State<ParentPage> createState() => _ParentPageState();
}

class _ParentPageState extends State<ParentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: const AddBtnFullBottom(
        content: BodySheetParent(),
        label: 'إضافة ولي الامر',
      ),
      body: CustomScrollView(
        slivers: [
          SliverPersistentHeader(
              pinned: true,
              floating: false,
              delegate: AppBarWithTitle(
                  context: context,
                  title: 'بيانات ولي الأمر',
                  callBack: () {
                    Navigator.pop(context);
                  })),
          SliverFillRemaining(
            hasScrollBody: true,
            child: ListView(
              children: [
                CardParentWidget(
                  callBack: () {},
                ),
                const SizedBox(
                  height: 10,
                ),
                CardParentWidget(
                  callBack: () {},
                ),
                const SizedBox(
                  height: 10,
                ),
                CardParentWidget(
                  callBack: () {},
                ),
                const SizedBox(
                  height: 10,
                ),
                CardParentWidget(
                  callBack: () {},
                ),
                const SizedBox(
                  height: 10,
                ),
                CardParentWidget(
                  callBack: () {},
                ),
                const SizedBox(
                  height: 10,
                ),
                CardParentWidget(
                  callBack: () {},
                ),
                const SizedBox(
                  height: 10,
                ),
                CardParentWidget(
                  callBack: () {},
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
