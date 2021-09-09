import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'dart:ui';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:timelines/timelines.dart';
import 'package:tokenlands/theme/color_theme.dart';
import 'package:tokenlands/theme/text_theme.dart';

int index = 1;

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(1680, 1050), //width, height
      builder: () => MaterialApp(
        home: Scaffold(
          body: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  topPanel(),
                  info(),
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

topPanel() {
  return Container(
    color: ColorPalette.card_l,
    width: 1.sw,
    height: 0.09.sh,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Row(
          children: [
            Container(
              // width: 0.12.sw,
              child: SvgPicture.asset(
                'assets/svg_icons/token-lands-horizontal.svg',
              ),
            ),
            SizedBox(width: 0.028.sw),
            if (window.physicalSize.width >= 768)
              Row(
                children: [
                  Container(
                    // width: 0.048.sw,
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'Gameplay',
                        style: TextThemes.hedline_6,
                      ),
                    ),
                  ),
                  SizedBox(width: 0.028.sw),
                  Container(
                    // width: 0.0589.sw,
                    child: TextButton(
                      onPressed: () {},
                      child: AutoSizeText(
                        'Collection',
                        maxLines: 1,
                        style: TextThemes.hedline_6,
                      ),
                    ),
                  ),
                  SizedBox(width: 0.028.sw),
                  Container(
                    // width: 0.024.sw,
                    child: TextButton(
                      onPressed: () {},
                      child: AutoSizeText(
                        'Roadmap',
                        maxLines: 1,
                        style: TextThemes.hedline_6,
                      ),
                    ),
                  ),
                ],
              ),
          ],
        ),
        Row(
          children: [
            if (window.physicalSize.width >= 1280)
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
                  //todo add telegram icon
                  SvgPicture.asset(
                    'assets/svg_icons/instagram7.svg',
                  ),
                  SizedBox(width: 0.028.sw),
                  SvgPicture.asset(
                    'assets/svg_icons/discord.svg',
                  ),
                  SizedBox(width: 0.028.sw),
                  SvgPicture.asset(
                    'assets/svg_icons/medium.svg',
                  ),
                ],
              ),
            SizedBox(width: 0.028.sw),
            Container(
              color: ColorPalette.primary,
              // height: 48.h,
              // width: 0.079.w,
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 24, top: 10, right: 24, bottom: 10),
                child: Text(
                  'Buy packs',
                  style: TextThemes.button_1,
                ),
              ),
            ),
          ],
        )
      ],
    ),
  );
}

info() {
  return Container(
    color: ColorPalette.bg_d_n,
    width: 1.sw,
    height: 0.91.sh,
    child: Stack(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(
              left: 0.10.sw, top: 0.1.sh, right: 0.1.sw, bottom: 0.1.sh),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Content1(),
              Container(
                // width: 0.319.sw,
                child: Image.asset('assets/images/image_2w.png'),
              ),
            ],
          ),
        ),
        Positioned(
          top: 0.46.sh,
          left: 0.25.sw,
          child: Container(
            // height: 0.26.sh,
            // width: 0.12.sw,
            child: Image.asset('assets/images/image_1t.png'),
          ),
        ),
        Positioned(
          top: 0.37.sh,
          left: 0.44.sw,
          child: Container(
            // height: 0.26.sh,
            // width: 0.12.sw,
            child: Image.asset('assets/images/image_3w.png'),
          ),
        ),
      ],
    ),
  );
}

Content1() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      /// WORLD bly text and autoSize
      Container(
        height: 0.21.sh,
        width: 0.4.sw,
        child: AutoSizeText(
          "ECONOMICAL \nNFT GAME \nBASED ON \nBLOCKCHAIN WAX",
          style: TextThemes.hedline_0.copyWith(color: ColorPalette.white),
          //todo check spacing
          maxLines: 5,
        ),
      ),
      Container(height: 0.07.sh),
      Container(
        height: 0.07.sh,
        child: AutoSizeText(
          "The struggle of five continents \nfor economic and military superiority",
          maxLines: 2,
          style: TextThemes.subhead_1.copyWith(color: ColorPalette.text_d_60),
        ),
      ),
      Container(height: 0.03.sh),
      Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            color: Color(0xff1d5be6),
            child: Padding(
              padding: EdgeInsets.only(
                  left: 0.02.sw, top: 0.02.sh, right: 0.02.sw, bottom: 0.02.sh),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                //crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  AutoSizeText(
                    'Learn More',
                    style: TextThemes.button_2,
                  ),
                  SizedBox(width: 0.0120.sw),
                  Container(
                    child: SvgPicture.asset(
                      'assets/svg_icons/arrow-right.svg',
                      color: ColorPalette.white,
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    ],
  );
}

