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
import 'package:scroll_to_index/scroll_to_index.dart';

int index = 1;

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final controller = AutoScrollController();

  Future _scrollToIndex(index) async {
    await controller.scrollToIndex(index,
        preferPosition: AutoScrollPosition.begin);
    controller.highlight(index);
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(1680, 1050), //width, height
      builder: () => MaterialApp(
        home: Scaffold(
          body: SafeArea(
            child: SingleChildScrollView(
              controller: controller,
              child: Column(
                children: [
                  topPanel(),
                  info(),
                  collection(),
                  AutoScrollTag(
                    controller: controller,
                    index: 2,
                    key: ValueKey('Gameplay'),
                    child: Container(
                      color: ColorPalette.card_l,
                      child: Padding(
                        padding: EdgeInsets.only(top: 0.07.sh, bottom: 0.00.sh),
                        child: Text('Token Lands collection',
                            style: TextThemes.hedline_2),
                      ),
                    ),
                  ),
                  howWork(true, 'Continents', 'assets/images/Continents.webp'),
                  howWork(
                      false, 'Land Sectors', 'assets/images/Land Sectors.webp'),
                  howWork(true, 'Working', 'assets/images/Working.webp'),
                  howWork(false, 'Evolution', 'assets/images/Evolution.webp'),
                  howWork(true, 'Stacking', 'assets/images/Stacking.webp'),
                  howWork(false, 'Commercial\nobjects',
                      'assets/images/Continents.webp'),
                  howWork(true, 'Auction', 'assets/images/Auction.webp'),
                  howWork(false, 'Bank', 'assets/images/Bank.webp'),
                  howWork(true, 'Mining', 'assets/images/Mining.webp'),
                  howWork(false, 'Mine', 'assets/images/Mine.webp'),
                  howWork(
                      true, 'War Factory', 'assets/images/War factory.webp'),
                  howWork(false, 'War', 'assets/images/War.webp'),
                  // gameplay(),
                  // getReady(),
                  RoadMap(),
                  bottomPanel(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget topPanel() {
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
                        onPressed: () {
                          _scrollToIndex(2);
                        },
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
                        onPressed: () {
                          _scrollToIndex(1);
                        },
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
                        onPressed: () {
                          _scrollToIndex(3);
                        },
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
                    //todo add instagram icon
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

  Widget info() {
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
              ],
            ),
          ),
          Positioned(
            top: 0.1.sh,
            left: 0.5.sw,
            child: Container(
              // width: 0.319.sw,
              child: Image.asset('assets/images/image_2w.png'),
            ),
          ),
          Positioned(
            top: 0.56.sh,
            right: 0.5.sw,
            child: Container(
              height: 0.26.sh,
              // width: 0.25.sw,
              child: Image.asset('assets/images/image_1t.png'),
            ),
          ),
          Positioned(
            top: 0.37.sh,
            left: 0.44.sw,
            child: Container(
              height: 0.26.sh,
              // width: 0.12.sw,
              child: Image.asset('assets/images/image_3w.png'),
            ),
          ),
        ],
      ),
    );
  }

  Widget Content1() {
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
            wrapWords: false,
            presetFontSizes: [72, 64, 56],
            maxLines: 5,
          ),
        ),
        Container(height: 0.07.sh),
        Container(
          height: 0.07.sh,
          width: 0.34.sw,
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
                    left: 0.02.sw,
                    top: 0.02.sh,
                    right: 0.02.sw,
                    bottom: 0.02.sh),
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

  Widget collection() {
    return AutoScrollTag(
      key: ValueKey(index),
      controller: controller,
      index: 1,
      child: Container(
        color: ColorPalette.bg_l,
        child: Padding(
          padding: EdgeInsets.only(
              left: 0.10.sw, top: 0.07.sh, right: 0.1.sw, bottom: 0.07.sh),
          child: Container(
            width: 0.8.sw,
            // height: 0.5.sh,
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {},
                  child: Text('Invest in new world',
                      style: TextThemes.caption_3
                          .copyWith(color: ColorPalette.primary)),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 0.02.sh, bottom: 0.05.sh),
                  child: Text('Token Lands collection',
                      style: TextThemes.hedline_2),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        width: 0.119.sw,
                        child: Image.asset('assets/images/CDrone.webp')),
                    Container(
                        width: 0.119.sw,
                        child: Image.asset('assets/images/CBar.webp')),
                    Container(
                        width: 0.119.sw,
                        child: Image.asset('assets/images/CGasStation.webp')),
                    Container(
                        width: 0.119.sw,
                        child: Image.asset('assets/images/CRobotsShop.webp')),
                    Container(
                        width: 0.119.sw,
                        child: Image.asset('assets/images/CStarshipPort.webp')),
                    Container(
                        width: 0.119.sw,
                        child: Image.asset('assets/images/CWarFactory.webp')),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: 0.02.sh, bottom: 0.05.sh),
                  child: Text(
                    'Unique collection of NFT cards',
                    style: TextThemes.body_1,
                  ),
                ),
                GestureDetector(
                  child: Container(
                    //width: 0.0964.sw,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        AutoSizeText(
                          //todo авторазворачивание по нажатию
                          'Start collection',
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
          ),
        ),
      ),
    );
  }

  Widget switchWithString() {
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
                  'Q4 2021',
                  maxLines: 1,
                  style: TextThemes.hedline_4
                      .copyWith(height: 1.33, fontFamily: 'SpaceMono Bold'),
                ),
                SizedBox(height: 15),
                AutoSizeText(
                  'Game concept presentation \n1000 NTF cards giveaway \nPresale NFT Packs Series 1 \nPresale NFT Packs Series 2',
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
                  'Q1 2022',
                  maxLines: 1,
                  style: TextThemes.hedline_4
                      .copyWith(height: 1.33, fontFamily: 'SpaceMono Bold'),
                ),
                SizedBox(height: 15),
                Text(
                  'Game Development: \nWorking \nStacking \nAuction \nBank',
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
                  'Q2 2022',
                  maxLines: 1,
                  style: TextThemes.hedline_4
                      .copyWith(height: 1.33, fontFamily: 'SpaceMono Bold'),
                ),
                SizedBox(height: 15),
                Text(
                  'Game Development: \nMining \nWar Factory \nCraft',
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
                  'Q3 2022',
                  maxLines: 1,
                  style: TextThemes.hedline_4
                      .copyWith(height: 1.33, fontFamily: 'SpaceMono Bold'),
                ),
                SizedBox(height: 15),
                Text(
                  'Game Development: \nWar \nContinent Bonus \nT-coin Stacking',
                  style: TextThemes.body_2,
                ),
              ],
            ),
          ),
        );
      default:
        print('Number Not Found');
        return Container();
    }
  }

  Widget howWork(rightPic, name, pic) {
    return Container(
      color: (rightPic) ? ColorPalette.card_l : ColorPalette.bg_l,
      width: 1.sw,
      // height: 580.h,
      child: Padding(
        padding: EdgeInsets.only(
            left: 0.10.sw, top: 0.07.sh, right: 0.1.sw, bottom: 0.07.sh),
        child: Container(
          width: 0.8.sw,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              (rightPic)
                  ? Container(
                      width: 0.6.sw,
                      child: Image.asset(pic),
                    )
                  : Container(),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: (rightPic)
                      ? CrossAxisAlignment.start
                      : CrossAxisAlignment.end,
                  children: [
                    Container(
                      width: 0.18.sw,
                      child: Row(
                        mainAxisAlignment: (rightPic)
                            ? MainAxisAlignment.start
                            : MainAxisAlignment.end,
                        children: [
                          Expanded(
                            child: AutoSizeText(name,
                                // softWrap: false,
                                wrapWords: false,
                                textAlign:
                                    rightPic ? TextAlign.start : TextAlign.end,
                                maxLines: 2,
                                presetFontSizes: [36, 30, 24],
                                style: TextThemes.hedline_2),
                          ),
                        ],
                      ),
                    ),
                    // Container(
                    //   width: 0.1857.sw,
                    //   child: AutoSizeText(
                    //       // "Ownership cards match 1:1 with a unique piece of equipment or vehicle on our colony map. The more you own, the higher on the colony leaderboard you will rank. You can find ownership cards inside of supply crates for Mission Two.",
                    //       "",
                    //       maxLines: 7,
                    //       style: TextThemes.body_1),
                    // ),
                    // Container(
                    //   height: 200.h,
                    // ),
                    GestureDetector(
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Learn More',
                                style: TextThemes.button_1
                                    .copyWith(color: ColorPalette.primary)),
                            SizedBox(width: 8),
                            SvgPicture.asset('assets/svg_icons/arrow-right.svg')
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              (!rightPic)
                  ? Container(
                      width: 0.6.sw,
                      child: Image.asset(pic),
                    )
                  : Container(),
            ],
          ),
        ),
      ),
    );
  }

