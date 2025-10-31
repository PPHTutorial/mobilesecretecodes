import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mobileSecretCodes/screen/home_page.dart';
import 'package:permission_handler/permission_handler.dart';

class PermissionPage extends StatefulWidget {
  const PermissionPage({Key? key}) : super(key: key);

  @override
  State<PermissionPage> createState() => _PermissionPageState();
}

class _PermissionPageState extends State<PermissionPage> {
  void _permissionWatcher() {
    Timer.periodic(const Duration(seconds: 1), (timer) async {
      if (await Permission.phone.status.isGranted) {
        timer.cancel();
        if (mounted) {
          Navigator.pop(context);
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => const HomePage()));
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    _permissionWatcher();
    return Scaffold(
      body: Center(
        child: Text(
          "Accept permission",
          style: Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 20),
        ),
      ),
    );
  }
}
