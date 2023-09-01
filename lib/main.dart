import 'package:flutter/material.dart';
import 'package:resposiveui/responsive/desktop_scaffold.dart';
import 'package:resposiveui/responsive/mobile_scaffold.dart';
import 'package:resposiveui/responsive/responsive_layout.dart';
import 'package:resposiveui/responsive/tablet_scaffold.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ResponsiveLayout(
        mobileScaffold: const MobileScaffold(),
        tabletScaffold: const TabletSCaffold(),
        desktopScaffold: const DesktopScaffold(),
      ),
    );
  }
}
