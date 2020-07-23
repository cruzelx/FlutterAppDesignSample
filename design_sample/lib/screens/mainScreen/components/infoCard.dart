import 'package:design_sample/theme/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

final Widget infoCard = SizedBox(
  height: 260.0,
  child: ListView.builder(
      scrollDirection: Axis.horizontal,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return Padding(
            padding: EdgeInsets.all(10.0),
            child: Container(
                width: 270.0,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.0)),
                child: Column(
                  children: <Widget>[
                    Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                CircleAvatar(
                                  child: FaIcon(
                                    FontAwesomeIcons.pagelines,
                                    color: Colors.redAccent,
                                  ),
                                  backgroundColor: Color(0xffe0e0e0),
                                ),
                                SizedBox(width: 10.0),
                                Text("BEAUTY & CARE",
                                    style: titleStyle.copyWith(
                                        color: Colors.redAccent)),
                              ],
                            ),
                            SizedBox(height: 15.0),
                            Text(
                              "Dermal Softening",
                              style: subHeadingStyle,
                            ),
                            SizedBox(height: 5.0),
                            Text(
                              "An effective antioxidant, protects the functionality of other vitamins, retains moisture and inhibits skin aging",
                              style: textContentStyle,
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                            ),
                            SizedBox(height: 15.0),
                            Text("LOCATION", style: smallTitleStyle),
                            SizedBox(height: 3),
                            Row(
                              children: <Widget>[
                                Icon(Icons.location_on),
                                SizedBox(width: 5.0),
                                Text("498-300 NW 59th Ct, Miami")
                              ],
                            )
                          ],
                        )),
                    Spacer(),
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.redAccent,
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(20.0),
                              bottomRight: Radius.circular(20.0))),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text("CONFIRM 12.54 USD",
                            textAlign: TextAlign.center,
                            style:
                                smallTitleStyle.copyWith(color: Colors.white)),
                      ),
                    ),
                  ],
                )));
      }),
);
