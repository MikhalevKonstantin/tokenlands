import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'dart:ui';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(1680, 1050),
      builder: () => MaterialApp(
        home: Scaffold(
          body: SafeArea(
              child: SingleChildScrollView(
            child: Column(
              children: [
                whiteLine(),
                blackLine(),
              ],
            ),
          )),
        ),
      ),
    );
  }
}

whiteLine() {
  return Container(
    color: Color(0xfffafbfc),
    width: 1.sw,
    height: 96,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Row(
          children: [
            Container(
              child: SvgPicture.asset(
                'assets/svg_icons/token-lands-horizontal.svg',
              ),
            ),
            SizedBox(width: 0.028.sw),
            Container(
              child: TextButton(
                onPressed: () {},
                child: AutoSizeText(
                  'Roadmap',
                  maxLines: 1,
                  style: TextStyle(
                    fontFamily: 'Montserra SemiBold',
                    color: Color.fromRGBO(20, 16, 41, 0.8),
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    height: 1.75,
                  ),
                ),
              ),
            ),
            SizedBox(width: 0.028.sw),
            Container(
              child: TextButton(
                onPressed: () {},
                child: AutoSizeText(
                  'Open packs',
                  maxLines: 1,
                  style: TextStyle(
                    fontFamily: 'Montserra SemiBold',
                    color: Color.fromRGBO(20, 16, 41, 0.8),
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    height: 1.75,
                  ),
                ),
              ),
            ),
            SizedBox(width: 0.028.sw),
            Container(
              child: TextButton(
                onPressed: () {},
                child: AutoSizeText(
                  'Craft',
                  maxLines: 1,
                  style: TextStyle(
                    fontFamily: 'Montserra SemiBold',
                    color: Color.fromRGBO(20, 16, 41, 0.8),
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    height: 1.75,
                  ),
                ),
              ),
            ),
          ],
        ),
        Row(
          children: [
            SvgPicture.asset(
              'assets/svg_icons/twitter.svg',
            ),
            SizedBox(width: 0.028.sw),
            SvgPicture.asset(
              'assets/svg_icons/telegram.svg',
            ),
            SizedBox(width: 0.028.sw),
            SvgPicture.asset(
              'assets/svg_icons/discord.svg',
            ),
            SizedBox(width: 0.028.sw),
            SvgPicture.asset(
              'assets/svg_icons/medium.svg',
            ),
            SizedBox(width: 0.028.sw),
            Container(
              color: Color(0xff1d5be6),
              height: 48,
              width: 0.079.sw,
              child: Center(
                child: AutoSizeText(
                  'Buy packs',
                  style: TextStyle(
                    fontFamily: 'Montserra SemiBold',
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    height: 1.75,
                  ),
                ),
              ),
            ),
          ],
        )
      ],
    ),
  );
}
blackLine() {
  return Container(
    color: Color(0xff212429),
    width: 1.sw,
    height: 876.h,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Content1(),
        Container(
          width: 0.086.sw,
        ),
        Container(
          width: 0.3.sw,
          child: Image.asset('assets/images/image_2w.png'),
        ),
      ],
    ),
  );
}
Content1() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Container(
        width: 0.3.sw,
        child: AutoSizeText(
          "own part of the unique world on the blockchain",
          maxLines: 4,
          style: TextStyle(
              fontFamily: 'Thedus',
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 72,
              height: 0.78,
              letterSpacing: -2),
        ),
      ),
      Container(height: 72.h),
      Container(
        width: 0.3.sw,
        child: AutoSizeText(
          "5 continents divided into sectors allowing the player to receive income from all this",
          maxLines: 2,
          style: TextStyle(
            fontFamily: 'Montserra Medium',
            fontSize: 24,
            fontWeight: FontWeight.w500,
            height: 1.67,
            color: Color(0xffe0e0ff),
          ),
        ),
      ),
      Container(height: 48.h),
      Container(
        color: Color(0xff1d5be6),
        height: 72,
        width: 204,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Get started',
              style: TextStyle(
                  fontFamily: 'Montserra SemiBold',
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  height: 1.33,
                  letterSpacing: -0.4),
            ),
            SizedBox(width: 20.w),
            SvgPicture.asset(
              'assets/svg_icons/arrow-right.svg',
              color: Colors.white,
            )
          ],
        ),
      ),
    ],
  );
}
//
// _hi () {
//   Text(
//       'world',
//       maxLines: 4,
//       style: TextStyle(
//       fontFamily: 'Thedus',
//       color: Color(0xff1d5be6),
//       fontWeight: FontWeight.bold,
//       fontSize: 72,
//       height: 0.78,
//       letterSpacing: -2),
//   );
// }
