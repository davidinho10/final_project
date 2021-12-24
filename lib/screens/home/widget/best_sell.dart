import 'package:flutter/material.dart';

import 'categories_list.dart';

class BestSell extends StatelessWidget {
  const BestSell({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CategoriesList('Best Of Sell'),
          Card(
            margin: const EdgeInsets.symmetric(horizontal: 25),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child:Image.asset('assets/images/best1.png',width: 80),
                      ),
                      const SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text('Miniso Woman Oversize',style: TextStyle(fontWeight: FontWeight.bold,height: 1.5),),
                          Text('T-Shirt',style: TextStyle(fontWeight: FontWeight.bold,height: 1.5)),
                          Text('\$79.99',style: TextStyle(fontWeight: FontWeight.bold,height: 1.5)),
                        ],
                      ),
                    ],
                  ),
                ),
                 Positioned(
                  top: 0,
                  right: 0,
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.9),
                      shape: BoxShape.circle),
                    child: const Icon(
                      Icons.favorite,
                      color: Colors.red,
                      size: 15,
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
