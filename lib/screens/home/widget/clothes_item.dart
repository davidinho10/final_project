import 'package:final_project/Models/clothes.dart';
import 'package:final_project/detail/detail.dart';
import 'package:flutter/material.dart';

class ClothesItem extends StatelessWidget {
  final Clothes clothes;
    const ClothesItem (this.clothes);
  @override
  Widget build(BuildContext context) {
    return Container(
      child:  GestureDetector(
        onTap: (){
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context)=> DetailPage(clothes))
          );
        },
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15)
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Stack(
                children: [
                  Container(
                    margin: const EdgeInsets.all(8),
                    height: 170,
                    width: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(
                        image: AssetImage(clothes.imageUrl),
                        fit: BoxFit.fitHeight,
                      )
                    ),
                  ),
                  Positioned(
                      right: 20,
                      top: 15,
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.9),
                          shape: BoxShape.circle),
                        child: const Icon(Icons.favorite, color: Colors.red,
                          size: 15),))
                ],
              ),
              Text(clothes.title,
                style: const TextStyle(fontWeight: FontWeight.bold,height: 1.5)),
              Text(clothes.subtitle,
                  style: const TextStyle(fontWeight: FontWeight.bold,height: 1.5)),
              Text(clothes.price,
                  style: const TextStyle(fontWeight: FontWeight.bold,height: 1.5)),
            ],
          ),
        ),
      ),
    );
  }
}