collection() {
  return Container(
    color: ColorPalette.card_l,
    width: 1.sw,
    height: 664.h,
    child: Column(
      // crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextButton(
          onPressed: () {},
          child: Text('Invest in world',
              style:
                  TextThemes.caption_3.copyWith(color: ColorPalette.primary)),
        ),
        SizedBox(height: 20),
        Text('Token Lands collection', style: TextThemes.hedline_2),
        SizedBox(height: 48),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                width: 0.119.sw,
                child: Image.asset('assets/images/image_3w.png')),
            Container(
                width: 0.119.sw,
                child: Image.asset('assets/images/image_4w.png')),
            Container(
                width: 0.119.sw,
                child: Image.asset('assets/images/image_3w.png')),
            Container(
                width: 0.119.sw,
                child: Image.asset('assets/images/image_4w.png')),
            Container(
                width: 0.119.sw,
                child: Image.asset('assets/images/image_3w.png')),
            Container(
                width: 0.119.sw,
                child: Image.asset('assets/images/image_3w.png')),
          ],
        ),
        SizedBox(height: 48),
        Text(
          'Unique collection of NFT cards',
          style: TextThemes.body_1,
        ),
        SizedBox(height: 24),
        GestureDetector(
          child: Container(
            //width: 0.0964.sw,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AutoSizeText(
                  //todo авторазворачивание по нажатию
                  'All collection',
                  style: TextThemes.button_1.copyWith(
                    color: ColorPalette.primary,
                  ),
                ),
                SizedBox(width: 12),
                SvgPicture.asset('assets/svg_icons/arrow-right.svg'),
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
        padding: const EdgeInsets.only(top: 40, left: 40),
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                color: ColorPalette.primary,
                child: SvgPicture.asset('assets/svg_icons/bolt.svg'),
              ),
              SizedBox(height: 30),
              Text(
                'Q1 2019',
                maxLines: 1,
                style: TextThemes.hedline_4
                    .copyWith(height: 1.33, fontFamily: 'SpaceMono Bold'),
              ),
              SizedBox(height: 15),
              Text(
                'The second phase of the project \nintroduces basic gameplay to the \ninteractive map. All Cards involved \nin the TokenLands game are NFTs.',
                style: TextThemes.body_2,
              ),
            ],
          ),
        ),
      );
    case 2:
      return Padding(
        padding: const EdgeInsets.only(top: 40, left: 40),
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                color: ColorPalette.primary,
                child: SvgPicture.asset('assets/svg_icons/pending.svg'),
              ),
              SizedBox(height: 30),
              Text(
                'Q2 2019',
                maxLines: 1,
                style: TextThemes.hedline_4
                    .copyWith(height: 1.33, fontFamily: 'SpaceMono Bold'),
              ),
              SizedBox(height: 15),
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
        padding: const EdgeInsets.only(top: 40, left: 40),
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                color: ColorPalette.primary,
                child: SvgPicture.asset('assets/svg_icons/feature.svg'),
              ),
              SizedBox(height: 30),
              Text(
                'Q3 2019',
                maxLines: 1,
                style: TextThemes.hedline_4
                    .copyWith(height: 1.33, fontFamily: 'SpaceMono Bold'),
              ),
              SizedBox(height: 15),
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
        padding: const EdgeInsets.only(top: 40, left: 40),
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                color: ColorPalette.primary,
                child: SvgPicture.asset('assets/svg_icons/view.svg'),
              ),
              SizedBox(height: 30),
              Text(
                'Q4 2019',
                maxLines: 1,
                style: TextThemes.hedline_4
                    .copyWith(height: 1.33, fontFamily: 'SpaceMono Bold'),
              ),
              SizedBox(height: 15),
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
    return Container(
      color: ColorPalette.bg_l,
      width: 1.sw,
      height: 650,
      child: Column(
        //crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 0.11.sw),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    child: Text(
                      "roadmap",
                      maxLines: 1,
                      style: TextThemes.hedline_9
                          .copyWith(color: ColorPalette.primary),
                    ),
                  ),
                ),
                Container(
                  height: 20.h,
                ),
                Container(
                  width: 0.167.sw,
                  child: AutoSizeText('our ultimate \nvision',
                      maxLines: 2, style: TextThemes.hedline_2),
                ),
              ],
            ),
          ),
          Container(
            color: ColorPalette.white,
            width: 350,
            height: 400,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              //mainAxisAlignment: MainAxisAlignment.start,
              children: [
                switchWithString(),
                Expanded(child: Container()),
                Padding(
                  padding: const EdgeInsets.all(20.0),
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
                            ;
                          });
                        },
                        child: Container(
                          color: ColorPalette.text_l_2,
                          width: 115,
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
            ),
          ),
          SizedBox(
            height: 20,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              //crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  color: ColorPalette.primary,
                  width: 0.1357.sw,
                  height: 5,
                ),
                Padding(
                  padding: index == 1
                      ? EdgeInsets.only(bottom: 8)
                      : EdgeInsets.only(bottom: 30),
                  child: Column(
                    //crossAxisAlignment: CrossAxisAlignment.start,

                    children: [
                      index == 1
                          ? Container()
                          : Container(
                              // width: ,
                              child: AutoSizeText(
                                'Q1 2019',
                                maxLines: 1,
                                style: TextThemes.hedline_4.copyWith(
                                    height: 1.33, fontFamily: 'SpaceMono Bold'),
                              ),
                            ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        color: index == 1
                            ? ColorPalette.secondary
                            : ColorPalette.primary,
                        child: IconButton(
                          color: ColorPalette.primary,
                          onPressed: () {
                            setState(() {
                              index = 1;
                            });
                          },
                          icon: index == 1
                              ? Container()
                              : SvgPicture.asset('assets/svg_icons/bolt.svg'),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  color: ColorPalette.primary,
                  width: 0.1357.sw,
                  height: 5,
                ),
                Padding(
                  padding: index == 2
                      ? EdgeInsets.only(bottom: 8)
                      : EdgeInsets.only(bottom: 30),
                  child: Column(
                    children: [
                      index == 2
                          ? Container()
                          : Container(
                              child: Text(
                                'Q2 2019',
                                maxLines: 1,
                                style: TextThemes.hedline_4.copyWith(
                                    height: 1.33, fontFamily: 'SpaceMono Bold'),
                              ),
                            ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        color: index == 2
                            ? ColorPalette.secondary
                            : ColorPalette.primary,
                        child: IconButton(
                          color: ColorPalette.primary,
                          onPressed: () {
                            setState(() {
                              index = 2;
                            });
                          },
                          icon: index == 2
                              ? Container()
                              : SvgPicture.asset(
                                  'assets/svg_icons/pending.svg'),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  color: ColorPalette.primary,
                  width: 0.1357.sw,
                  height: 5,
                ),
                Padding(
                  padding: index == 3
                      ? EdgeInsets.only(bottom: 8)
                      : EdgeInsets.only(bottom: 30),
                  child: Column(
                    children: [
                      index == 3
                          ? Container()
                          : Container(
                              child: Text(
                                'Q3 2019',
                                maxLines: 1,
                                style: TextThemes.hedline_4.copyWith(
                                    height: 1.33, fontFamily: 'SpaceMono Bold'),
                              ),
                            ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        color: index == 3
                            ? ColorPalette.secondary
                            : ColorPalette.primary,
                        child: IconButton(
                          color: ColorPalette.primary,
                          onPressed: () {
                            setState(() {
                              index = 3;
                            });
                          },
                          icon: index == 3
                              ? Container()
                              : SvgPicture.asset(
                                  'assets/svg_icons/feature.svg'),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  color: ColorPalette.primary,
                  width: 0.1357.sw,
                  height: 5,
                ),
                Padding(
                  padding: index == 4
                      ? EdgeInsets.only(bottom: 8)
                      : EdgeInsets.only(bottom: 30),
                  child: Column(
                    children: [
                      index == 4
                          ? Container()
                          : Container(
                              child: Text(
                                'Q4 2019',
                                maxLines: 1,
                                style: TextThemes.hedline_4.copyWith(
                                    height: 1.33, fontFamily: 'SpaceMono Bold'),
                              ),
                            ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        color: index == 4
                            ? ColorPalette.secondary
                            : ColorPalette.primary,
                        child: IconButton(
                          color: ColorPalette.primary,
                          onPressed: () {
                            setState(() {
                              index = 4;
                            });
                          },
                          icon: index == 4
                              ? Container()
                              : SvgPicture.asset('assets/svg_icons/view.svg'),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  color: ColorPalette.primary,
                  width: 0.1357.sw,
                  height: 5,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

howWork() {
  return Container(
    color: ColorPalette.card_l,
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
                  style: TextThemes.hedline_9
                      .copyWith(color: ColorPalette.primary),
                ),
              ),
            ),
            Container(
              height: 20.h,
            ),
            Container(
              width: 0.167.sw,
              child: AutoSizeText('OWN A PART \nOF THE COLONY',
                  maxLines: 2, style: TextThemes.hedline_2),
            ),
            Container(height: 32.h),
            Container(
              width: 0.1857.sw,
              child: AutoSizeText(
                  "Ownership cards match 1:1 with a unique piece of equipment or vehicle on our colony map. The more you own, the higher on the colony leaderboard you will rank. You can find ownership cards inside of supply crates for Mission Two.",
                  maxLines: 7,
                  style: TextThemes.body_1),
            ),
            Container(height: 24.h),
            GestureDetector(
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Open packs',
                        style: TextThemes.button_1
                            .copyWith(color: ColorPalette.primary)),
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
    color: ColorPalette.bg_l,
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
                child: Text("gameplay",
                    style: TextThemes.hedline_9
                        .copyWith(color: ColorPalette.primary)),
              ),
            ),
            Container(
              height: 20.h,
            ),
            Container(
              width: 0.1857.sw,
              child: AutoSizeText(
                '3 POSSIBLE \nCRAFTING\nOUTCOMES',
                maxLines: 3,
                style: TextThemes.hedline_2,
              ),
            ),
            Container(height: 32.h),
            Container(
              width: 0.1857.sw,
              child: AutoSizeText(
                "There are 3 possible outcomes for each crafting tier: A 79% chance of success, a 1% chance of critical success, and a 20% chance of failure. Critical success is where you receive 2 cards of the higher rarity.",
                maxLines: 6,
                style: TextThemes.body_1,
              ),
            ),
            Container(height: 24.h),
            GestureDetector(
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Learn more',
                        style: TextThemes.button_1
                            .copyWith(color: ColorPalette.primary)),
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
    color: ColorPalette.card_l,
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
                child: Text("get ready",
                    maxLines: 1,
                    style: TextThemes.hedline_9
                        .copyWith(color: ColorPalette.primary)),
              ),
            ),
            Container(
              height: 20.h,
            ),
            Container(
              width: 0.167.sw,
              child: AutoSizeText(
                'PURCHASE \nSUPPLY CRATES',
                maxLines: 2,
                style: TextThemes.hedline_2,
              ),
            ),
            Container(height: 32.h),
            Container(
              width: 0.1857.sw,
              child: AutoSizeText(
                  "Supply crates are NFT packs and contain digital trading cards. Cards feature different vehicles, equipment, buildings, and astronauts that are needed for the colony.",
                  maxLines: 5,
                  style: TextThemes.body_1),
            ),
            Container(height: 24.h),
            GestureDetector(
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Try now',
                      style: TextThemes.button_1.copyWith(
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
      ],
    ),
  );
}

bottomPanel() {
  return Container(
    color: ColorPalette.bg_l,
    width: 1.sw,
    height: 244.h,
    child: Row(
      //crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(width: 0.1.sw),
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
                  Text('English (United States)', style: TextThemes.body_2),
                ],
              ),
            ),
            SizedBox(
              height: 4,
            ),
            Text('made by roobinium.io', style: TextThemes.body_2),
            SizedBox(
              height: 4,
            ),
            Text('© 2021 TokenLands', style: TextThemes.body_2),
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
                style: TextThemes.caption_3,
              ),
            ),
            SizedBox(height: 22),
            TextButton(
              onPressed: () {},
              child: Text(
                'Roadmap',
                style: TextThemes.body_2,
              ),
            ),
            SizedBox(height: 4),
            TextButton(
              onPressed: () {},
              child: Text(
                'Open packs',
                style: TextThemes.body_2,
              ),
            ),
            SizedBox(
              height: 4,
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                'Craft',
                style: TextThemes.body_2,
              ),
            ),
          ],
        ),
        SizedBox(
          width: 0.081.sw,
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
                style: TextThemes.caption_3,
              ),
            ),
            SizedBox(height: 22),
            TextButton(
              onPressed: () {},
              child: Text(
                'Twitter',
                style: TextThemes.body_2,
              ),
            ),
            SizedBox(height: 4),
            TextButton(
              onPressed: () {},
              child: Text(
                'Telegram',
                style: TextThemes.body_2,
              ),
            ),
            SizedBox(
              height: 4,
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                'Discord',
                style: TextThemes.body_2,
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                'Medium',
                style: TextThemes.body_2,
              ),
            ),
          ],
        ),
        SizedBox(width: 0.1.sw),
      ],
    ),
  );
}
