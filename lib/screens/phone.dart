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
                    // height: 360,
                    width: 1.sw,
                    child: Image.asset(
                      'assets/images/main1.webp',
                      fit: BoxFit.fill,
                    ),
                  ),
                  Container(
                    // height: 360,
                    width: 1.sw,
                    child: Image.asset(
                      'assets/images/main2.webp',
                      fit: BoxFit.fill,
                    ),
                  ),
                  collection(),
                  Container(
                    color: ColorPalette.card_l,
                    child: Column(
                      children: [
                        SizedBox(height: 32),
                        Text(
                            'token lands'
                            '\ncollection',
                            maxLines: 2,
                            textAlign: TextAlign.center,
                            style: TextThemes.hedline_2.copyWith(fontSize: 36)),
                      ],
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
}

info() {
  return Container(
    color: ColorPalette.bg_d_n,
    width: 1.sw,
    // height: 312,
    child: Padding(
      padding: EdgeInsets.only(
          left: 0.09.sw, right: 0.09.sw, top: 0.09.sw, bottom: 0.09.sw),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        //crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 0.82.sw,
            child: AutoSizeText.rich(
              TextSpan(
                children: <TextSpan>[
                  TextSpan(
                    text: "ECONOMICAL NFT",
                    style: TextThemes.hedline_3
                        .copyWith(color: ColorPalette.white),
                  ),
                  TextSpan(
                    text: " GAME",
                    style: TextThemes.hedline_3
                        .copyWith(color: ColorPalette.primary),
                  ),
                  TextSpan(
                    text: " BASED ON \nBLOCKCHAIN WAX",
                    style: TextThemes.hedline_3
                        .copyWith(color: ColorPalette.white),
                  ),
                ],
              ),
              wrapWords: false,
              // presetFontSizes: [72, 64, 56],
              maxLines: 3,
            ),
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
    color: ColorPalette.bg_l,
    width: 1.sw,
    // height: 800.h,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      // mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(height: 48),
        TextButton(
          onPressed: () {},
          child: Text(
            'Invest in new world',
            style: TextThemes.hedline_9.copyWith(color: ColorPalette.primary),
          ),
        ),
        SizedBox(height: 12),
        Text(
            'start your'
            '\ncollection',
            maxLines: 2,
            textAlign: TextAlign.center,
            style: TextThemes.hedline_2.copyWith(fontSize: 24)),
        SizedBox(height: 24),
        Row(
          children: [
            Padding(
              padding:
                  EdgeInsets.only(left: 0.09.sw, right: 0.04.sw, bottom: 16),
              child: Container(
                  width: 0.39.sw,
                  child: Image.asset('assets/images/CDrone.webp')),
            ),
            Padding(
              padding: EdgeInsets.only(right: 0.09.sw, bottom: 16),
              child: Container(
                  width: 0.39.sw,
                  child: Image.asset('assets/images/CBar.webp')),
            ),
          ],
        ),
        Row(
          children: [
            Padding(
              padding:
                  EdgeInsets.only(left: 0.09.sw, right: 0.04.sw, bottom: 16),
              child: Container(
                  width: 0.39.sw,
                  child: Image.asset('assets/images/CGasStation.webp')),
            ),
            Padding(
              padding: EdgeInsets.only(right: 0.09.sw, bottom: 16),
              child: Container(
                  width: 0.39.sw,
                  child: Image.asset('assets/images/CRobotsShop.webp')),
            ),
          ],
        ),
        Row(
          children: [
            Padding(
              padding:
                  EdgeInsets.only(left: 0.09.sw, right: 0.04.sw, bottom: 16),
              child: Container(
                  width: 0.39.sw,
                  child: Image.asset('assets/images/CStarshipPort.webp')),
            ),
            Padding(
              padding: EdgeInsets.only(right: 0.09.sw, bottom: 16),
              child: Container(
                  width: 0.39.sw,
                  child: Image.asset('assets/images/CWarFactory.webp')),
            ),
          ],
        ),
        // SingleChildScrollView(
        //   child: SizedBox(
        //     height: 540.h,
        //     child: GridView.count(
        //       crossAxisSpacing: 0,
        //       shrinkWrap: false,
        //       primary: false,
        //       //padding: EdgeInsets.only(left: 15.w, right: 15.w),
        //       mainAxisSpacing: 16.w,
        //       crossAxisCount: 2,
        //       children: <Widget>[
        //         Image.asset('assets/images/CDrone.webp'),
        //         Image.asset('assets/images/CBar.webp'),
        //         Image.asset('assets/images/CGasStation.webp'),
        //         Image.asset('assets/images/CRobotsShop.webp'),
        //         Image.asset('assets/images/CStarshipPort.webp'),
        //         Image.asset('assets/images/CWarFactory.webp'),
        //       ],
        //     ),
        //   ),
        // ),
        // //SizedBox(height: 24.h),
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
        SizedBox(height: 32.h),
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
                'Q4 2021',
                maxLines: 1,
                style: TextThemes.hedline_4.copyWith(
                    height: 1, fontFamily: 'SpaceMono Bold', fontSize: 36),
              ),
              SizedBox(height: 24),
              Text(
                'Game concept presentation \n1000 NTF cards giveaway \nPresale NFT Packs Series 1 \nPresale NFT Packs Series 2 \n',
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
                'Q1 2022',
                maxLines: 1,
                style: TextThemes.hedline_4.copyWith(
                    height: 1, fontFamily: 'SpaceMono Bold', fontSize: 36),
              ),
              SizedBox(height: 24),
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
                'Q2 2022',
                maxLines: 1,
                style: TextThemes.hedline_4.copyWith(
                    height: 1, fontFamily: 'SpaceMono Bold', fontSize: 36),
              ),
              SizedBox(height: 24),
              Text(
                'Game Development: \nMining \nWar Factory \nCraft \n',
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
                'Q3 2022',
                maxLines: 1,
                style: TextThemes.hedline_4.copyWith(
                    height: 1, fontFamily: 'SpaceMono Bold', fontSize: 36),
              ),
              SizedBox(height: 24),
              Text(
                'Game Development: \nWar \nContinent Bonus \nT-coin Stacking \n',
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
            // height: 396,
            width: 1.sw,
            color: ColorPalette.card_l,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                switchWithString(),
                Padding(
                  padding:
                      EdgeInsets.only(left: 32, right: 32, top: 16, bottom: 16),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            if (index == 3 || index == 2 || index == 4) {
                              index = index - 1;
                            } else if (index == 1) {
                              index = 1;
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
                              index = 4;
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
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                  colors: [
                    Colors.white,
                    ColorPalette.primary,
                    ColorPalette.primary
                  ],
                  begin: const FractionalOffset(0.0, 0.0),
                  end: const FractionalOffset(1.0, 0.0),
                )),
                height: 8,
                width: 0.38.sw,
              ),
              Container(
                height: 48,
                width: 48,
                color: ColorPalette.secondary,
              ),
              Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                  colors: [
                    ColorPalette.primary,
                    ColorPalette.primary,
                    Colors.white,
                  ],
                  begin: const FractionalOffset(0.0, 0.0),
                  end: const FractionalOffset(1.0, 0.0),
                )),
                height: 8,
                width: 0.38.sw,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

howWork(rightPic, name, pic, description) {
  return Container(
    color: rightPic ? ColorPalette.card_l : ColorPalette.bg_l,
    width: 1.sw,
    // height: 380 + 360,
    child: Column(
      //crossAxisAlignment: Cross,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 32, top: 0),
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 48,
              ),
              Text(
                name,
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
                description,
                // maxLines: 6,
                style: TextThemes.body_2,
              ),
              Container(height: 24),
              // Container(
              //   child: GestureDetector(
              //     child: Row(
              //       mainAxisAlignment: MainAxisAlignment.start,
              //       children: [
              //         Text('Open packs',
              //             style: TextThemes.hedline_7
              //                 .copyWith(color: ColorPalette.primary)),
              //         SizedBox(width: 12),
              //         SvgPicture.asset(pic)
              //       ],
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
        Container(
          width: 1.sw,
          child: Image.asset(
            pic,
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
    color: ColorPalette.card_l,
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
