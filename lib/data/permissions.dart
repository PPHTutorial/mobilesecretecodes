import 'package:permission_handler/permission_handler.dart';

Future<bool> permissionHandler() async {
  bool isGranted = false;
  if (await Permission.phone.isGranted) {
    // Either the permission was already granted before or the user just granted it.
    isGranted = true;
  }

// You can request multiple permissions at once.
  Map<Permission, PermissionStatus> statuses = await [
    Permission.phone,
   // Permission.storage,
  ].request();
  print(statuses[Permission.phone]);
  return isGranted;
}
