import 'package:flutter/material.dart';

class Item169 extends StatelessWidget {
  List listItems = [];
  bool isWishLish = false;
  Item169({required this.isWishLish, required this.listItems});

  // void checkPage(String page, List list) {
  //   if (page == "wishtlist") {
  //     isWishlish = true;
  //   } else {
  //     isWishlish = false;
  //   }
  //   listItems = list;
  // }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(top: 20, left: 10, right: 10),
      height: isWishLish == false ? size.height * .5 : size.height * .8,
      child: ListView.builder(
          itemCount: listItems.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: EdgeInsets.only(bottom: 15.0),
              child: GestureDetector(
                onTap: () {
                  // Navigator.of(context).push(MaterialPageRoute(
                  //     builder: (context) => DetailView(id: index)));
                },
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(10),
                      ),
                      child: Image.asset(
                        listItems[index].imageUrl[1],
                        fit: BoxFit.fill,
                        height: 60.0,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // const SizedBox(
                          //   height: 8.0,
                          // ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                listItems[index].name,
                                style: const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  isWishLish == false
                                      ? Container(
                                          child: Row(
                                            children: [
                                              Image.asset(
                                                "assets/images/star.png",
                                                width: 30,
                                              ),
                                              Text(
                                                listItems[index]
                                                    .rating
                                                    .toString(),
                                                style: const TextStyle(
                                                  fontSize: 16.0,
                                                ),
                                              )
                                            ],
                                          ),
                                        )
                                      : FittedBox(
                                          fit: BoxFit.fitHeight,
                                          child: SizedBox(
                                            height: 30,
                                            width: 30,
                                            child: ElevatedButton(
                                              child: Image.asset(
                                                  'assets/images/facebook.png'),
                                              onPressed: () {},
                                            ),
                                          ),
                                        ),
                                ],
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                listItems[index].location,
                                style: const TextStyle(
                                  fontSize: 16.0,
                                  color: Color(0xff686771),
                                ),
                              ),
                              isWishLish == true
                                  ? Icon(
                                      Icons.delete_outline_rounded,
                                      color: Colors.red,
                                    )
                                  : SizedBox(),
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}
