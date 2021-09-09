import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'dart:ui';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tokenlands/theme/color_theme.dart';
import 'package:tokenlands/theme/text_theme.dart';

int index = 1;

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
            backgroundColor: ColorPalette.card_l,
            leading: const Icon(
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
                  style: TextThemes.body_2.copyWith(
                    color: ColorPalette.primary,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Montserrat SemiBold',
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
                  RoadMap(),
                  howWork(),
                  gameplay(),
                  getReady(),
                  bottomPanel(),
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
    color: ColorPalette.bg_d_n,
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
                "own part of the"
                "\nunique world on"
                "\nthe blockchain",
                maxLines: 3,
                style:
                    TextThemes.hedline_3.copyWith(color: ColorPalette.white)),
          ),
          Container(
            height: 32.h,
          ),
          Container(
            width: 0.8.sw,
            child: AutoSizeText(
              "5 continents divided into sectors"
              "\nallowing the player to receive income"
              "\nfrom all this",
              maxLines: 3,
              style: TextStyle(
                fontFamily: 'Montserra Medium',
                fontSize: 14,
                fontWeight: FontWeight.w500,
                height: 1.71,
                color: ColorPalette.text_d_80,
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
    color: ColorPalette.card_l,
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
            style: TextThemes.hedline_9.copyWith(color: ColorPalette.primary),
          ),
        ),
        SizedBox(height: 12),
        Text(
            'start your'
            '\ncollection',
            maxLines: 2,
            style: TextThemes.hedline_2.copyWith(fontSize: 24)),
        SizedBox(height: 24),
        SingleChildScrollView(
          child: SizedBox(
            height: 540.h,
            child: GridView.count(
              crossAxisSpacing: 0,
              shrinkWrap: false,
              primary: false,
              //padding: EdgeInsets.only(left: 15.w, right: 15.w),
              mainAxisSpacing: 16.w,
              crossAxisCount: 2,
              children: <Widget>[
                Image.asset('assets/images/image_3t.png'),
                Image.asset('assets/images/image_4t.png'),
                Image.asset('assets/images/image_4t.png'),
                Image.asset('assets/images/image_3t.png'),
                Image.asset('assets/images/image_3t.png'),
                Image.asset('assets/images/image_4t.png'),
              ],
            ),
          ),
        ),
        //SizedBox(height: 24.h),
        Text(
          'TokenLands cards come in'
          '\n6 unique rarities',
          maxLines: 2,
          textAlign: TextAlign.center,
          style: TextThemes.body_2,
        ),
        SizedBox(height: 24.h),
        GestureDetector(
          child: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AutoSizeText(
                  'Start collection',
                  style: TextThemes.hedline_7.copyWith(
                    height: 1.75,
                    color: ColorPalette.primary,
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

switchWithString() {
  switch (index) {
    case 1:
      return Padding(
        padding: const EdgeInsets.only(left: 32),
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                color: ColorPalette.primary,
                child: SvgPicture.asset('assets/svg_icons/bolt.svg'),
              ),
              SizedBox(height: 32),
              Text(
                'Q1 2019',
                maxLines: 1,
                style: TextThemes.hedline_4.copyWith(
                    height: 1, fontFamily: 'SpaceMono Bold', fontSize: 36),
              ),
              SizedBox(height: 24),
              Text(
                'The second phase of the project'
                '\nintroduces basic gameplay to the'
                '\ninteractive map. All Cards involved'
                '\nin the TokenLands game are NFTs.',
                style: TextThemes.body_2,
              ),
            ],
          ),
        ),
      );
    case 2:
      return Padding(
        padding: const EdgeInsets.only(left: 32),
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                color: ColorPalette.primary,
                child: SvgPicture.asset('assets/svg_icons/pending.svg'),
              ),
              SizedBox(height: 32),
              Text(
                'Q2 2019',
                maxLines: 1,
                style: TextThemes.hedline_4.copyWith(
                    height: 1, fontFamily: 'SpaceMono Bold', fontSize: 36),
              ),
              SizedBox(height: 24),
              Text(
                'The second phase of the project \nintroduces basic gameplay to the \ninteractive map. All Cards involved \nin the TokenLands game are NFTs.',
                style: TextThemes.body_2,
              ),
            ],
          ),
        ),
      );

    case 3:
      return Padding(
        padding: const EdgeInsets.only(left: 32),
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                color: ColorPalette.primary,
                child: SvgPicture.asset('assets/svg_icons/feature.svg'),
              ),
              SizedBox(height: 32),
              Text(
                'Q3 2019',
                maxLines: 1,
                style: TextThemes.hedline_4.copyWith(
                    height: 1, fontFamily: 'SpaceMono Bold', fontSize: 36),
              ),
              SizedBox(height: 24),
              Text(
                'The second phase of the project \nintroduces basic gameplay to the \ninteractive map. All Cards involved \nin the TokenLands game are NFTs.',
                style: TextThemes.body_2,
              ),
            ],
          ),
        ),
      );

    case 4:
      return Padding(
        padding: const EdgeInsets.only(left: 32),
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                color: ColorPalette.primary,
                child: SvgPicture.asset('assets/svg_icons/view.svg'),
              ),
              SizedBox(height: 32),
              Text(
                'Q4 2019',
                maxLines: 1,
                style: TextThemes.hedline_4.copyWith(
                    height: 1, fontFamily: 'SpaceMono Bold', fontSize: 36),
              ),
              SizedBox(height: 24),
              Text(
                'The second phase of the project \nintroduces basic gameplay to the \ninteractive map. All Cards involved \nin the TokenLands game are NFTs.',
                style: TextThemes.body_2,
              ),
            ],
          ),
        ),
      );
    default:
      print('Number Not Found');
  }
}

