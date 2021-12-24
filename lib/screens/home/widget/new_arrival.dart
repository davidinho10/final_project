import 'package:final_project/Models/clothes.dart';
import 'package:final_project/screens/home/widget/clothes_item.dart';
import 'package:flutter/material.dart';

import 'categories_list.dart';

class NewArrival extends StatelessWidget {
   NewArrival({Key key}) : super(key: key);

  final clothesList = Clothes.generateClothes();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children:  [
           const CategoriesList('New Arrival'),
          Container(
            height: 280,
            child: ListView.separated(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              scrollDirection: Axis.horizontal,
                itemBuilder: (context , index) => ClothesItem(clothesList[index]),
                separatorBuilder: ( _, index) => const SizedBox(width: 10,), itemCount: clothesList.length),
          )
        ],
      )
    );
  }
}
