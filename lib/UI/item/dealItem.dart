import 'package:flutter/material.dart';
import '../../main.dart' as Main;
import 'cityUI.dart';
import '../../config/color.dart';

class dealItem extends StatelessWidget {
  List<CityUI> cities = CityUI.cityList();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text(
                "Deal of the day",
                style: TextStyle(
                    color: primaryColor,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        Container(
          height: size.height * .8,
          child: ListView.builder(
              itemBuilder: (context, index) => cities[index],
              shrinkWrap: true,
              padding: EdgeInsets.all(0.0),
              itemCount: cities.length,
              scrollDirection: Axis.vertical),
        ),
      ],
    );
    ;
  }
}