// gameplay() {
//   return Container(
//     color: ColorPalette.bg_l,
//     width: 1.sw,
//     // height: 580.h,
//     child: Row(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         Column(
//           mainAxisAlignment: MainAxisAlignment.start,
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Container(
//               width: 0.1857.sw,
//               child: AutoSizeText(
//                 'Land Sectors',
//                 maxLines: 3,
//                 style: TextThemes.hedline_2,
//               ),
//             ),
//             GestureDetector(
//               child: Container(
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Text('Learn more',
//                         style: TextThemes.button_1
//                             .copyWith(color: ColorPalette.primary)),
//                     SizedBox(width: 12),
//                     SvgPicture.asset('assets/svg_icons/arrow-right.svg')
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//         Container(
//           width: 0.08.sw,
//         ),
//         Container(
//           width: 0.519.sw,
//           child: Image.asset('assets/images/image_6w.png'),
//         ),
//       ],
//     ),
//   );
// }
//
// getReady() {
//   return Container(
//     color: ColorPalette.card_l,
//     width: 1.sw,
//     height: 580.h,
//     child: Row(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         Container(
//           width: 0.519.sw,
//           child: Image.asset('assets/images/image_7w.png'),
//         ),
//         Container(
//           width: 0.08.sw,
//         ),
//         Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             GestureDetector(
//               onTap: () {},
//               child: Container(
//                 child: Text("get ready",
//                     maxLines: 1,
//                     style: TextThemes.hedline_9
//                         .copyWith(color: ColorPalette.primary)),
//               ),
//             ),
//             Container(
//               height: 20.h,
//             ),
//             Container(
//               width: 0.167.sw,
//               child: AutoSizeText(
//                 'PURCHASE \nSUPPLY CRATES',
//                 maxLines: 2,
//                 style: TextThemes.hedline_2,
//               ),
//             ),
//             Container(height: 32.h),
//             Container(
//               width: 0.1857.sw,
//               child: AutoSizeText(
//                   "Supply crates are NFT packs and contain digital trading cards. Cards feature different vehicles, equipment, buildings, and astronauts that are needed for the colony.",
//                   maxLines: 5,
//                   style: TextThemes.body_1),
//             ),
//             Container(height: 24.h),
//             GestureDetector(
//               child: Container(
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Text(
//                       'Try now',
//                       style: TextThemes.button_1.copyWith(
//                         color: ColorPalette.primary,
//                       ),
//                     ),
//                     SizedBox(width: 12),
//                     SvgPicture.asset('assets/svg_icons/arrow-right.svg')
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ],
//     ),
//   );
// }

  Widget bottomPanel() {
    return Container(
      color: ColorPalette.bg_l,
      width: 1.sw,
      // height: 244.h,
      child: Padding(
        padding: EdgeInsets.only(top: 0.07.sh),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
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
                  onPressed: () {
                    _scrollToIndex(2);
                  },
                  child: Text(
                    'Gameplay',
                    style: TextThemes.body_2,
                  ),
                ),
                SizedBox(height: 4),
                TextButton(
                  onPressed: () {
                    _scrollToIndex(1);
                  },
                  child: Text(
                    'Collection',
                    style: TextThemes.body_2,
                  ),
                ),
                SizedBox(
                  height: 4,
                ),
                TextButton(
                  onPressed: () {
                    _scrollToIndex(3);
                  },
                  child: Text(
                    'Roadmap',
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
                SizedBox(height: 4),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Instagram',
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
                SizedBox(height: 16),
              ],
            ),
            SizedBox(width: 0.1.sw),
          ],
        ),
      ),
    );
  }

  Widget RoadMap() {
    return AutoScrollTag(
      key: ValueKey('roadmap'),
      index: 3,
      controller: controller,
      child: Container(
        color: ColorPalette.card_l,
        child: Padding(
          padding: EdgeInsets.only(
              left: 0.10.sw, top: 0.07.sh, right: 0.1.sw, bottom: 0.02.sh),
          child: Container(
            width: 0.8.sw,
            // height: 0.7.sh,
            child: Column(
              //crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: 0.44.sh,
                  width: 0.80.sw,
                  child: Stack(
                    children: [
                      Container(
                        // width: 0.167.sw,
                        child: AutoSizeText('Roadmap',
                            maxLines: 1, style: TextThemes.hedline_2),
                      ),
                      Center(
                        child: Container(
                          color: ColorPalette.white,
                          width: (350 > 0.22.sw) ? 350 : 0.22.sw,
                          height: 0.44.sh,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            //mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              switchWithString(),
                              Expanded(child: Container()),
                              Row(
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        if (index == 3 ||
                                            index == 2 ||
                                            index == 4) {
                                          index = index - 1;
                                        } else if (index == 1) {
                                          index = 1;
                                        }
                                      });
                                    },
                                    child: Padding(
                                      padding: const EdgeInsets.all(16.0),
                                      child: Container(
                                        height: 48,
                                        width: 48,
                                        color: ColorPalette.text_l_2,
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            SvgPicture.asset(
                                              'assets/svg_icons/arrow-left.svg',
                                              color: ColorPalette.text_l_60,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        if (index == 3 ||
                                            index == 2 ||
                                            index == 1) {
                                          index = index + 1;
                                        } else if (index == 4) {
                                          index = 4;
                                        }
                                        ;
                                      });
                                    },
                                    child: Padding(
                                      padding: const EdgeInsets.all(16.0),
                                      child: Container(
                                        color: ColorPalette.text_l_2,
                                        width: 115,
                                        height: 48,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
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
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 216,
                  child: Stack(
                    //crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Positioned(
                        top: 101,
                        child: Container(
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                            colors: [
                              Colors.white,
                              ColorPalette.primary,
                              ColorPalette.primary,
                              ColorPalette.primary,
                              Colors.white,
                            ],
                            begin: const FractionalOffset(0.0, 0.0),
                            end: const FractionalOffset(1.0, 0.0),
                          )),
                          width: 0.8.sw,
                          height: 6,
                        ),
                      ),
                      Positioned(
                        left: 0.16.sw - 40,
                        top: 16,
                        child: Column(
                          //crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(bottom: 16),
                              child: Container(
                                // width: ,
                                height: 32,
                                child: AutoSizeText(
                                  'Q4 2021',
                                  maxLines: 1,
                                  style: TextThemes.hedline_4.copyWith(
                                      height: 1.33,
                                      fontFamily: 'SpaceMono Bold'),
                                ),
                              ),
                            ),
                            Container(
                              height: 80,
                              width: 80,
                              color: Colors.white,
                              child: Center(
                                child: Container(
                                  height: 64,
                                  width: 64,
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
                                        : SvgPicture.asset(
                                            'assets/svg_icons/bolt.svg'),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        left: 0.32.sw - 40,
                        top: 16,
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(bottom: 16),
                              child: Container(
                                child: Text(
                                  'Q1 2022',
                                  maxLines: 1,
                                  style: TextThemes.hedline_4.copyWith(
                                      height: 1.33,
                                      fontFamily: 'SpaceMono Bold'),
                                ),
                              ),
                            ),
                            Container(
                              height: 80,
                              width: 80,
                              color: Colors.white,
                              child: Center(
                                child: Container(
                                  height: 64,
                                  width: 64,
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
                              ),
                            ),
                          ],
                        ),
                      ),
                      // Padding(
                      //   padding: index == 3
                      //       ? EdgeInsets.only(bottom: 8)
                      //       : EdgeInsets.only(bottom: 30),
                      //   child:
                      Positioned(
                        left: 0.48.sw - 40,
                        top: 16,
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(bottom: 16),
                              child: Container(
                                child: Text(
                                  'Q2 2022',
                                  maxLines: 1,
                                  style: TextThemes.hedline_4.copyWith(
                                      height: 1.33,
                                      fontFamily: 'SpaceMono Bold'),
                                ),
                              ),
                            ),
                            Container(
                              height: 80,
                              width: 80,
                              color: Colors.white,
                              child: Center(
                                child: Container(
                                  height: 64,
                                  width: 64,
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
                              ),
                            ),
                          ],
                        ),
                      ),

                      Positioned(
                        left: 0.64.sw - 40,
                        top: 16,
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(bottom: 16),
                              child: Container(
                                child: Text(
                                  'Q3 2022',
                                  maxLines: 1,
                                  style: TextThemes.hedline_4.copyWith(
                                      height: 1.33,
                                      fontFamily: 'SpaceMono Bold'),
                                ),
                              ),
                            ),
                            Container(
                              height: 80,
                              width: 80,
                              color: Colors.white,
                              child: Center(
                                child: Container(
                                  height: 64,
                                  width: 64,
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
                                        : SvgPicture.asset(
                                            'assets/svg_icons/view.svg'),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
