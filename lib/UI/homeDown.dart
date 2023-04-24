import 'package:flutter/material.dart';
import '../main.dart' as Main;
import 'package:url_launcher/url_launcher.dart';
import 'homeTop.dart';
import '../config/color.dart';
import 'item/item34.dart';
import 'item/item169.dart';
import 'item/popularItem.dart';
import '../model/Travel.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Navigation.selindex=0;

    Main.width = MediaQuery.of(context).size.shortestSide;
    Main.height = MediaQuery.of(context).size.longestSide;
    double h = 50;
    double w = 50;
    return Scaffold(
      // bottomNavigationBar: /*NavigationTest()*/Navigation(),
      floatingActionButton: FloatingActionButton(
        elevation: 0,
        hoverElevation: 0,
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: Text("More Info :"),
                content: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    FittedBox(
                      fit: BoxFit.scaleDown,
                      child: SizedBox(
                        height: 50,
                        width: 50,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: StadiumBorder(),
                            onPrimary: Colors.white,
                          ),
                          child: Image.asset('assets/images/gmail.png'),
                          onPressed: () async {
                            const url = 'mailto:vttrinh.20it1@vku.udn.vn';
                            // const url = 'https://mail.google.com/mail/u/0/?view=cm&fs=1&tf=1&to=hasanmahani08@gmail.com&su=I+am+using+MIN+pa08+so&ui=2&tf=1';
                            if (await canLaunch(url)) {
                              await launch(url);
                            } else {
                              throw 'Could not launch $url';
                            }
                          },
                        ),
                      ),
                    ),
                    FittedBox(
                      fit: BoxFit.scaleDown,
                      child: SizedBox(
                        height: h,
                        width: w,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: StadiumBorder(),
                            onPrimary: Colors.white,
                          ),
                          child: Image.asset('assets/images/instagram.png'),
                          onPressed: () async {
                            const url = 'https://instagram.com/jin_abcd15';
                            if (await canLaunch(url)) {
                              await launch(url);
                            } else {
                              throw 'Could not launch $url';
                            }
                          },
                        ),
                      ),
                    ),
                    FittedBox(
                      fit: BoxFit.scaleDown,
                      child: SizedBox(
                        height: h,
                        width: w,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: StadiumBorder(),
                            onPrimary: Colors.white,
                          ),
                          child: Image.asset('assets/images/facebook.png'),
                          onPressed: () async {
                            const url =
                                'https://www.facebook.com/dulichdanang43a/';
                            if (await canLaunch(url)) {
                              await launch(url);
                            } else {
                              throw 'Could not launch $url';
                            }
                          },
                        ),
                      ),
                    ),
                    FittedBox(
                      fit: BoxFit.scaleDown,
                      child: SizedBox(
                        height: h,
                        width: w,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: StadiumBorder(),
                            onPrimary: Colors.white,
                          ),
                          child: Image.asset('assets/images/whatsapp.png'),
                          onPressed: () async {
                            const url = 'https://wa.me/+0332226695';
                            if (await canLaunch(url)) {
                              await launch(url);
                            } else {
                              throw 'Could not launch $url';
                            }
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          );
        },
        child: Icon(Icons.info_outline),
        backgroundColor: primaryColor.withOpacity(.5),
      ),

      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: <Widget>[
            HomeTop(),
            nearestTitle,
            Items34(),
            SizedBox(
              height: 20,
            ),
            tourTitle,
            Item169(isWishLish: false, listItems: Travel.getTravelItems()),
            popularTitle,
            popularItem(),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}

var tourTitle = Padding(
  padding: const EdgeInsets.all(8.0),
  child: Row(
    mainAxisSize: MainAxisSize.max,
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      // SizedBox(
      //   width: width! * 0.05,
      // ),
      Text(
        "Hot Tour",
        style: title,
      ),
      Spacer(),
      Text("VIEW ALL", style: viewallstyle)
    ],
  ),
);

var nearestTitle = Padding(
  padding: const EdgeInsets.all(8.0),
  child: Row(
    mainAxisSize: MainAxisSize.max,
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      // SizedBox(
      //   width: width! * 0.05,
      // ),
      Text(
        "Nearest to you",
        style: title,
      ),
      Spacer(),
      Text("VIEW ALL", style: viewallstyle)
    ],
  ),
);

var popularTitle = Padding(
  padding: const EdgeInsets.all(8.0),
  child: Row(
    mainAxisSize: MainAxisSize.max,
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      // SizedBox(
      //   width: width! * 0.05,
      // ),
      Text(
        "Popular Cities",
        style: title,
      )
    ],
  ),
);

var title =
    TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black);
var viewallstyle = TextStyle(fontSize: 14, color: primaryColor //Colors.teal
    );
