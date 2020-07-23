import 'package:design_sample/bloc/stateChangeNotifier.dart';
import 'package:design_sample/screens/mainScreen/components/miscellaneousWidget.dart';
import 'package:design_sample/screens/mainScreen/components/statsWidget.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final stateNotifier = Provider.of<StateChangeNotifier>(context);
    return SafeArea(
      child: Scaffold(
          backgroundColor: Color(0xfff0f0f0),
          body: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Container(
                    child: Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Icon(Icons.arrow_back),
                                Icon(Icons.more_horiz)
                              ],
                            ),
                            SizedBox(height: 20.0),
                            Text("My Expenses"),
                            Text("Summary (Private)"),
                            SizedBox(height: 20.0),
                            Row(
                              children: <Widget>[
                                CircleAvatar(
                                  backgroundColor: Color(0xffe0e0e0),
                                  child: Icon(Icons.calendar_today),
                                ),
                                SizedBox(width: 10.0),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                        "${DateFormat.yMMMd().format(DateTime.now())}"),
                                    Text("18% more than last month")
                                  ],
                                )
                              ],
                            )
                          ],
                        ))),
                Container(
                  child: Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Row(
                        children: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text("CATEGORIES"),
                              Text("7 total")
                            ],
                          ),
                          Spacer(),
                          IconButton(
                              icon: Icon(Icons.insert_chart),
                              onPressed: () {
                                stateNotifier.setTabSwitchIndex(0);
                              }),
                          IconButton(
                              icon: Icon(Icons.list),
                              onPressed: () {
                                stateNotifier.setTabSwitchIndex(1);
                              })
                        ],
                      )),
                ),
                stateNotifier.tabSwitchIndex == 0
                    ? MiscellaenousWidget()
                    : StatsWidget(),
              ],
            ),
          )),
    );
  }
}
