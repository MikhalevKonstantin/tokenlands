import 'package:flutter/material.dart';
import 'package:tokenlands/screens/main_screen.dart';
import 'package:tokenlands/screens/phone.dart';
import 'dart:io' show Platform;
import 'package:flutter/foundation.dart';
import 'dart:ui' as dartui;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print(dartui.window.physicalSize.width);
    return checkPlatformWidth();
  }
}

// getPlatform() {
//   if (Platform.isAndroid || Platform.isIOS || Platform.isFuchsia) {
// // mobile-specific code
//     return Phone();
//     return MainScreen();
//   } else {
// // web-specific code
//     return MainScreen();
//     //  return Phone();
//   }
// }
//
// getPlatform2() {
//   if ((defaultTargetPlatform == TargetPlatform.iOS) ||
//       (defaultTargetPlatform == TargetPlatform.android)) {
// // mobile-specific code
//     return Phone();
//     return MainScreen();
//   } else if ((defaultTargetPlatform == TargetPlatform.linux) ||
//       (defaultTargetPlatform == TargetPlatform.macOS) ||
//       (defaultTargetPlatform == TargetPlatform.windows)) {
// // web-specific code
//     return MainScreen();
//     //  return Phone();
//   }
// }
//
checkPlatformWidth() {
  if (dartui.window.physicalSize.width >= 1280) {
// mobile-specific code
//     return Phone();
    return MainScreen();
  } else {
// web-specific code
//     return MainScreen();
    return Phone();
  }
}
