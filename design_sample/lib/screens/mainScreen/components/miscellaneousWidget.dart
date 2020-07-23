import 'package:design_sample/components.dart/categoryButtonWidget.dart';
import 'package:flutter/material.dart';
import 'package:design_sample/constants/categoryData.dart';

class MiscellaenousWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        GridView.count(
          childAspectRatio: 4 / 1,
          crossAxisCount: 2,
          shrinkWrap: true,
          padding: EdgeInsets.all(10.0),
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10.0,
          children: <Widget>[
            for (int i = 0; i < categories.length; i++)
              categoryButton(categories[i].title, categories[i].icon)
          ],
        ),
        GestureDetector(
          onTap: () {},
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[Text("MORE"), Icon(Icons.keyboard_arrow_down)],
          ),
        ),
        Container(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[Text("INCOMING EXPENSES"), Text("12 total")],
            ),
          ),
        ),
        SizedBox(
          height: 300.0,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Container(
                        width: 300.0,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20.0)),
                        child: Column(
                          children: <Widget>[
                            Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                        CircleAvatar(
                                          child: Icon(Icons.flight_takeoff),
                                          backgroundColor: Color(0xffe0e0e0),
                                        ),
                                        SizedBox(width: 10.0),
                                        Text("BEAUTY & CARE"),
                                      ],
                                    ),
                                    SizedBox(height: 15.0),
                                    Text(
                                      "Dermal Softening",
                                    ),
                                    Text(
                                        "An effective antioxidant, protects the functionality of other vitamins, retains moisture and inhibits skin aging"),
                                    SizedBox(height: 15.0),
                                    Text("LOCATION"),
                                    Row(
                                      children: <Widget>[
                                        Icon(Icons.location_on),
                                        Text("498-300 NW 59th Ct, Miami")
                                      ],
                                    )
                                  ],
                                )),
                            Container(
                              color: Colors.red,
                              child: Center(
                                child: Text("CONFIRM 12.54 USD"),
                              ),
                            ),
                          ],
                        )));
              }),
        )
      ],
    );
  }
}
