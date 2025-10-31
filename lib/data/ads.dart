import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:mobileSecretCodes/main.dart';

//ads vrariable declaration
const String testDevice = '026cc2c0-782f-4e53-9226-a030f13b1df9';
const int maxFailedLoadAttempts = 3;

InterstitialAd? interstitialAd;
int numInterstitialLoadAttempts = 0;

RewardedAd? rewardedAd;
int numRewardedLoadAttempts = 0;

RewardedInterstitialAd? rewardedInterstitialAd;
int numRewardedInterstitialLoadAttempts = 0;
const appOpen =
    "ca-app-pub-9043208558525567/3196547045"; // "ca-app-pub-3940256099942544/3419835294";
const banner =
    "ca-app-pub-9043208558525567/4461527252"; //ca-app-pub-3940256099942544/6300978111";
const interstitial =
    "ca-app-pub-9043208558525567/8628002973"; // "ca-app-pub-3940256099942544/1033173712";
const rewarded =
    "ca-app-pub-9043208558525567/4376577409"; // "ca-app-pub-3940256099942544/5224354917";
const rewardedInterstitial =
    "ca-app-pub-9043208558525567/7826057195"; //ca-app-pub-3940256099942544/5354046379";
const nativeAdvanced =
    "ca-app-pub-9043208558525567/3196547045"; //ca-app-pub-3940256099942544/2247696110";

final BannerAd myBanner = BannerAd(
  adUnitId: banner,
  size: AdSize.banner,
  request: AdRequest(),
  listener: BannerAdListener(),
);
final BannerAd myBanner2 = BannerAd(
  adUnitId: banner,
  size: AdSize.banner,
  request: AdRequest(),
  listener: BannerAdListener(),
);
final BannerAd myBanner3 = BannerAd(
  adUnitId: banner,
  size: AdSize.banner,
  request: AdRequest(),
  listener: BannerAdListener(),
);
final BannerAd myBanner4 = BannerAd(
  adUnitId: banner,
  size: AdSize.banner,
  request: AdRequest(),
  listener: BannerAdListener(),
);
final BannerAd myBanner5 = BannerAd(
  adUnitId: banner,
  size: AdSize.banner,
  request: AdRequest(),
  listener: BannerAdListener(),
);
final BannerAd myBanner6 = BannerAd(
  adUnitId: banner,
  size: AdSize.banner,
  request: AdRequest(),
  listener: BannerAdListener(),
);
final BannerAd myBanner7 = BannerAd(
  adUnitId: banner,
  size: AdSize.banner,
  request: AdRequest(),
  listener: BannerAdListener(),
);
final BannerAd myBanner8 = BannerAd(
  adUnitId: banner,
  size: AdSize.banner,
  request: AdRequest(),
  listener: BannerAdListener(),
);
final BannerAd myBanner9 = BannerAd(
  adUnitId: banner,
  size: AdSize.banner,
  request: AdRequest(),
  listener: BannerAdListener(),
);
final BannerAd myBanner0 = BannerAd(
  adUnitId: banner,
  size: AdSize.banner,
  request: AdRequest(),
  listener: BannerAdListener(),
);
ValueNotifier<bool> isloaded = ValueNotifier<bool>(false);
//stage 2
final BannerAdListener listener = BannerAdListener(
  // Called when an ad is successfully received.
  onAdLoaded: (Ad ad) {
    print('Ad loaded.');
    isloaded.value = true;
  },
  // Called when an ad request failed.
  onAdFailedToLoad: (Ad ad, LoadAdError error) {
    // Dispose the ad here to free resources.
    ad.dispose();
    print('Ad failed to load: $error');
  },
  // Called when an ad opens an overlay that covers the screen.
  onAdOpened: (Ad ad) => print('Ad opened.'),
  // Called when an ad removes an overlay that covers the screen.
  onAdClosed: (Ad ad) => print('Ad closed.'),
  // Called when an impression occurs on the ad.
  onAdImpression: (Ad ad) => print('Ad impression.'),
);

//stage 3
final AdWidget adWidget = AdWidget(ad: myBanner);
final Container bannerContainer = Container(
  alignment: Alignment.center,
  child: adWidget,
  width: myBanner.size.width.toDouble(),
  height: myBanner.size.height.toDouble(),
);
final AdWidget adWidget2 = AdWidget(ad: myBanner2);
final Container bannerContainer2 = Container(
  alignment: Alignment.center,
  child: adWidget2,
  width: myBanner2.size.width.toDouble(),
  height: myBanner2.size.height.toDouble(),
);

