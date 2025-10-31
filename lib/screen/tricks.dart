import 'package:flutter/material.dart';
import 'package:in_app_review/in_app_review.dart';
import 'package:mobileSecretCodes/data/ads.dart';
import 'package:mobileSecretCodes/data/data.dart';
import 'package:mobileSecretCodes/data/parser_data.dart';
import 'package:share_plus/share_plus.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class Tricks extends StatefulWidget {
  const Tricks({super.key});

  @override
  State<Tricks> createState() => _TricksState();
}

class _TricksState extends State<Tricks> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    myBanner3.load();
  }

  @override
  Widget build(BuildContext context) {
    InAppReview inAppReview = InAppReview.instance;
    
      showInterstitialAd();
  
    return Scaffold(
        appBar: AppBar(
          foregroundColor: Colors.white,
          centerTitle: true,
          title: Text("TOP 50 Latest Phone Tricks",
              style: const TextStyle(color: Colors.white)),
          actions: [
            PopupMenuButton(
              itemBuilder: (context) => [
                PopupMenuItem(
                    onTap: () {
                      otherApps();
                    },
                    child: Text("Other Apps")),
                PopupMenuItem(
                    onTap: () {
                      shareApp();
                    },
                    child: Text("Share App")),
                PopupMenuItem(
                    onTap: () async {
                      if (await inAppReview.isAvailable()) {
                        inAppReview.requestReview();
                      }
                    },
                    child: Text("Rate App")),
                PopupMenuItem(child: Text("Exit"))
              ],
            ),
          ],
        ),
        body: SafeArea(
          child: Column(
            children: [
              Expanded(
                flex: 1,
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 16.0),
                  child: bannerContainer3,
                ),
              ),
              Expanded(
                flex: 9,
                child: SfPdfViewer.asset(
                  'assets/json/tricks.pdf',
                  canShowScrollHead: true,
                  canShowScrollStatus: true,
                ),
              ),
            ],
          ),
        ));
  }
}
