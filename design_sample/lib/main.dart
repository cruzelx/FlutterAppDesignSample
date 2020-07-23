import 'package:design_sample/bloc/stateChangeNotifier.dart';
import 'package:design_sample/screens/mainScreen/mainScreen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(DesignSampleApp());
}

class DesignSampleApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => StateChangeNotifier(),
      child: MainScreen(),
    );
  }
}
