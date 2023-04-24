import 'package:flutter/material.dart';
import '../main.dart' as Main;
import 'SearchPage.dart';
import 'item/choiceItem.dart';
import '../config/clipper.dart';
import '../config/color.dart';

class HomeTop extends StatefulWidget {
  @override
  _HomeTop createState() => _HomeTop();
}

var selectedloc = 0;
List<String> locs = ['ENGLISH', 'VIETNAMESE'];

class _HomeTop extends State<HomeTop> {
  var isHomeSelected = true;
  var isHotelSelected = false;
  var isResSelected = false;
  TextEditingController c = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        ClipPath(
          clipper: Clipper08(),
          child: Container(
            height: Main.height! * .50 < 450 ? Main.height! * .50 : 500, //400
            //color: Colors.tealAccent,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [primaryColor, secondaryHeaderColor])),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: Main.height! / 18,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 16, right: 16),
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.location_on,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: Main.width! * 0.05,
                      ),
                      PopupMenuButton(
                        onSelected: (index) {
                          setState(() {
                            selectedloc = int.parse(index.toString());
                          });
                        },
                        child: Row(
                          children: <Widget>[
                            Text(
                              locs[selectedloc],
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16.0,
                              ),
                            ),
                            Icon(
                              Icons.keyboard_arrow_down,
                              color: Colors.white,
                            )
                          ],
                        ),
                        itemBuilder: (BuildContext context) {
                          return <PopupMenuItem<int>>[
                            PopupMenuItem(
                              child: Text(
                                locs[0],
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16.0,
                                ),
                              ),
                              value: 0,
                            ),
                            PopupMenuItem(
                              child: Text(
                                locs[1],
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16.0,
                                ),
                              ),
                              value: 1,
                            )
                          ];
                        },
                      ),
                      Spacer(),
                      Icon(
                        Icons.settings,
                        color: Colors.white,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: Main.height! / 16,
                ),
                Text(
                  'TRAVEL IN VIETNAM',
                  style: TextStyle(
                    fontSize: 24.0,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: Main.height! * 0.0375),
                Container(
                  width: 300,
                  padding: EdgeInsets.symmetric(horizontal: 32.0),
                  child: Material(
                    elevation: 5.0,
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    child: TextField(
                      textAlignVertical: TextAlignVertical.center,
                      controller: c,
                      style: TextStyle(
                        fontSize: 15.0,
                        color: Colors.black,
                      ),
                      cursorColor: primaryColor,
                      decoration: InputDecoration(
                          hintText: "Search something",
                          border: InputBorder.none,
                          contentPadding:
                              EdgeInsets.only(left: 25, right: 5, bottom: 8),
                          suffixIcon: Material(
                            child: InkWell(
                              child: Icon(
                                Icons.search,
                                color: Colors.black,
                              ),
                              onTap: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return SearchPage(
                                      fromloc: locs[selectedloc],
                                      toloc: c.text);
                                }));
                              },
                            ),
                            elevation: 2.0,
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                          )),
                    ),
                  ),
                ),
                SizedBox(
                  height: Main.height! * 0.025,
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    InkWell(
                      child: Choice08(
                          icon: Icons.home_outlined,
                          text: "Home",
                          selected: isHomeSelected),
                      onTap: () {
                        setState(() {
                          isHomeSelected = true;
                          isHotelSelected = false;
                          isResSelected = false;
                        });
                      },
                    ),
                    SizedBox(
                      width: Main.width! * 0.055,
                    ),
                    InkWell(
                      child: Choice08(
                          icon: Icons.hotel,
                          text: "Hotels",
                          selected: isHotelSelected),
                      onTap: () {
                        setState(() {
                          isHotelSelected = true;
                          isHomeSelected = false;
                          isResSelected = false;
                        });
                      },
                    ),
                    SizedBox(
                      width: Main.width! * 0.055,
                    ),
                    InkWell(
                      child: Choice08(
                          icon: Icons.restaurant_outlined,
                          text: "Restaurant",
                          selected: isResSelected),
                      onTap: () {
                        setState(() {
                          isResSelected = true;
                          isHomeSelected = false;
                          isHotelSelected = false;
                        });
                      },
                    ),
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
