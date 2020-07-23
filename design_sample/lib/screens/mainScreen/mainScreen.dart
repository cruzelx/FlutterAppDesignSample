import 'package:design_sample/bloc/stateChangeNotifier.dart';
import 'package:design_sample/screens/mainScreen/components/headerWidget.dart';
import 'package:design_sample/screens/mainScreen/components/miscellaneousWidget.dart';
import 'package:design_sample/screens/mainScreen/components/statsWidget.dart';
import 'package:design_sample/theme/styles.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final stateNotifier = Provider.of<StateChangeNotifier>(context);
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            headerWidget,
            SizedBox(height: 10.0),
            Container(
              child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Row(
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("CATEGORIES", style: titleStyle),
                          Text("7 total", style: subtitleStyle),
                         
                        ],
                      ),
                      Spacer(),
                      GestureDetector(
                        onTap: () {
                          stateNotifier.setTabSwitchIndex(1);
                        },
                        child: CircleAvatar(
                          foregroundColor: stateNotifier.tabSwitchIndex == 1
                              ? Colors.white
                              : Colors.grey.shade700,
                          child: Icon(Icons.insert_chart),
                          backgroundColor: stateNotifier.tabSwitchIndex == 1
                              ? Colors.redAccent
                              : Color(0xfff0f0f0),
                        ),
                      ),
                      SizedBox(width: 10.0),
                      GestureDetector(
                        onTap: () {
                          stateNotifier.setTabSwitchIndex(0);
                        },
                        child: CircleAvatar(
                          foregroundColor: stateNotifier.tabSwitchIndex == 0
                              ? Colors.white
                              : Colors.grey.shade700,
                          child: Icon(Icons.list),
                          backgroundColor: stateNotifier.tabSwitchIndex == 0
                              ? Colors.redAccent
                              : Color(0xf0f0f0),
                        ),
                      ),
                    ],
                  )),
            ),
            AnimatedSwitcher(
              duration: Duration(milliseconds: 250),
              reverseDuration: Duration(milliseconds: 250),
              switchInCurve: Curves.easeInOut,
              switchOutCurve: Curves.easeInOutBack,
              child: stateNotifier.tabSwitchIndex == 0
                  ? MiscellaenousWidget()
                  : StatsWidget(),
            ),
          ],
        ),
      )),
    );
  }
}
