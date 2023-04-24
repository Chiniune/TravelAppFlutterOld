import 'package:flutter/material.dart';
import '../../model/Travel.dart';

class Items34 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    List<Travel> places = Travel.getNearestItems();
    return Container(
      margin: const EdgeInsets.only(top: 16, left: 10),
      height: size.height * .4,
      child: ListView.builder(
          itemCount: places.length,
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: EdgeInsets.only(right: 16.0),
              child: GestureDetector(
                onTap: () {
                  // Navigator.of(context).push(MaterialPageRoute(
                  //     builder: (context) => DetailView(id: index)));
                },
                child: Stack(
                  children: [
                    ClipRRect(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(24),
                        ),
                        child: Image.asset(places[index].imageUrl[1])),
                    Positioned(
                      bottom: 20,
                      left: 20,
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        decoration: const BoxDecoration(
                            color: Color.fromRGBO(0, 0, 0, .5),
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            )),
                        child: Text(
                          places[index].distance.toString() + "km away",
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
