import 'package:flutter/material.dart';
//import 'package:ussd_service/ussd_service.dart';

message(context, message) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    content: Text(message),
  ));
}
/*
dialCode(BuildContext context, String sc) async {
  int subscriptionId = 1; // sim card subscription ID
  String code = sc; // ussd code payload
  try {
    String ussdResponseMessage = await UssdService.makeRequest(
      subscriptionId,
      code,
      const Duration(seconds: 10), // timeout (optional) - default is 10 seconds
    );

    message(context, "succes! message: $ussdResponseMessage");
  } catch (e) {
    message(context, "error! code: $e - message: $e");
  }
}*/
