import 'package:flutter/material.dart';
import 'package:html/parser.dart' show parse;
import 'package:html/dom.dart' as dom;
import 'package:http/http.dart' as http;
import 'package:in_app_review/in_app_review.dart';
import 'package:share/share.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
import 'package:url_launcher/url_launcher.dart';

Future<List<Map<String, dynamic>>> loadNewRelease() async {
  List<Map<String, dynamic>> body = [];

  late String name, img, display, cpu, front, back, battery, price, more;
  List<dom.Element> latestRelease = [];

  final html = await http
      .get(Uri.parse("https://gadgets.ndtv.com/mobiles/latest-phones"))
      .onError((error, stackTrace) => throw Exception(error));

  if (html.statusCode == 200) {
    var shtml = parse(html.body);

    latestRelease = (shtml.getElementsByClassName("_lpdwgt _flx"));

    latestRelease.forEach((e) {
      img = e
              .getElementsByClassName("_lpimga")[0]
              .querySelector("img")!
              .attributes['data-original'] ??
          e
              .getElementsByClassName("_lpimga")[0]
              .querySelector("img")!
              .attributes['src']
              .toString();

      name = e
          .getElementsByClassName("_lpimga")[0]
          .querySelector("img")!
          .attributes['title']
          .toString();

      display = e.getElementsByClassName("_vltxt")[0].text.toString();
      cpu = e.getElementsByClassName("_vltxt")[1].text.toString();
      front = e.getElementsByClassName("_vltxt")[2].text.toString();
      back = e.getElementsByClassName("_vltxt")[3].text.toString();
      battery = e
          .getElementsByClassName("_lspclist _flx")[0]
          .children[0]
          .getElementsByClassName("_lpdsd")[4]
          .children
          .last
          .text
          .toString()
          .trim();

          
      price = e
          .getElementsByClassName("_lspcswgt _flx")[0]
          .children[1]
          .text
          .toString()
          .trim();

      more = e
          .getElementsByClassName("_lspclist _flx")[0]
          .children[0]
          .querySelector("tbody td > a")!
          .attributes['href']
          .toString()
          .trim();

      body.addAll([
        {
          "img": img,
          "name": name,
          "display": display,
          "cpu": cpu,
          "front": front,
          "back": back,
          "battery": battery,
          "price": price,
          "more": more
        }
      ]);
    });
  } else {
    throw Exception();
  }

  return body;

  //print(shtml.getElementsByClassName("_lpdwgt _flx"));
}

loadMobileTricks() async {}

loadMobileReviews() async {}

loadMobileRepaires() async {}

shareApp() {
  Share.share(
      'Check out my app https://play.google.com/store/apps/details?id=com.codeink.stsl.mobileSecretCodes',
      subject: 'Look what I made, You\'ll love it!');
}

otherApps() {
  launch(
      'https://play.google.com/store/apps/details?id=com.codeink.stsl.mobileSecretCodes');
}

Future<void> appReview() {
  InAppReview inAppReview = InAppReview.instance;
  return inAppReview.requestReview();
}

String? encodeQueryParameters(Map<String, String> params) {
  return params.entries
      .map((e) =>
          '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
      .join('&');
}

final Uri emailLaunchUri = Uri(
  scheme: 'mailto',
  path: 'deverloper.codeink.playconsole@gmail.com',
  query: encodeQueryParameters(<String, String>{
    'subject': 'Put your subject here',
    'body': "Add the body of your message here"
  }),
);
sendMail() {
  launch(emailLaunchUri.toString());
}

Future<dynamic> alertDialog(BuildContext context, title, content) {
  return showDialog(
    useSafeArea: true,
    context: context,
    builder: (BuildContext context) {
      return Center(child: SingleChildScrollView(child: AlertDialog(title: Text(title), content: Text(content))));
    },
  );
}

Future<dynamic> policies(BuildContext context, content) {
  return showDialog(
    useSafeArea: true,
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        contentPadding: EdgeInsets.all(0),
        content: Container(
          width: MediaQuery.of(context).size.width,
          child: SfPdfViewer.asset(
            content,
            /* initialZoomLevel: 1.2,
            initialScrollOffset: Offset(0, 0), */
            canShowScrollHead: true,
            canShowScrollStatus: true,
          ),
        ),
      );
    },
  );
}


parseDetails(){
/* 
document.querySelector("body > div._wrp > div._flx._cntnr > div._lhs > div._wgt-pdtl._fxdiv > div > ul._flx._pdtbs").style.display = "none"
document.querySelector("body > div._wrp > div.header").style.display = "none"
document.querySelector("body > div._wrp > div._flx._cntnr > div._lhs > ul")
document.querySelector("body > div._wrp > div._flx._cntnr > div._lhs > div._wgt-pdtl._fxdiv")
document.querySelector("#specs > div._erinfo")
 */

}