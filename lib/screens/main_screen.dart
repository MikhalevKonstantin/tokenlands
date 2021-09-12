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
      designSize: const Size(1680, 1050), //width, height
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
                    key: const ValueKey('Gameplay'),
                    child: Container(
                      color: ColorPalette.card_l,
                      child: Padding(
                        padding: EdgeInsets.only(top: 0.07.sh, bottom: 0.00.sh),
                        child: Text('Token Lands collection',
                            style: TextThemes.hedline_2),
                      ),
                    ),
                  ),
                  howWork(true, 'Continents', 'assets/images/Continents.webp',
                      'The Token Lands world consists of five competing continents divided into NFT sectors. Each continent is unique in its own way and has a certain resource on its territory that is necessary for creating an NFT card "Military Plant". The military and economic advantage of each player will affect the fate of the continent.'),
                  howWork(
                      false,
                      'Land Sectors',
                      'assets/images/Land Sectors.webp',
                      'Sectors are NFT cards of different rarity, consisting of slots for staking infrastructure objects, as well as the number of jobs for working. Sector owners will receive a stable profit of 10% from all objects placed on their sector, and from all the work performed. You can buy NFT cards at the presale stage in packs for Wax and in rare cases at an auction for T-coin.'),
                  howWork(true, 'Working', 'assets/images/Working.webp',
                      'Every TokenLands player has the opportunity to earn T-coin on any continent in any available sector absolutely for free. Performing the work, you get T-coins, as well as have a chance to get an Evolution NFT card.'),
                  howWork(false, 'Evolution', 'assets/images/Evolution.webp',
                      'Evolution is an NFT card of different rarity that increases the profit from Working. When used, the card burns out and adds from 2% to 10% to the work efficiency . It will be possible to purchase this NFT at an auction for T-coin, as well as, in rare cases, get it for free when performing work.'),
                  howWork(true, 'Stacking', 'assets/images/Stacking.webp',
                      'Owners of NFT cards from the collection of commercial objects have the opportunity to place them in the free sector on any of the continents and receive T-coin. It is the fastest and easiest way to earn T-coin and become an influential player of Token Lands.'),
                  howWork(
                      false,
                      'Commercial\nobjects',
                      'assets/images/Comercial objects.webp',
                      'This is a unique collection of NFT cards of various rarities that allow their owners to receive T-coin by placing them in sectors. The profit from commercial objects is fixed and depends on the rarity of your card. You can buy more powerful NFT cards at the presale stage in packs for Wax, and less powerful ones at the auction for T-coin.'),
                  howWork(true, 'Auction', 'assets/images/Auction.webp',
                      'A system for selling NFT cards will be implemented in the game: infrastructure objects, sectors, improving the player\'s characteristics for T-coins, by holding an auction. NFT cards purchased at auction will be less profitable than objects from the presale series.'),
                  howWork(false, 'Bank', 'assets/images/Bank.webp',
                      'The game will implement the T-coin deposit function for various periods from a month to a year. The interest rate on the deposit will depend on the term of your deposit. In case of early withdrawal of the deposit, the interest rate under the contract is not charged. Token Lands Bank will draw NFT cards among investors.'),
                  howWork(true, 'Mining', 'assets/images/Mining.webp',
                      'Mining mines will be located on each of the five continents for the extraction of NFT resources, which can be used for the construction of the mythical infrastructure object "Military Plant", or sold.'),
                  howWork(false, 'Mine', 'assets/images/Mine.webp',
                      'Each continent has its own mine with a unique NFT resource: Metal, brick, glass, fuel and chips. You will need T-coins to extract resources in a mine. The number of resources is limited and is updated daily.'),
                  howWork(true, 'War Factory', 'assets/images/War factory.webp',
                      'The War Factory is a Mythical NFT card that can only be obtained by crafting unique NFT resources. The most profitable infrastructure object that brings T-coin, as well as generates NFT cards of a military orientation.'),
                  howWork(false, 'War', 'assets/images/War.webp',
                      'The game will implement a war between continents, the winner will be determined by adding the capacities of all NFT cards of the military orientation of each player on the continent. The winning continent is given an increased T-coin production from staking and working for a week. The concept of war is thought out in such a way that the same continent will not be able to win all the time, and players will move to the continent with increased profit.'),
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
      child: Padding(
        padding: EdgeInsets.only(left: 0.10.sw, right: 0.1.sw),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                if (window.physicalSize.width >= 1350)
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
      ),
    );
  }

  Widget info() {
    return Container(
      color: ColorPalette.bg_d_n,
      width: 1.sw,
      // height: 0.22.sh + 0.4.sw,
      height: 0.91.sh,
      child: Stack(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(
                left: 0.10.sw,
                top: 0.11.sh,
                /*right: 0.1.sw,*/ bottom: 0.11.sh),
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
              width: 0.4.sw > 0.8.sh ? 0.8.sh : 0.4.sw,
              // height: 0.62.sh,
              child: Image.asset('assets/images/main1.webp'),
            ),
          ),
          Positioned(
            top: 0.54.sh,
            right: 0.5.sw,
            child: Container(
              // height: 0.26.sh,
              width: 0.25.sw,
              child: Image.asset('assets/images/main2.webp'),
            ),
          ),
          Positioned(
            top: 0.45.sh,
            left: 0.44.sw,
            child: Container(
              height: 0.26.sh,
              // width: 0.12.sw,
              child: Image.asset('assets/images/main3.webp'),
            ),
          ),
          Positioned(
            top: 0.54.sh,
            left: 0.1.sw,
            child: Row(
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
        Container(
          height: 224, // 0.21.sh,
          width: 0.39.sw > 540 ? 540 : 0.39.sw,
          child: AutoSizeText.rich(
            TextSpan(
              children: <TextSpan>[
                TextSpan(
                  text: "ECONOMICAL \nNFT",
                  style:
                      TextThemes.hedline_0.copyWith(color: ColorPalette.white),
                ),
                TextSpan(
                  text: " GAME",
                  style: TextThemes.hedline_0
                      .copyWith(color: ColorPalette.primary),
                ),
                TextSpan(
                  text: "\nBASED ON \nBLOCKCHAIN WAX",
                  style:
                      TextThemes.hedline_0.copyWith(color: ColorPalette.white),
                ),
              ],
            ),
            wrapWords: false,
            // presetFontSizes: [72, 64, 56],
            maxLines: 5,
          ),
        ),
        Container(height: 0.07.sh),
        Container(
          height: 80, //0.07.sh,
          width: 0.4.sw,
          child: AutoSizeText(
            "The struggle of five continents \nfor economic and military superiority",
            maxLines: 2,
            style: TextThemes.subhead_1.copyWith(color: ColorPalette.text_d_60),
          ),
        ),
        Container(height: 0.03.sh),
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
                  child: Text('Start your collection',
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

  Widget howWork(rightPic, name, pic, description) {
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
                            : MainAxisAlignment.start,
                        children: [
                          Expanded(
                            child: AutoSizeText(name,
                                // softWrap: false,
                                wrapWords: false,
                                textAlign: rightPic
                                    ? TextAlign.start
                                    : TextAlign.start,
                                maxLines: 2,
                                presetFontSizes: const [36, 30, 24],
                                style: TextThemes.hedline_2),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 16),
                    Container(
                      width: 0.1857.sw,
                      child: AutoSizeText(
                          // "Ownership cards match 1:1 with a unique piece of equipment or vehicle on our colony map. The more you own, the higher on the colony leaderboard you will rank. You can find ownership cards inside of supply crates for Mission Two.",
                          description,
                          softWrap: true,
                          // maxLines: 10,
                          presetFontSizes: const [16, 14, 12, 10],
                          style: TextThemes.body_1),
                    ),
                    // Container(
                    //   height: 200.h,
                    // ),
                    // GestureDetector(
                    //   child: Container(
                    //     child: Row(
                    //       mainAxisAlignment: MainAxisAlignment.center,
                    //       children: [
                    //         Text('Learn More',
                    //             style: TextThemes.button_1
                    //                 .copyWith(color: ColorPalette.primary)),
                    //         SizedBox(width: 8),
                    //         SvgPicture.asset('assets/svg_icons/arrow-right.svg')
                    //       ],
                    //     ),
                    //   ),
                    // ),
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