class RoadMap extends StatefulWidget {
  const RoadMap({Key? key}) : super(key: key);

  @override
  _RoadMapState createState() => _RoadMapState();
}

class _RoadMapState extends State<RoadMap> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 128,
          width: 1.sw,
          color: ColorPalette.bg_l,
          child: Padding(
            padding: EdgeInsets.only(left: 32),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('roadmap',
                    style: TextThemes.hedline_9
                        .copyWith(color: ColorPalette.primary)),
                SizedBox(height: 12),
                Text(
                  'our ultimate vision',
                  style: TextThemes.hedline_2.copyWith(fontSize: 24),
                ),
              ],
            ),
          ),
        ),
        Container(
            height: 396,
            width: 1.sw,
            color: ColorPalette.card_l,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                switchWithString(),
                Padding(
                  padding: EdgeInsets.only(left: 32, right: 32),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            if (index == 3 || index == 2 || index == 4) {
                              index = index - 1;
                            } else if (index == 1) {
                              index = 4;
                            }
                          });
                        },
                        child: Container(
                          height: 48,
                          width: 48,
                          color: ColorPalette.text_l_2,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                'assets/svg_icons/arrow-left.svg',
                                color: ColorPalette.text_l_60,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            if (index == 3 || index == 2 || index == 1) {
                              index = index + 1;
                            } else if (index == 4) {
                              index = 1;
                            }
                          });
                        },
                        child: Container(
                          color: ColorPalette.text_l_2,
                          width: 111,
                          height: 48,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Next',
                                style: TextThemes.hedline_7,
                              ),
                              SizedBox(width: 12),
                              SvgPicture.asset(
                                'assets/svg_icons/arrow-right1.svg',
                                color: ColorPalette.text_l_60,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )),
        Container(
          height: 108,
          width: 1.sw,
          color: ColorPalette.bg_l,
          child: Row(
            //crossAxisAlignment: Cross,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                color: ColorPalette.primary,
                height: 8,
                width: 0.3.sw,
              ),
              Container(
                height: 48,
                width: 48,
                color: ColorPalette.secondary,
              ),
              Container(
                color: ColorPalette.primary,
                height: 8,
                width: 0.3.sw,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

howWork() {
  return Container(
    color: Color(0xfffafbfc),
    width: 1.sw,
    height: 380 + 360,
    child: Column(
      //crossAxisAlignment: Cross,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 32, top: 32),
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {},
                child: Container(
                  child: Text(
                    "how does it work?",
                    maxLines: 1,
                    style: TextThemes.hedline_9
                        .copyWith(color: ColorPalette.primary),
                  ),
                ),
              ),
              Container(
                height: 12,
              ),
              const Text(
                'OWN A PART'
                '\nOF THE COLONY',
                maxLines: 2,
                style: TextStyle(
                    fontFamily: 'Thedus',
                    color: Color.fromRGBO(20, 16, 41, 0.8),
                    fontWeight: FontWeight.bold,
                    fontSize: 36,
                    height: 0.67,
                    letterSpacing: -1),
              ),
              SizedBox(height: 24),
              Text(
                  "Ownership cards match 1:1 with a unique"
                  "\npiece of equipment or vehicle on our"
                  "\ncolony map. The more you own, the higher"
                  "\non the colony leaderboard you will rank."
                  "\nYou can find ownership cards inside of"
                  "\nsupply crates for Mission Two.",
                  maxLines: 6,
                  style: TextThemes.body_2),
              Container(height: 24),
              Container(
                child: GestureDetector(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('Open packs',
                          style: TextThemes.hedline_7
                              .copyWith(color: ColorPalette.primary)),
                      SizedBox(width: 12),
                      SvgPicture.asset('assets/svg_icons/arrow-right.svg')
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          width: 1.sw,
          child: Image.asset(
            'assets/images/image_5t.png',
            fit: BoxFit.fill,
          ),
        ),
      ],
    ),
  );
}

gameplay() {
  return Container(
    color: Color(0xfffafbfc),
    width: 1.sw,
    height: 380 + 360,
    child: Column(
      //crossAxisAlignment: Cross,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 32, top: 32),
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {},
                child: Container(
                  child: Text(
                    "gameplay",
                    maxLines: 1,
                    style: TextThemes.hedline_9
                        .copyWith(color: ColorPalette.primary),
                  ),
                ),
              ),
              Container(
                height: 12,
              ),
              const Text(
                '3 POSSIBLE CRAFTING'
                '\nOUTCOMES',
                maxLines: 2,
                style: TextStyle(
                    fontFamily: 'Thedus',
                    color: Color.fromRGBO(20, 16, 41, 0.8),
                    fontWeight: FontWeight.bold,
                    fontSize: 36,
                    height: 0.67,
                    letterSpacing: -1),
              ),
              SizedBox(height: 24),
              Text(
                  "There are 3 possible outcomes for"
                  "\neach crafting tier: A 79% chance of"
                  "\nsuccess, a 1% chance of critical"
                  "\nsuccess, and a 20% chance of failure."
                  "\nCritical success is where you receive"
                  "\n2 cards of the higher rarity.",
                  maxLines: 6,
                  style: TextThemes.body_2),
              Container(height: 24),
              Container(
                child: GestureDetector(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('Learn more',
                          style: TextThemes.hedline_7
                              .copyWith(color: ColorPalette.primary)),
                      SizedBox(width: 12),
                      SvgPicture.asset('assets/svg_icons/arrow-right.svg')
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          width: 1.sw,
          child: Image.asset(
            'assets/images/image_6t.png',
            fit: BoxFit.fill,
          ),
        ),
      ],
    ),
  );
}

