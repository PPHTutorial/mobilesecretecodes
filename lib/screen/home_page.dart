import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:in_app_review/in_app_review.dart';
import 'package:mobileSecretCodes/data/ads.dart';
import 'package:mobileSecretCodes/data/config.dart';
import 'package:mobileSecretCodes/data/data.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:mobileSecretCodes/screen/codelist.dart';
import 'package:mobileSecretCodes/screen/new_release.dart';
import 'package:mobileSecretCodes/data/parser_data.dart';
import 'package:mobileSecretCodes/screen/code_arena.dart';
import 'package:mobileSecretCodes/screen/tricks.dart';
import 'dart:math' as math;

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  GlobalKey<ScaffoldState> scaffoldkey = GlobalKey<ScaffoldState>();
  InAppReview inAppReview = InAppReview.instance;
  int gridViewCrossAxisCount = 3;
  @override
  Widget build(BuildContext context) {
    TrasparentStatusBar(Brightness.light, primary, Brightness.light, primary);
    return Scaffold(
      key: scaffoldkey,
      body: SafeArea(
        child: Stack(
          fit: StackFit.expand,
          children: [
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: Transform(
                alignment: Alignment.center,
                transform: Matrix4.rotationX(math.pi),
                child: ClipPath(
                  clipper: RoundedDiagonalPathClipper(),
                  child: Container(
                    height: MediaQuery.of(context).size.height * .4,
                    decoration: const BoxDecoration(
                      //borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50), bottomRight: Radius.circular(50)),
                      color: primary,
                    ),
                    child: Transform(
                      alignment: Alignment.center,
                      transform: Matrix4.rotationX(math.pi),
                      child: Column(
                        children: [
                          Center(
                              child: Column(
                            children: [
                              Image.asset('assets/images/icon.png',
                                  height: 200),
                              Text("All Mobile Secret Codes",
                                  style: TextStyle(
                                      color: white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20)),
                            ],
                          )),
                          Spacer(),
                          bannerContainer7,
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            //if (isloaded.value)
            Padding(
              padding: EdgeInsets.symmetric(vertical: 8.0),
              child: bannerContainer,
            ),
            Container(
              margin:
                  EdgeInsets.only(top: MediaQuery.of(context).size.height * .5),
              child: GridView.builder(
                  itemCount: menu.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisSpacing: 0,
                    crossAxisSpacing: 0,
                    crossAxisCount: 3,
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    return InkWell(
                      onTap: () async {
                        showInterstitialAd();
                        if (index == 0) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      const CodeArena(platform: 'All')));
                          return;
                        }
                        if (index == 1) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      const CodeList()));
                          return;
                        }
                        if (index == 2) {
                          alertDialog(context, "About App", apphelp);
                          return;
                        }
                        if (index == 3) {
                          alertDialog(context, "About Information", appinfo);
                          return;
                        }
                        if (index == 4) {
                          if (await inAppReview.isAvailable()) {
                            inAppReview.requestReview();
                          }
                          return;
                        }
                        //share
                        if (index == 5) {
                          shareApp();
                          return;
                        }
                      },
                      child: Column(
                        children: [
                          Container(
                              width: 80,
                              height: 80,
                              margin: EdgeInsets.all(20),
                              decoration: BoxDecoration(boxShadow: [
                                BoxShadow(
                                  color: black.withOpacity(.5),
                                  spreadRadius: 1,
                                  blurRadius: 5,
                                  offset: Offset(0, 2),
                                )
                              ], shape: BoxShape.circle, color: primary),
                              child: Icon(menu[index]['icon'],
                                  color: white, size: 30)),
                          Text(menu[index]['title']),
                        ],
                      ),
                    );
                  }),
            ),

            Positioned(
              bottom: 20,
              left: 0,
              right: 0,
              child: Column(
                children: [
                  bannerContainer6,
                  Text(
                    "All Mobile Secret Codes",
                    style: TextStyle(
                      color: Colors.amber,
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    "App version: 5:23.03.21",
                    style: TextStyle(
                      color: primary,
                      fontSize: 10,
                      fontWeight: FontWeight.w700,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    "com.stsl.code!nk",
                    style: TextStyle(
                      color: primary,
                      fontSize: 9,
                      fontWeight: FontWeight.w700,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            /* GridView.builder(
                    itemCount: list.length,
                    gridDelegate:             
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisSpacing: 0,
                      crossAxisSpacing: 0,
                      crossAxisCount: 3,
                    ),
                    itemBuilder: (BuildContext context, int index) {
                      return PhoneBrandsView(
                          index: index,
                          gridViewCrossAxisCount: gridViewCrossAxisCount);
                    }),
              ),*/
          ],
        ),
      ),
    );
  }
}

/* class NavigationMenu extends StatelessWidget {
  const NavigationMenu({
    Key? key,
    required this.scaffoldkey,
    required this.inAppReview,
  }) : super(key: key);

  final GlobalKey<ScaffoldState> scaffoldkey;
  final InAppReview inAppReview;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          flex: 2,
          child: CircleAvatar(
            radius: 70,
            backgroundColor: primary,
            //backgroundImage: const AssetImage('assets/images/icon.png'),
            child: Image.asset(
              'assets/images/icon.png',
              //height: 100,
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(height: 16),
        /* Text(
          "Mobile Secrete Codes, Tricks And More...",
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.displayLarge!.copyWith(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w900,
              ),
        ), */
        const SizedBox(height: 32),
        Expanded(
          flex: 4,
          child: ListView.builder(
              shrinkWrap: true,
              itemCount: menuitems.length,
              itemBuilder: (BuildContext context, int index) {
                return InkWell(
                  onTap: () {
                    switch (index) {
                      case 0:
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    const CodeArena(platform: 'All')));
                        // ignore: avoid_print
                        print(index);
                        //Navigator.pop(context, true);
                        scaffoldkey.currentState!.openEndDrawer();
                        break;
                      case 1:
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    const NewReleases()));
                        // ignore: avoid_print
                        print(index);
                        //Navigator.pop(context, true);
                        scaffoldkey.currentState!.openEndDrawer();
                        break;
                      case 2:
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    const Tricks()));
                        // ignore: avoid_print
                        print(index);
                        //Navigator.pop(context, true);
                        scaffoldkey.currentState!.openEndDrawer();
                        break;
                    }
                  },
                  child: Container(
                      alignment: Alignment.centerLeft,
                      margin: const EdgeInsets.only(bottom: 8, left: 8),
                      padding: const EdgeInsets.all(8),
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        gradient: LinearGradient(colors: [
                          primary.withOpacity(.5),
                          primary,
                        ]),
                      ),
                      child: Text(menuitems[index],
                          style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20))),
                );
              }),
        ),
        const SizedBox(height: 25),
        // const SizedBox(height: 25),
        Expanded(
          flex: 3,
          child: Container(
            //color: Colors.red,
            padding: const EdgeInsets.only(
              bottom: 50,
              right: 16,
              left: 16,
            ),
            alignment: Alignment.bottomCenter,
            // color: Colors.red,
            height: 25,
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Expanded(flex: 1, child: bannerContainer2),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Spacer(),
                    Tooltip(
                      message: "Send us mail",
                      child: InkWell(
                          onTap: () {
                            sendMail();
                          },
                          child: Icon(Icons.mail, size: 25, color: white)),
                    ),
                    SizedBox(width: 10),
                    Tooltip(
                      message: "App information",
                      child: InkWell(
                          onTap: () {
                            alertDialog(context, "About App", apphelp);
                          },
                          child: Icon(Icons.info, size: 25, color: white)),
                    ),
                    SizedBox(width: 10),
                    /* Tooltip(
                      message: "Help and Support",
                      child: InkWell(
                          onTap: () {},
                          child: Icon(Icons.help, size: 25)),
                    ), */

                    Tooltip(
                        message: "",
                        child: InkWell(
                            onTap: () async {
                              if (await inAppReview.isAvailable()) {
                                inAppReview.requestReview();
                              }
                            },
                            child: Text("RATE",
                                style: TextStyle(
                                    fontWeight: FontWeight.w900,
                                    color: Colors.white,
                                    fontSize: 22)))),
                    SizedBox(width: 10),
                    Tooltip(
                      message: "Share App",
                      child: InkWell(
                          onTap: () {
                            shareApp();
                          },
                          child: Icon(Icons.share, size: 25, color: white)),
                    ),
                    SizedBox(width: 10),
                    Spacer(
                      flex: 1,
                    ),
                  ],
                ),
                const SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () => policies(context, 'assets/json/tnc.pdf'),
                      child: Text('Terms & Conditions',
                          style: TextStyle(color: white)),
                    ),
                    SizedBox(width: 10),
                    InkWell(
                        onTap: () => policies(context, 'assets/json/eulac.pdf'),
                        child: Text('EULA', style: TextStyle(color: white))),
                    SizedBox(width: 10),
                    InkWell(
                        onTap: () => policies(context, 'assets/json/pp.pdf'),
                        child: Text('Privacy Policy',
                            style: TextStyle(color: white))),
                  ],
                ),
                const SizedBox(height: 10),
                const Center(
                  child: Text(
                    "app version: 21.09.14",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
 */
class PhoneBrandsView extends StatelessWidget {
  const PhoneBrandsView({
    required this.index,
    required this.gridViewCrossAxisCount,
    Key? key,
  }) : super(key: key);

  final int index;
  final int gridViewCrossAxisCount;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        adIntRewardPermission(context);
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (BuildContext context) =>
                    CodeArena(platform: list[index]['name']!)));
      },
      child: AnimatedContainer(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: primary,
          borderRadius: BorderRadius.circular(15),
          border: Border.all(width: 5, color: white),
          boxShadow: [
            BoxShadow(
              blurRadius: 3,
              spreadRadius: 1,
              color: black.withOpacity(.2),
              offset: Offset(0, 3),
            )
          ],
        ),
        alignment: Alignment.center,
        margin: const EdgeInsets.all(8),
        duration: const Duration(seconds: 1),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              list[index]['img']!,
              height: 50,
              width: 50,
              //colorBlendMode: BlendMode.colorDodge,
            ),
            SizedBox(width: 16),
            Text(
              list[index]['name']!,
              style: const TextStyle(
                color: Colors.white54,
                fontWeight: FontWeight.w800,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
