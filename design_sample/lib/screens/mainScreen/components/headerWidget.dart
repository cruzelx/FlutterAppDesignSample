import 'package:design_sample/theme/styles.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

final Widget headerWidget = Container(
    color: Colors.white,
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
            Text("My Expenses", style: headingStyle),
            Text("Summary (Private)", style: subtitleStyle),
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
                    Text("${DateFormat.yMMMd().format(DateTime.now())}",
                        style: titleStyle),
                    Text("18% more than last month", style: subtitleStyle)
                  ],
                )
              ],
            )
          ],
        )));
