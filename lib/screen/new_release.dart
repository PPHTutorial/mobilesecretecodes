import 'package:flutter/material.dart';
import 'package:in_app_review/in_app_review.dart';
import 'package:mobileSecretCodes/data/ads.dart';
import 'package:mobileSecretCodes/data/parser_data.dart';
import 'package:share/share.dart';
import 'package:url_launcher/url_launcher.dart';

class NewReleases extends StatefulWidget {
  const NewReleases({Key? key}) : super(key: key);

  @override
  State<NewReleases> createState() => _NewReleasesState();
}

class _NewReleasesState extends State<NewReleases> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    myBanner5.load();
    myBanner6.load();
  }

  @override
  Widget build(BuildContext context) {
    InAppReview inAppReview = InAppReview.instance;
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        centerTitle: true,
        title: Text("TOP 100 Latest Release",
            style: const TextStyle(color: Colors.white)),
        actions: [
          PopupMenuButton(
            itemBuilder: (context) => [
              PopupMenuItem(child: Text("Other Apps")),
              PopupMenuItem(
                  onTap: () {
                    Share.share(
                        'check out my website https://play.google.com/store/apps/details?id=com.codeink.stsl.mobileSecretCodes',
                        subject: 'Look what I made!');
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
              child: bannerContainer5,
            ),
            Expanded(
              flex: 9,
              child: FutureBuilder<List<Map<String, dynamic>>>(
                future: loadNewRelease(),
                builder: (context, snap) {
                  List<Map<String, dynamic>>? bodyList = snap.data;
                  if (snap.hasData) {
                    return ListView.builder(
                        itemCount: bodyList!.length,
                        itemBuilder: (context, index) {
                          return Container(
                            padding: EdgeInsets.all(8),
                            child: Row(
                              children: [
                                Expanded(
                                  flex: 4,
                                  child: Image.network(
                                    bodyList[index]['img'],
                                    height: 200,
                                    width: double.infinity,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                                Expanded(
                                  flex: 10,
                                  child: SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            Icon(Icons.phone_android,
                                                color: Colors.black38),
                                            Text('  ${bodyList[index]['name']}',
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 20)),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Icon(Icons.tv,
                                                color: Colors.black38),
                                            Text(
                                                '  DISPLAY:  ${bodyList[index]['display']}'),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Icon(Icons.memory,
                                                color: Colors.black38),
                                            Text(
                                                '  CPU: ${bodyList[index]['cpu']}'),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Icon(Icons.camera_front,
                                                color: Colors.black38),
                                            Text(
                                                '  SELFIE CAM: ${bodyList[index]["front"]}'),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Icon(Icons.camera,
                                                color: Colors.black38),
                                            Text(
                                                '  REARE CAM: ${bodyList[index]['back']}'),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Icon(Icons.battery_full,
                                                color: Colors.black38),
                                            Text(
                                                '  BATTERY: ${bodyList[index]['battery']}'),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Icon(Icons.attach_money,
                                                color: Colors.black38),
                                            Text(
                                                '  PRICE (₹): ${bodyList[index]['price']}'),
                                          ],
                                        ),
                                        ElevatedButton(
                                            onPressed: () {
                                              adIntRewardPermission(context);
                                              launch(bodyList[index]['more']);
                                            },
                                            child: Text("SeeFullSpecs")),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                        });
                  } else {
                    return Center(child: Text("Fetching Data..."));
                  }
                },
              ),
            ),
            Expanded(
              flex: 1,
              child: bannerContainer6,
            ),
          ],
        ),
      ),
    );
  }
}