final AdWidget adWidget3 = AdWidget(ad: myBanner3);
final Container bannerContainer3 = Container(
  alignment: Alignment.center,
  child: adWidget3,
  width: myBanner3.size.width.toDouble(),
  height: myBanner3.size.height.toDouble(),
);
final AdWidget adWidget4 = AdWidget(ad: myBanner4);
final Container bannerContainer4 = Container(
  alignment: Alignment.center,
  child: adWidget4,
  width: myBanner4.size.width.toDouble(),
  height: myBanner4.size.height.toDouble(),
);
final AdWidget adWidget5 = AdWidget(ad: myBanner5);
final Container bannerContainer5 = Container(
  alignment: Alignment.center,
  child: adWidget5,
  width: myBanner5.size.width.toDouble(),
  height: myBanner5.size.height.toDouble(),
);
final AdWidget adWidget6 = AdWidget(ad: myBanner6);
final Container bannerContainer6 = Container(
  alignment: Alignment.center,
  child: adWidget6,
  width: myBanner6.size.width.toDouble(),
  height: myBanner6.size.height.toDouble(),
);
final AdWidget adWidget7 = AdWidget(ad: myBanner7);
final Container bannerContainer7 = Container(
  alignment: Alignment.center,
  child: adWidget7,
  width: myBanner7.size.width.toDouble(),
  height: myBanner7.size.height.toDouble(),
);
final AdWidget adWidget8 = AdWidget(ad: myBanner8);
final Container bannerContainer8 = Container(
  alignment: Alignment.center,
  child: adWidget8,
  width: myBanner8.size.width.toDouble(),
  height: myBanner8.size.height.toDouble(),
);
final AdWidget adWidget9 = AdWidget(ad: myBanner9);
final Container bannerContainer9 = Container(
  alignment: Alignment.center,
  child: adWidget9,
  width: myBanner9.size.width.toDouble(),
  height: myBanner9.size.height.toDouble(),
);
final AdWidget adWidget0 = AdWidget(ad: myBanner0);
final Container bannerContainer0 = Container(
  alignment: Alignment.center,
  child: adWidget0,
  width: myBanner0.size.width.toDouble(),
  height: myBanner0.size.height.toDouble(),
);

const AdRequest request = AdRequest(
  /* keywords: <String>[
    "games",
    'sports',
    'news',
    'travel',
    'food',
    'music',
    'movies',
    'education',
    'health',
    'technology',
    'fashion',
    'business',
    'finance',
    'shopping',
    'home improvement',
    'gadgets',
    'parenting',
    'pets',
    'finance',
    'investment',
    'stocks',
    'trading',
    'forex',
    'currencies',
    'cryptocurrency',
    'bitcoin',
    'ethereum',
    'blockchain',
    'wallets',
    'investment strategies',
    'stock market news',
    'crypto trading',
    'financial planning',
    'retirement planning',
    'wealth management',
    'personal finance',
    'business news',
    'economics',
    'beauty',
    'fitness',
  ],
  contentUrl: 'http://foo.com/bar.html',
  nonPersonalizedAds: true, */
);

void createInterstitialAd() {
  InterstitialAd.load(
      adUnitId: Platform.isAndroid
          ? interstitial
          : 'ca-app-pub-3940256099942544/4411468910',
      request: request,
      adLoadCallback: InterstitialAdLoadCallback(
        onAdLoaded: (InterstitialAd ad) {
          print('$ad loaded');
          interstitialAd = ad;
          numInterstitialLoadAttempts = 0;
          interstitialAd!.setImmersiveMode(true);
        },
        onAdFailedToLoad: (LoadAdError error) {
          print('InterstitialAd failed to load: $error.');
          numInterstitialLoadAttempts += 1;
          interstitialAd = null;
          if (numInterstitialLoadAttempts < maxFailedLoadAttempts) {
            createInterstitialAd();
          }
        },
      ));
}

void showInterstitialAd() {
  if (interstitialAd == null) {
    print('Warning: attempt to show interstitial before loaded.');
    return;
  }
  interstitialAd!.fullScreenContentCallback = FullScreenContentCallback(
    onAdShowedFullScreenContent: (InterstitialAd ad) =>
        print('ad onAdShowedFullScreenContent.'),
    onAdDismissedFullScreenContent: (InterstitialAd ad) {
      print('$ad onAdDismissedFullScreenContent.');
      ad.dispose();
      createInterstitialAd();
    },
    onAdFailedToShowFullScreenContent: (InterstitialAd ad, AdError error) {
      print('$ad onAdFailedToShowFullScreenContent: $error');
      ad.dispose();
      createInterstitialAd();
    },
  );
  interstitialAd!.show();
  interstitialAd = null;
}

void createRewardedAd() {
  RewardedAd.load(
      adUnitId: Platform.isAndroid
          ? rewarded
          : 'ca-app-pub-3940256099942544/1712485313',
      request: request,
      rewardedAdLoadCallback: RewardedAdLoadCallback(
        onAdLoaded: (RewardedAd ad) {
          print('$ad loaded.');
          rewardedAd = ad;
          numRewardedLoadAttempts = 0;
        },
        onAdFailedToLoad: (LoadAdError error) {
          print('RewardedAd failed to load: $error');
          rewardedAd = null;
          numRewardedLoadAttempts += 1;
          if (numRewardedLoadAttempts < maxFailedLoadAttempts) {
            createRewardedAd();
          }
        },
      ));
}

