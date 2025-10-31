import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:mobileSecretCodes/data/ads.dart';
import 'package:mobileSecretCodes/data/config.dart';
import 'package:mobileSecretCodes/data/permissions.dart';
import 'package:mobileSecretCodes/screen/home_page.dart';

void main() async {
  // Ensure Flutter is initialized
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize Mobile Ads
  await MobileAds.instance.initialize();
  
  // Configure test device for test ads
  await MobileAds.instance.updateRequestConfiguration(
    RequestConfiguration(
      testDeviceIds: ['FDB6404EE2DF76ABCA39527BDAFAB242'],
    ),
  );

  // Set system UI overlay style
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light,
      systemNavigationBarColor: Colors.black,
      systemNavigationBarIconBrightness: Brightness.light,
    ),
  );
  
  // Set preferred orientations
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  // Request permissions
  await permissionHandler();

  // Run app
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => MyAppState();
}

int time = 180;

class MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    // Load banner ads
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
    // Create interstitial and rewarded ads
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
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mobile Codes, Tricks and Hacks',
      theme: theme,
      home: const HomePage(),
    );
  }
}
