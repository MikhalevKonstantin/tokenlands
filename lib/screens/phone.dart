import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'dart:ui';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:timelines/timelines.dart';

class Phone extends StatefulWidget {
  const Phone({Key? key}) : super(key: key);

  @override
  _PhoneState createState() => _PhoneState();
}

class _PhoneState extends State<Phone> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(360, 640),
      builder: () => MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0xffebeff5),
            leading: Icon(
              Icons.menu,
              color: Colors.black,
            ),
            centerTitle: true,
            title: SvgPicture.asset(
              'assets/svg_icons/token-lands-mark.svg',
              height: 24,
            ),
            actions: [
              TextButton(
                onPressed: () {},
                child: Text(
                  'Buy packs',
                  style: TextStyle(
                    fontFamily: 'Montserra SemiBold',
                    color: Color(0xff1d5be6),
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    height: 1.71,
                  ),
                ),
              ),
            ],
          ),
          body: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  info(),
                  Container(
                    height: 360,
                    width: 1.sw,
                    child: Image.asset(
                      'assets/images/image_2t.png',
                      fit: BoxFit.fill,
                    ),
                  ),
                  collection(),
                  roadmap(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

info() {
  return Container(
    color: Color(0xff212429),
    width: 1.sw,
    height: 312.h,
    child: Padding(
      padding: EdgeInsets.only(left: 32.w, right: 32.w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        //crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 0.8.sw,
            child: AutoSizeText(
              "own part of the unique world on the blockchain",
              maxLines: 3,
              style: TextStyle(
                  fontFamily: 'Thedus',
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  height: 0.8,
                  letterSpacing: -1),
            ),
          ),
          Container(
            height: 32.h,
          ),
          Container(
            width: 0.8.sw,
            child: AutoSizeText(
              "5 continents divided into sectors allowing the player to receive income from all this",
              maxLines: 3,
              style: TextStyle(
                fontFamily: 'Montserra Medium',
                fontSize: 14,
                fontWeight: FontWeight.w500,
                height: 1.71,
                color: Color(0xffe0e0ff),
              ),
            ),
          ),
          Container(
            height: 24.h,
          ),
          Container(
            color: Color(0xff1d5be6),
            height: 48.h,
            width: 165.w,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              //crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Get started',
                  style: TextStyle(
                    fontFamily: 'Montserra SemiBold',
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    height: 1.75,
                  ),
                ),
                SizedBox(width: 12.w),
                SvgPicture.asset(
                  'assets/svg_icons/arrow-right.svg',
                  color: Colors.white,
                )
              ],
            ),
          )
        ],
      ),
    ),
  );
}

