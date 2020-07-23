import 'package:design_sample/bloc/stateChangeNotifier.dart';
import 'package:design_sample/models/categoryModel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ChartLegend extends StatelessWidget {
  final Category category;
  final int index;

  ChartLegend(this.category, this.index);

  @override
  Widget build(BuildContext context) {
    final stateNotifier = Provider.of<StateChangeNotifier>(context);
    return GestureDetector(
      onTap: () {
        stateNotifier.setLegendIndex(index);
      },
      child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              color: stateNotifier.legendIndex == index ? Colors.green : null),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: <Widget>[
                Container(
                  width: 10.0,
                  height: 10.0,
                  color: category.color,
                ),
                SizedBox(width: 10.0),
                Text(category.title),
                Spacer(),
                Text("${category.amount} USD - ${category.percentage}%")
              ],
            ),
          )),
    );
  }
}
