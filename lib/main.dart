import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mobileSecretCodes/data/ads.dart';
import 'package:mobileSecretCodes/data/config.dart';
import 'package:mobileSecretCodes/data/permissions.dart';
import 'package:mobileSecretCodes/screen/home_page.dart';
import 'package:mobileSecretCodes/screen/permission_page.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  MobileAds.instance.initialize();

  runApp(const MyApp());
// status bar color
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => MyAppState();
}

int time = 180;

class MyAppState extends State<MyApp> {
  @override
  void initState() {
    permissionHandler();
    super.initState();
    myBanner.load();
    myBanner2.load();
    myBanner3.load();
    myBanner4.load();
    myBanner5.load();
    myBanner6.load();
    myBanner7.load();
    myBanner8.load();
    myBanner9.load();
    myBanner0.load();
    createInterstitialAd();
    createRewardedAd();
    createRewardedInterstitialAd();
  }

  @override
  void dispose() {
    super.dispose();
    interstitialAd?.dispose();
    rewardedAd?.dispose();
    rewardedInterstitialAd?.dispose();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Mobile Codes, Tricks and Hacks',
        theme: theme,
        home: HomePage());
  }
}