collection() {
  return Container(
    color: Color(0xfffafbfc),
    width: 1.sw,
    height: 800.h,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextButton(
          onPressed: () {},
          child: Text(
            'brave new world',
            style: TextStyle(
              fontFamily: 'Montserra SemiBold',
              color: Color(0xff1d5be6),
              fontSize: 16,
              fontWeight: FontWeight.w600,
              height: 1.23,
            ),
          ),
        ),
        SizedBox(height: 12),
        Text(
          'start your',
          maxLines: 1,
          style: TextStyle(
            fontFamily: 'Thedus',
            color: Color.fromRGBO(20, 16, 41, 0.8),
            fontWeight: FontWeight.bold,
            fontSize: 24,
            height: 0.67,
            letterSpacing: -1,
          ),
        ),
        Text(
          'collection',
          maxLines: 1,
          style: TextStyle(
            fontFamily: 'Thedus',
            color: Color.fromRGBO(20, 16, 41, 0.8),
            fontWeight: FontWeight.bold,
            fontSize: 24,
            height: 0.67,
            letterSpacing: -1,
          ),
        ),
        SizedBox(height: 24),
        SingleChildScrollView(
          child: SizedBox(
            height: 500.h,
            child: GridView.count(
              shrinkWrap: false,
              primary: false,
              padding: EdgeInsets.only(left: 15.w, right: 15.w),
              mainAxisSpacing: 16.w,
              crossAxisCount: 2,
              children: <Widget>[
                Container(
                    width: 0.38.sw,
                    child: Image.asset('assets/images/image_3t.png')),
                Container(
                    width: 0.38.sw,
                    child: Image.asset('assets/images/image_4t.png')),
                Container(
                    width: 0.38.sw,
                    child: Image.asset('assets/images/image_4t.png')),
                Container(
                    width: 0.38.sw,
                    child: Image.asset('assets/images/image_3t.png')),
                Container(
                    width: 0.38.sw,
                    child: Image.asset('assets/images/image_3t.png')),
                Container(
                    width: 0.38.sw,
                    child: Image.asset('assets/images/image_4t.png')),
              ],
            ),
          ),
        ),
        //SizedBox(height: 24.h),
        Text(
          'TokenLands cards come in',
          maxLines: 1,
          style: TextStyle(
            fontFamily: 'Montserra Medium',
            fontSize: 14,
            fontWeight: FontWeight.w500,
            height: 1.71,
            color: Color(0xff141029),
          ),
        ),
        Text(
          '6 unique rarities',
          maxLines: 1,
          style: TextStyle(
            fontFamily: 'Montserra Medium',
            fontSize: 14,
            fontWeight: FontWeight.w500,
            height: 1.71,
            color: Color(0xff141029),
          ),
        ),
        SizedBox(height: 24.h),
        GestureDetector(
          child: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AutoSizeText(
                  'Start collection',
                  style: TextStyle(
                    fontFamily: 'Montserra SemiBold',
                    color: Color(0xff1d5be6),
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    height: 1.75,
                  ),
                ),
                SizedBox(width: 12),
                SvgPicture.asset('assets/svg_icons/arrow-right.svg')
              ],
            ),
          ),
        ),
      ],
    ),
  );
}

roadmap() {
  return Container(
    color: Color(0xfff5f7fa),
    width: 1.sw,
    height: 640.h,
    child: Row(
      children: [
        ContainerIndicator(
          child: Container(
            width: 15.0,
            height: 15.0,
            color: Colors.blue,
          ),
        ),
      ],
    ),
  );
}

howWork() {
  return Container(
    color: Color(0xfffafbfc),
    width: 1.sw,
    height: 580.h,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 0.519.sw,
          child: Image.asset('assets/images/image_5w.png'),
        ),
        Container(
          width: 0.08.sw,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {},
              child: Container(
                child: Text(
                  "how does it work?",
                  maxLines: 1,
                  style: TextStyle(
                    fontFamily: 'Montserra SemiBold',
                    color: Color(0xff1d5be6),
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                    height: 1.23,
                  ),
                ),
              ),
            ),
            Container(
              height: 20.h,
            ),
            Container(
              width: 0.167.sw,
              child: AutoSizeText(
                'OWN A PART OF THE COLONY',
                maxLines: 2,
                style: TextStyle(
                    fontFamily: 'Thedus',
                    color: Color.fromRGBO(20, 16, 41, 0.8),
                    fontWeight: FontWeight.bold,
                    fontSize: 36,
                    height: 0.67,
                    letterSpacing: -1),
              ),
            ),
            Container(height: 32.h),
            Container(
              width: 0.1857.sw,
              child: AutoSizeText(
                "Ownership cards match 1:1 with a unique piece of equipment or vehicle on our colony map. The more you own, the higher on the colony leaderboard you will rank. You can find ownership cards inside of supply crates for Mission Two.",
                maxLines: 7,
                style: TextStyle(
                  fontFamily: 'Montserra Medium',
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  height: 1.75,
                  color: Color(0xff141029),
                ),
              ),
            ),
            Container(height: 24.h),
            GestureDetector(
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Open packs',
                      style: TextStyle(
                        fontFamily: 'Montserra SemiBold',
                        color: Color(0xff1d5be6),
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        height: 1.75,
                      ),
                    ),
                    SizedBox(width: 12),
                    SvgPicture.asset('assets/svg_icons/arrow-right.svg')
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    ),
  );
}

