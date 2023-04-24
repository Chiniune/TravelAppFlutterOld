import 'package:flutter/material.dart';
import '../../main.dart' as Main;

class CityUI extends StatelessWidget {
  final String? image, monthyear, oldprice;
  final String? name, discount, newprice;

  const CityUI(
      {Key? key,
      this.image,
      this.monthyear,
      this.oldprice,
      this.name,
      this.discount,
      this.newprice})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      children: [
        Column(
          children: <Widget>[
            ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                child: Stack(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Container(
                        height: size.height * .2,
                        width: size.width - 20,
                        //   child: Image.asset(image,fit: BoxFit.cover,)
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(image!), fit: BoxFit.fill)),
                      ),
                    ),
                    Positioned(
                      height: 200,
                      width: size.width - 20,
                      left: 10,
                      //right: 0,
                      bottom: 0,
                      child: Container(
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                colors: [Colors.black, Colors.black12],
                                begin: Alignment.bottomCenter,
                                end: Alignment.topCenter)),
                      ),
                    ),
                    Positioned(
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 8, vertical: 2),
                            //decoration: BoxDecoration(
                            //   shape: BoxShape.rectangle,
                            //   color: Colors.black.withOpacity(.4),
                            //  borderRadius: BorderRadius.all(Radius.circular(10))
                            // ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  name!,
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                Text(
                                  monthyear!,
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                          Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 8, vertical: 2),
                              decoration: BoxDecoration(
                                  shape: BoxShape.rectangle,
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.local_offer,
                                    color: Colors.red.shade500,
                                  ),
                                  Text(
                                    "-" + discount! + "%",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.red),
                                  ),
                                ],
                              ))
                        ],
                      ),
                      left: 10,
                      bottom: 10,
                      right: 15,
                    )
                  ],
                )),
            SizedBox(
              height: 7,
            ),
            // Row(
            //   mainAxisSize: MainAxisSize.max,
            //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //   children: <Widget>[
            //     SizedBox(
            //       height: 10,
            //     ),
            //     Text("\$ " + '${(newprice)}',
            //         style: TextStyle(
            //             color: Colors.red.shade900,
            //             fontWeight: FontWeight.bold,
            //             fontStyle: FontStyle.italic)),
            //     SizedBox(
            //       width: Main.width! * 0.08,
            //     ),
            //     Text("\$ " + '${(oldprice)}',
            //         style: TextStyle(
            //             color: Colors.black87,
            //             fontWeight: FontWeight.w400,
            //             fontStyle: FontStyle.italic,
            //             decoration: TextDecoration.lineThrough)),
            //   ],
            // ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ],
    );
  }

  static List<CityUI> cityList() {
    final List<CityUI> cites = [
      CityUI(
        image: "assets/images/bana43.png",
        name: "Than Tai Mountain",
        monthyear: "Far 1399",
        oldprice: "258500",
        newprice: "150000",
        discount: "58",
      ),
      CityUI(
        image: "assets/images/bana43.png",
        name: "Asia Park",
        monthyear: "Far 1399",
        oldprice: "258500",
        newprice: "150000",
        discount: "58",
      ),
      CityUI(
        image: "assets/images/bana43.png",
        name: "Ba Na Hills",
        monthyear: "Far 1399",
        oldprice: "258500",
        newprice: "150000",
        discount: "58",
      ),
    ];
    return cites;
  }
}
