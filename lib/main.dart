import 'package:flutter/material.dart';
import 'package:flutter_advanced/pages/details.dart';

import 'package:flutter_advanced/pages/home.dart';
import 'package:page_transition/page_transition.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      onGenerateRoute: (settings) {
        if (settings.name == DetailPage.routeName) {
          final args = settings.arguments as DetailPageArgs;
          return PageTransition(
            type: PageTransitionType.bottomToTop,
            child: DetailPage(args: args),
            settings: settings,
          );
        } else {
          return null;
        }
      },
      home: HomePage(),
    );
  }
}