void showRewardedAd() {
  if (rewardedAd == null) {
    print('Warning: attempt to show rewarded before loaded.');
    return;
  }
  rewardedAd!.fullScreenContentCallback = FullScreenContentCallback(
    onAdShowedFullScreenContent: (RewardedAd ad) =>
        print('ad onAdShowedFullScreenContent.'),
    onAdDismissedFullScreenContent: (RewardedAd ad) {
      print('$ad onAdDismissedFullScreenContent.');
      ad.dispose();
      createRewardedAd();
    },
    onAdFailedToShowFullScreenContent: (RewardedAd ad, AdError error) {
      print('$ad onAdFailedToShowFullScreenContent: $error');
      ad.dispose();
      createRewardedAd();
    },
  );

  rewardedAd!.setImmersiveMode(true);
  rewardedAd!.show(onUserEarnedReward: (AdWithoutView ad, RewardItem reward) {
    print('$ad with reward $RewardItem(${reward.amount}, ${reward.type})');
  });
  rewardedAd = null;
}

void createRewardedInterstitialAd() {
  RewardedInterstitialAd.load(
      adUnitId: Platform.isAndroid
          ? rewardedInterstitial
          : 'ca-app-pub-3940256099942544/6978759866',
      request: request,
      rewardedInterstitialAdLoadCallback: RewardedInterstitialAdLoadCallback(
        onAdLoaded: (RewardedInterstitialAd ad) {
          print('$ad loaded.');
          rewardedInterstitialAd = ad;
          numRewardedInterstitialLoadAttempts = 0;
        },
        onAdFailedToLoad: (LoadAdError error) {
          print('RewardedInterstitialAd failed to load: $error');
          rewardedInterstitialAd = null;
          numRewardedInterstitialLoadAttempts += 1;
          if (numRewardedInterstitialLoadAttempts < maxFailedLoadAttempts) {
            createRewardedInterstitialAd();
          }
        },
      ));
}

void showRewardedInterstitialAd() {
  if (rewardedInterstitialAd == null) {
    print('Warning: attempt to show rewarded interstitial before loaded.');
    return;
  }
  rewardedInterstitialAd!.fullScreenContentCallback = FullScreenContentCallback(
    onAdShowedFullScreenContent: (RewardedInterstitialAd ad) =>
        print('$ad onAdShowedFullScreenContent.'),
    onAdDismissedFullScreenContent: (RewardedInterstitialAd ad) {
      print('$ad onAdDismissedFullScreenContent.');
      ad.dispose();
      createRewardedInterstitialAd();
    },
    onAdFailedToShowFullScreenContent:
        (RewardedInterstitialAd ad, AdError error) {
      print('$ad onAdFailedToShowFullScreenContent: $error');
      ad.dispose();
      createRewardedInterstitialAd();
    },
  );

  rewardedInterstitialAd!.setImmersiveMode(true);
  rewardedInterstitialAd!.show(
      onUserEarnedReward: (AdWithoutView ad, RewardItem reward) {
    print('$ad with reward $RewardItem(${reward.amount}, ${reward.type})');
  });
  rewardedInterstitialAd = null;
}

void adRewardPermission(context) {
  showDialog(
      context: context,
      builder: (context) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            AlertDialog(
              title: const Text('Ad Consent'),
              content: Column(
                children: [
                  Text(
                      "The page you're about to wiew may be led by an advetistment, do you wish to continue to the requested page after watching the short video?"),
                  //TextButton(onPressed: () {}, child: Text('Why watch ads?')),
                ],
              ),
              actions: [
                TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text("Cancel")),
                TextButton(
                    onPressed: () {
                      showRewardedAd();
                    },
                    child: Text("Watch Ads")),
              ],
            ),
          ],
        );
      });
}

void adIntRewardPermission(context) {
  showDialog(
      context: context,
      builder: (context) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            AlertDialog(
              title: const Text('Ad Consent'),
              content: Column(
                children: [
                  Text(
                      "The page you're about to wiew may be led by an advetistment, do you wish to continue to the requested page after watching the short video?"),
                  //TextButton(onPressed: () {}, child: Text('Why watch ads?')),
                ],
              ),
              actions: [
                TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text("Cancel")),
                TextButton(
                    onPressed: () {
                      showRewardedInterstitialAd();
                    },
                    child: Text("Watch Ads")),
              ],
            ),
          ],
        );
      });
}


/* watching ads helps the developer to be earn something for the hardwork put to get this piece of application done. if you wish to  */