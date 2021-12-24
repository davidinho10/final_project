import 'package:final_project/Models/clothes.dart';
import 'package:final_project/detail/widget/clothes_info.dart';
import 'package:final_project/detail/widget/detail_app_bar.dart';
import 'package:final_project/detail/widget/size_list.dart';
import 'package:final_project/screens/home/widget/add_cart.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {


 final Clothes clothes;
    const DetailPage(this.clothes);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DetailAppBar(clothes), ClothesInfo(clothes), const SizeList(), AddCart(clothes)
          ],
        ),
      ),
    );
  }
}
