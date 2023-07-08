import 'package:flutter/material.dart';
import 'package:student/core/theme/colors.dart';
import 'package:student/core/theme/font_size.dart';
import 'package:student/core/widgets/appbar/with_title.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({super.key});

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverPersistentHeader(
              pinned: true,
              floating: false,
              delegate: AppBarWithTitle(
                  context: context,
                  title: 'عن التطبيق',
                  callBack: () {
                    Navigator.pop(context);
                  })),
          SliverFillRemaining(
              hasScrollBody: true,
              child: Directionality(
                textDirection: TextDirection.rtl,
                child: ListView(
                    padding: const EdgeInsets.all(10),
                    children: const [
                      Text(
                        '.موسبيإ ميرول صن نم خسن ىلع اًضيأ توح يتلاو ركيام جياب سودلأ لثم ينورتكلإلا رشنلا جمارب روهظ عم اَرخؤم ىرخأ ةرم رشتنيل داعو ،صنلا اذه نم عطاقم يوحت ةيكيتسالبلا تيسارتيل قئاقر رادصإ عم نرقلا اذه تايّنيتس يف ريبك لكشب رشتنا. ينورتكلإلا ديضنتلاو ةعابطلا يف يلصألا هلكشبو اًمدختسم راص ىتح هنا لب ،صنلا اذه ىلع يضقت مل نمزلا نم نورق ةسمخ. فرحألا هذهل يلكش عجرم وأ ليلد ةباثمب بيّتك نوّكتل ،صن نم اهتذخأ يئاوشع لكشب فرحألا نم ةعومجم صرب ةلوهجم ةعبطم تماق امدنع رشع سماخلا نرقلا ذنم يلكشلا صنلل رايعملا لازيالو موسبيإ ميرول ناك. رشنلا رودو عباطملا تاعانص يف مدختسيُو) ىوتحملا سيلو لكشلا يه ةياغلا نأ ىنعمب (يلكش صن ةطاسبب وه موسبيإ ميرول  ',
                        style: TextStyle(
                            fontFamily: 'Cairo',
                            fontSize: AppFontSize.hintText,
                            color: AppColors.smallText),
                      ),
                      Text(
                        '.موسبيإ ميرول صن نم خسن ىلع اًضيأ توح يتلاو ركيام جياب سودلأ لثم ينورتكلإلا رشنلا جمارب روهظ عم اَرخؤم ىرخأ ةرم رشتنيل داعو ،صنلا اذه نم عطاقم يوحت ةيكيتسالبلا تيسارتيل قئاقر رادصإ عم نرقلا اذه تايّنيتس يف ريبك لكشب رشتنا. ينورتكلإلا ديضنتلاو ةعابطلا يف يلصألا هلكشبو اًمدختسم راص ىتح هنا لب ،صنلا اذه ىلع يضقت مل نمزلا نم نورق ةسمخ. فرحألا هذهل يلكش عجرم وأ ليلد ةباثمب بيّتك نوّكتل ،صن نم اهتذخأ يئاوشع لكشب فرحألا نم ةعومجم صرب ةلوهجم ةعبطم تماق امدنع رشع سماخلا نرقلا ذنم يلكشلا صنلل رايعملا لازيالو موسبيإ ميرول ناك. رشنلا رودو عباطملا تاعانص يف مدختسيُو) ىوتحملا سيلو لكشلا يه ةياغلا نأ ىنعمب (يلكش صن ةطاسبب وه موسبيإ ميرول  ',
                        style: TextStyle(
                            fontFamily: 'Cairo',
                            fontSize: AppFontSize.hintText,
                            color: AppColors.smallText),
                      )
                    ]),
              ))
        ],
      ),
    );
  }
}
