import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:tyamo/Views/features/deviceInfo/BatteryInfo/BetteryInfo.dart';
import 'package:tyamo/Views/features/deviceInfo/General_Info/General_Info.dart';

import 'package:tyamo/Views/features/deviceInfo/UserStatus/UserStatus.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(builder: (context, orientation, screenType) {
      return MaterialApp(
          theme: ThemeData(),
          debugShowCheckedModeBanner: false,
          title: 'Tyamo',
          home: GeneralInfo());
    });
  }
}
