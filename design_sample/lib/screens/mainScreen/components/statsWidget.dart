import 'package:design_sample/bloc/stateChangeNotifier.dart';
import 'package:design_sample/components.dart/chartLegend.dart';
import 'package:design_sample/constants/categoryData.dart';
import 'package:design_sample/constants/pieChartData.dart';
import 'package:design_sample/models/categoryModel.dart';
import 'package:design_sample/theme/styles.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class StatsWidget extends StatefulWidget {
  @override
  _StatsWidgetState createState() => _StatsWidgetState();
}

class _StatsWidgetState extends State<StatsWidget> {
  int touchedIndex;
  @override
  Widget build(BuildContext context) {
    touchedIndex = Provider.of<StateChangeNotifier>(context).legendIndex;
    return Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 250.0,
              child: Center(
                child: Stack(
                  children: <Widget>[
                    Align(
                      alignment: Alignment.center,
                      child: PieChart(
                        PieChartData(
                            pieTouchData:
                                PieTouchData(touchCallback: (pieTouchResponse) {
                              setState(() {
                                if (pieTouchResponse.touchInput
                                        is FlLongPressEnd ||
                                    pieTouchResponse.touchInput is FlPanEnd) {
                                  touchedIndex = -1;
                                } else {
                                  touchedIndex =
                                      pieTouchResponse.touchedSectionIndex;
                                }
                              });
                            }),
                            centerSpaceRadius: 50.0,
                            sections: showCategories(touchedIndex),
                            sectionsSpace: 0.0,
                            borderData: FlBorderData(
                              show: false,
                            )),
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Text(
                              "12",
                              textScaleFactor: 2,
                            ),
                            Text("Expenses")
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 20.0),
            SizedBox(
                height: 140,
                child: GridView.count(
                  shrinkWrap: true,
                  mainAxisSpacing: 0,
                  crossAxisSpacing: 0,
                  crossAxisCount: 1,
                  childAspectRatio: 10 / 1,
                  children: <Widget>[
                    for (int i = 0; i < categories.length; i++)
                      ChartLegend(categories[i], i)
                  ],
                )),
          ],
        ));
  }
}
