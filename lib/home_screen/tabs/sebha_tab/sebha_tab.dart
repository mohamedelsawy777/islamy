import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamy_c14/common/app_asset.dart';
import 'package:islamy_c14/common/app_styles.dart';

class SebhaTab extends StatefulWidget {
  const SebhaTab({super.key});

  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  int counter = 1;
  int index = 0;
  double angle = 0;
  List<String> azkarList = [
    "سبحان الله",
    "الحمد لله",
    "لا إله إلا الله",
    "الله أكبر",
    "لا حول ولا قوة إلا بالله",
    "أستغفر الله",
    "سبحان الله وبحمده",
    "سبحان الله العظيم",
    "اللهم صلِّ وسلم \nعلى نبينا محمد",
  ];
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AppAsset.sebhaBg),
          fit: BoxFit.cover,
        ),
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: height * 0.2),
            Text(
              "سَبِّحِ اسْمَ رَبِّكَ الأعلى ",
              style: AppStyles.bold24White.copyWith(fontSize: 30),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Image.asset(
              AppAsset.sebhaHead,
            ),
            GestureDetector(
              onTap: () {
                HapticFeedback.mediumImpact();
                setState(() {
                  if (counter < 33) {
                    counter += 1;
                    angle += 0.03;
                  } else {
                    angle = 0;
                    counter = 1;
                    index = (index + 1) % azkarList.length;
                  }
                });
              },
              child: Stack(alignment: AlignmentDirectional.center, children: [
                AnimatedRotation(
                  duration: const Duration(milliseconds: 400),
                  turns: angle,
                  child: Image.asset(
                    AppAsset.sebhaBody,
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      azkarList[index],
                      style: AppStyles.bold24White.copyWith(fontSize: 28),
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    Text(
                      "$counter",
                      style: AppStyles.bold24White.copyWith(fontSize: 28),
                    ),
                  ],
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
/*

width: 430
height: 932
*/