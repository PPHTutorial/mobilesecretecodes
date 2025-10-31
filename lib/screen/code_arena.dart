import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:in_app_review/in_app_review.dart';
import 'package:mobileSecretCodes/data/ads.dart';
import 'package:mobileSecretCodes/data/config.dart';
import 'package:mobileSecretCodes/data/data.dart';
import 'package:mobileSecretCodes/data/dialer.dart';
import 'package:mobileSecretCodes/data/parser_data.dart';
import 'package:share_plus/share_plus.dart';
import 'package:url_launcher/url_launcher.dart';

class CodeArena extends StatefulWidget {
  const CodeArena({required this.platform, super.key});
  final String platform;

  @override
  State<CodeArena> createState() => _CodeArenaState();
}

class _CodeArenaState extends State<CodeArena> {
  bool search = false;
  TextEditingController sch = TextEditingController();
  GlobalKey<ScaffoldState> globalkey = GlobalKey<ScaffoldState>();
  InAppReview inAppReview = InAppReview.instance;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    myBanner4.load();
  }

  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> searchres = [];
    return Scaffold(
      key: globalkey,
      appBar: AppBar(
        foregroundColor: Colors.white,
        centerTitle: true,
        title: search == true
            ? TextField(
                cursorColor: Colors.white.withOpacity(.4),
                cursorHeight: 20,
                controller: sch,
                decoration: InputDecoration(
                  hintText: "Search Here",
                  hintStyle: TextStyle(
                    color: white.withOpacity(.4),
                  ),
                ),
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w800,
                ),
                onChanged: (t) {
                  print(t);

                  for (var element in codes) {
                    if (element['desc']!
                            .toLowerCase()
                            .toString()
                            .contains(t.toLowerCase().toString()) ||
                        element['code']!
                            .toLowerCase()
                            .toString()
                            .contains(t.toLowerCase().toString())) {
                      setState(() {
                        searchres.add(element);
                      });
                    }
                  }
                  if (globalkey.currentWidget!.key == globalkey) {
                    //Navigator.pop(context);
                  }
                  globalkey.currentState?.showBottomSheet((context) {
                    return Container(
                        color: primary,
                        height: MediaQuery.of(context).size.height * .89,
                        width: double.infinity,
                        child: Column(
                          children: [
                            const SizedBox(height: 16),
                            //Text("Welcome to my bottomsheet navigatoin"),
                            // SizedBox(height: 16),
                            Expanded(
                                flex: 9,
                                child: CodePlatform.listViewView(searchres)),
                          ],
                        ));
                  });
                },
              )
            : Text(
                widget.platform == "All"
                    ? "${widget.platform} android secret codes"
                    : "${widget.platform} secret codes",
                style: const TextStyle(color: Colors.white)),
        actions: [
          InkWell(
            onTap: () {
              setState(() {
                if (search == false) {
                  search = true;
                } else {
                  sch.text = "";
                  search = false;
                  if (globalkey.currentWidget!.key == globalkey) {
                    Navigator.pop(context);
                  }
                }
              });
              print('Search: $search');
            },
            child: Icon(
              search == true ? Icons.close : Icons.search,
            ),
          ),
          PopupMenuButton(
            itemBuilder: (context) => [
              PopupMenuItem(
                  onTap: () {
                    otherApps();
                  },
                  child: const Text("Other Apps")),
              PopupMenuItem(
                  onTap: () {
                    shareApp();
                  },
                  child: const Text("Share App")),
              PopupMenuItem(
                  onTap: () async {
                    if (await inAppReview.isAvailable()) {
                      inAppReview.requestReview();
                    }
                  },
                  child: const Text("Rate App")),
              const PopupMenuItem(child: Text("Exit"))
            ],
          ),
        ],
      ),
      body: SafeArea(
        child: Container(
          height: double.infinity,
          color: primary,
          child: Column(
            children: [
              if (isloaded.value) Expanded(flex: 1, child: bannerContainer4),
              Expanded(
                flex: 9,
                child: CodePlatform(
                  platform: widget.platform,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CodePlatform extends StatefulWidget {
  const CodePlatform({required this.platform, super.key});
  final String platform;
  @override
  State<CodePlatform> createState() => _CodePlatformState();

  static Widget listViewView(List<Map<String, String>> codes) {
    return codes.isEmpty
        ? Center(
            child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                'assets/icons/notfound.svg',
                height: 100,
                width: 200,
              ),
              const SizedBox(height: 20),
              const Text(
                "Search Returned no result,\nTRY AGAIN.",
                style: TextStyle(color: white, fontSize: 20),
                textAlign: TextAlign.center,
              ),
            ],
          ))
        : ListView.builder(
            shrinkWrap: true,
            physics: const BouncingScrollPhysics(),
            itemCount: codes.length,
            itemBuilder: ((context, int index) {
              return Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * .18,
                    padding: const EdgeInsets.all(8),
                    alignment: Alignment.center,
                    margin: const EdgeInsets.only(top: 16, left: 16, right: 16),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(10),
                      //  color: primary,
                      boxShadow: [
                        BoxShadow(
                          color: black.withOpacity(.3),
                          blurRadius: 2,
                          spreadRadius: 5,
                          offset: const Offset(0, 2),
                          blurStyle: BlurStyle.outer,
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Column(
                            //crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                padding: const EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  color: primary,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Text(
                                  "${codes[index]['code']!}",
                                  style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 24,
                                      fontWeight: FontWeight.w900),
                                ),
                              ),
                              const SizedBox(height: 8),
                              Text(
                                "${codes[index]['desc']!.split('.')[0]}",
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                ),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                              ),
                              const SizedBox(height: 12),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  InkWell(
                                    borderRadius: BorderRadius.circular(100),
                                    splashColor: Colors.grey,
                                    onTap: () {
                                      Clipboard.setData(ClipboardData(
                                          text: codes[index]['code']!));
                                      message(context,
                                          "${codes[index]['code']!} coppied successfully to clipbord");
                                     adRewardPermission(context);
                                    },
                                    child: const Icon(
                                      Icons.copy,
                                      color: Colors.white,
                                    ),
                                  ),
                                  const SizedBox(width: 16),
                                  InkWell(
                                    onTap: () async {
                                      showDialog(
                                          context: context,
                                          builder: (context) {
                                            return AlertDialog(
                                              title: const Text(
                                                  'Code Description'),
                                              content: Text(
                                                  "${codes[index]['desc']}"),
                                            );
                                          });
                                    },
                                    child: const Icon(
                                      Icons.info_outline,
                                      color: Colors.white,
                                    ),
                                  ),
                                  const SizedBox(width: 16),
                                  InkWell(
                                    onTap: () async {
                                     adRewardPermission(context);
                                      final code = Uri.encodeComponent(
                                          codes[index]['code'].toString());
                                      var url = 'tel:' + code;
                                      try {
                                        final uri = Uri.parse(url);
                                        if (await canLaunchUrl(uri)) {
                                          //showToast(sSomethingWrong);
                                          await launchUrl(uri);
                                          message(context,
                                              "Code ${codes[index]['code']!} is being dialed");
                                        }
                                      } catch (ex) {}
                                    },
                                    child: const Icon(
                                      Icons.dialpad,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  if (index == 4 ) bannerContainer8,
                  if (index == 8 ) bannerContainer9,
                  if (index == 15 ) bannerContainer5,
                  if (index == 20 ) bannerContainer0,
                ],
              );
            }),
          );
  }
}

class _CodePlatformState extends State<CodePlatform> {
  @override
  Widget build(BuildContext context) {
    switch (widget.platform) {
      case "Samsung":
        return CodePlatform.listViewView(samsung);
      case "Nokia":
        return CodePlatform.listViewView(nokia);
      case "Itel":
        return CodePlatform.listViewView(itel);
      case "Huawei":
        return CodePlatform.listViewView(huawei);
      case "iPhone":
        return CodePlatform.listViewView(iphone);
      case "Tecno":
        return CodePlatform.listViewView(tecno);
      case "Sony Xperia":
        return CodePlatform.listViewView(sony);
      case "Motorola":
        return CodePlatform.listViewView(motorola);
      case "Blackberry":
        return CodePlatform.listViewView(blackberry);
      case "Vivo":
        return CodePlatform.listViewView(vivo);
      case "Infinix":
        return CodePlatform.listViewView(infinix);
      case "Oppo":
        return CodePlatform.listViewView(oppo);

      default:
        return CodePlatform.listViewView(codes);
    }
  }
}
