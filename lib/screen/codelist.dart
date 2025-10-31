import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:mobileSecretCodes/data/ads.dart';
import 'package:mobileSecretCodes/data/config.dart';
import 'package:mobileSecretCodes/data/data.dart';
import 'package:mobileSecretCodes/screen/home_page.dart';

class CodeList extends StatefulWidget {
  const CodeList({super.key});

  @override
  State<CodeList> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<CodeList> {
  @override
  void initState() {
    super.initState();
    // Load banner ads for this screen
    myBanner7.load();
    myBanner8.load();
    myBanner9.load();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Positioned(
            top: 0,
            right: 0,
            left: 0,
            child: Transform(
              alignment: Alignment.center,
              transform: Matrix4.rotationX(math.pi),
              child: ClipPath(
                clipper: RoundedDiagonalPathClipper(),
                child: Container(
                  height: MediaQuery.of(context).size.height * .5,
                  decoration: const BoxDecoration(
                    //borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50), bottomRight: Radius.circular(50)),
                    color: primary,
                  ),
                  child: Transform(
                    alignment: Alignment.center,
                    transform: Matrix4.rotationX(math.pi),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Spacer(),
                        Flexible(
                          child: Center(
                              child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Flexible(
                                child: Image.asset('assets/images/icon.png',
                                    height: 250, fit: BoxFit.contain),
                              ),
                              SizedBox(height: 8),
                              Flexible(
                                child: Text("Most Popular Phone Brands",
                                    style: TextStyle(
                                        color: white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                    textAlign: TextAlign.center,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis),
                              ),
                            ],
                          )),
                        ),
                        Spacer(),
                        if (isloaded.value) bannerContainer7,
                        SizedBox(height: 8),
                        if (isloaded.value) bannerContainer8,
                        Spacer(),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 300,
            left: 0,
            right: 0,
            bottom: 80,
            child: GridView.builder(
                physics: BouncingScrollPhysics(),
                itemCount: list.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisSpacing: 0,
                  crossAxisSpacing: 0,
                  crossAxisCount: 3,
                ),
                itemBuilder: (BuildContext context, int index) {
                  return PhoneBrandsView(
                      index: index, gridViewCrossAxisCount: 3);
                }),
          ),
          // Bottom banner ad
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              alignment: Alignment.center,
              child: isloaded.value ? bannerContainer9 : const SizedBox(),
            ),
          ),
        ],
      ),
    );
  }
}
