import 'package:flutter/material.dart';
import '../model/Travel.dart';
import 'item/item169.dart';

class WishList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Item169(isWishLish: true, listItems: Travel.getTravelItems()));
  }
}