gameplay() {
  return Container(
    color: Color(0xfff5f7fa),
    width: 1.sw,
    height: 580.h,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {},
              child: Container(
                child: Text(
                  "gameplay",
                  style: TextStyle(
                    fontFamily: 'Montserra SemiBold',
                    color: Color(0xff1d5be6),
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                    height: 1.23,
                  ),
                ),
              ),
            ),
            Container(
              height: 20.h,
            ),
            Container(
              width: 0.1857.sw,
              child: AutoSizeText(
                '3 POSSIBLE CRAFTING OUTCOMES',
                maxLines: 3,
                style: TextStyle(
                    fontFamily: 'Thedus',
                    color: Color.fromRGBO(20, 16, 41, 0.8),
                    fontWeight: FontWeight.bold,
                    fontSize: 36,
                    height: 0.67,
                    letterSpacing: -1),
              ),
            ),
            Container(height: 32.h),
            Container(
              width: 0.1857.sw,
              child: AutoSizeText(
                "There are 3 possible outcomes for each crafting tier: A 79% chance of success, a 1% chance of critical success, and a 20% chance of failure. Critical success is where you receive 2 cards of the higher rarity.",
                maxLines: 6,
                style: TextStyle(
                  fontFamily: 'Montserra Medium',
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  height: 1.75,
                  color: Color(0xff141029),
                ),
              ),
            ),
            Container(height: 24.h),
            GestureDetector(
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Learn more',
                      style: TextStyle(
                        fontFamily: 'Montserra SemiBold',
                        color: Color(0xff1d5be6),
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        height: 1.75,
                      ),
                    ),
                    SizedBox(width: 12),
                    SvgPicture.asset('assets/svg_icons/arrow-right.svg')
                  ],
                ),
              ),
            ),
          ],
        ),
        Container(
          width: 0.08.sw,
        ),
        Container(
          width: 0.519.sw,
          child: Image.asset('assets/images/image_6w.png'),
        ),
      ],
    ),
  );
}

getReady() {
  return Container(
    color: Color(0xfffafbfc),
    width: 1.sw,
    height: 580.h,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 0.519.sw,
          child: Image.asset('assets/images/image_7w.png'),
        ),
        Container(
          width: 0.08.sw,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {},
              child: Container(
                child: Text(
                  "get ready",
                  maxLines: 1,
                  style: TextStyle(
                    fontFamily: 'Montserra SemiBold',
                    color: Color(0xff1d5be6),
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                    height: 1.23,
                  ),
                ),
              ),
            ),
            Container(
              height: 20.h,
            ),
            Container(
              width: 0.167.sw,
              child: AutoSizeText(
                'PURCHASE SUPPLY CRATES',
                maxLines: 2,
                style: TextStyle(
                    fontFamily: 'Thedus',
                    color: Color.fromRGBO(20, 16, 41, 0.8),
                    fontWeight: FontWeight.bold,
                    fontSize: 36,
                    height: 0.67,
                    letterSpacing: -1),
              ),
            ),
            Container(height: 32.h),
            Container(
              width: 0.1857.sw,
              child: AutoSizeText(
                "Supply crates are NFT packs and contain digital trading cards. Cards feature different vehicles, equipment, buildings, and astronauts that are needed for the colony.",
                maxLines: 5,
                style: TextStyle(
                  fontFamily: 'Montserra Medium',
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  height: 1.75,
                  color: Color(0xff141029),
                ),
              ),
            ),
            Container(height: 24.h),
            GestureDetector(
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Try now',
                      style: TextStyle(
                        fontFamily: 'Montserra SemiBold',
                        color: Color(0xff1d5be6),
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        height: 1.75,
                      ),
                    ),
                    SizedBox(width: 12),
                    SvgPicture.asset('assets/svg_icons/arrow-right.svg')
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    ),
  );
}