getReady() {
  return Container(
    color: Color(0xfffafbfc),
    width: 1.sw,
    height: 380 + 360,
    child: Column(
      //crossAxisAlignment: Cross,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 32, top: 32),
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {},
                child: Container(
                  child: Text(
                    "get ready",
                    maxLines: 1,
                    style: TextThemes.hedline_9
                        .copyWith(color: ColorPalette.primary),
                  ),
                ),
              ),
              Container(
                height: 12,
              ),
              const Text(
                'PURCHASE SUPPLY'
                '\nCRATES',
                maxLines: 2,
                style: TextStyle(
                    fontFamily: 'Thedus',
                    color: Color.fromRGBO(20, 16, 41, 0.8),
                    fontWeight: FontWeight.bold,
                    fontSize: 36,
                    height: 0.67,
                    letterSpacing: -1),
              ),
              SizedBox(height: 24),
              Text(
                  "TSupply crates are NFT packs and"
                  "\ncontain digital trading cards. Cards"
                  "\nfeature different vehicles, equipment,"
                  "\nuildings, and astronauts that are\n"
                  "needed for the colony.",
                  maxLines: 6,
                  style: TextThemes.body_2),
              Container(height: 24),
              Container(
                child: GestureDetector(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('Try now',
                          style: TextThemes.hedline_7
                              .copyWith(color: ColorPalette.primary)),
                      SizedBox(width: 12),
                      SvgPicture.asset('assets/svg_icons/arrow-right.svg')
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          width: 1.sw,
          child: Image.asset(
            'assets/images/image_7t.png',
            fit: BoxFit.fill,
          ),
        ),
      ],
    ),
  );
}

bottomPanel() {
  return Container(
    color: Color(0xfff5f7fa),
    width: 1.sw,
    height: 360,
    child: Padding(
      padding: const EdgeInsets.only(left: 32, right: 24),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () {},
            child:
                SvgPicture.asset('assets/svg_icons/token-lands-horizontal.svg'),
          ),
          SizedBox(height: 18),
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
            height: 36,
          ),
          GestureDetector(
            onTap: () {},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'LEARN',
                  style: TextStyle(
                    fontFamily: 'Montserra SemiBold',
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    height: 1.71,
                    letterSpacing: 1,
                    color: Color.fromRGBO(20, 16, 41, 0.8),
                  ),
                ),
                SvgPicture.asset('assets/svg_icons/plus.svg'),
              ],
            ),
          ),
          SizedBox(
            height: 24,
          ),
          GestureDetector(
            onTap: () {},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'FOLLOW',
                  style: TextStyle(
                    fontFamily: 'Montserra SemiBold',
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    height: 1.71,
                    letterSpacing: 1,
                    color: Color.fromRGBO(20, 16, 41, 0.8),
                  ),
                ),
                SvgPicture.asset('assets/svg_icons/plus.svg'),
              ],
            ),
          ),
          SizedBox(
            height: 36,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '© 2021 TokenLands',
                style: TextStyle(
                  fontFamily: 'Montserra Medium',
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                  height: 1.23,
                  color: Color.fromRGBO(20, 16, 41, 0.6),
                ),
              ),
              Text(
                'made by roobinium.io',
                style: TextStyle(
                  fontFamily: 'Montserra Medium',
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                  height: 1.23,
                  color: Color.fromRGBO(20, 16, 41, 0.6),
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}