bottomPanel() {
  return Container(
    color: Color(0xfff5f7fa),
    width: 1.sw,
    height: 244.h,
    child: Row(
      //crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(width: 180),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {},
              child: SvgPicture.asset(
                  'assets/svg_icons/token-lands-horizontal.svg'),
            ),
            SizedBox(height: 28),
            GestureDetector(
              onTap: () {},
              child: Row(
                children: [
                  SvgPicture.asset('assets/svg_icons/message.svg'),
                  Text(
                    'English (United States)',
                    style: TextStyle(
                      fontFamily: 'Montserra Medium',
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      height: 1.71,
                      color: Color.fromRGBO(20, 16, 41, 0.6),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 4,
            ),
            Text(
              'made by roobinium.io',
              style: TextStyle(
                fontFamily: 'Montserra Medium',
                fontSize: 14,
                fontWeight: FontWeight.w500,
                height: 1.71,
                color: Color.fromRGBO(20, 16, 41, 0.6),
              ),
            ),
            SizedBox(
              height: 4,
            ),
            Text(
              '© 2021 TokenLands',
              style: TextStyle(
                fontFamily: 'Montserra Medium',
                fontSize: 14,
                fontWeight: FontWeight.w500,
                height: 1.71,
                color: Color.fromRGBO(20, 16, 41, 0.6),
              ),
            ),
          ],
        ),
        Expanded(
          child: Container(),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {},
              child: Text(
                'LEARN',
                style: TextStyle(
                  fontFamily: 'Montserra SemiBold',
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                  height: 1.23,
                  letterSpacing: 1,
                  color: Color.fromRGBO(20, 16, 41, 0.8),
                ),
              ),
            ),
            SizedBox(height: 22),
            TextButton(
              onPressed: () {},
              child: Text(
                'Roadmap',
                style: TextStyle(
                  fontFamily: 'Montserra Medium',
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  height: 1.71,
                  color: Color.fromRGBO(20, 16, 41, 0.6),
                ),
              ),
            ),
            SizedBox(height: 4),
            TextButton(
              onPressed: () {},
              child: Text(
                'Open packs',
                style: TextStyle(
                  fontFamily: 'Montserra Medium',
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  height: 1.71,
                  color: Color.fromRGBO(20, 16, 41, 0.6),
                ),
              ),
            ),
            SizedBox(
              height: 4,
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                'Craft',
                style: TextStyle(
                  fontFamily: 'Montserra Medium',
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  height: 1.71,
                  color: Color.fromRGBO(20, 16, 41, 0.6),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          width: 136,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 22,
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                'FOLLOW',
                style: TextStyle(
                  fontFamily: 'Montserra SemiBold',
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                  height: 1.23,
                  letterSpacing: 1,
                  color: Color.fromRGBO(20, 16, 41, 0.8),
                ),
              ),
            ),
            SizedBox(height: 22),
            TextButton(
              onPressed: () {},
              child: Text(
                'Twitter',
                style: TextStyle(
                  fontFamily: 'Montserra Medium',
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  height: 1.71,
                  color: Color.fromRGBO(20, 16, 41, 0.6),
                ),
              ),
            ),
            SizedBox(height: 4),
            TextButton(
              onPressed: () {},
              child: Text(
                'Telegram',
                style: TextStyle(
                  fontFamily: 'Montserra Medium',
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  height: 1.71,
                  color: Color.fromRGBO(20, 16, 41, 0.6),
                ),
              ),
            ),
            SizedBox(
              height: 4,
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                'Discord',
                style: TextStyle(
                  fontFamily: 'Montserra Medium',
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  height: 1.71,
                  color: Color.fromRGBO(20, 16, 41, 0.6),
                ),
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                'Medium',
                style: TextStyle(
                  fontFamily: 'Montserra Medium',
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  height: 1.71,
                  color: Color.fromRGBO(20, 16, 41, 0.6),
                ),
              ),
            ),
          ],
        ),
        SizedBox(width: 180),
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
