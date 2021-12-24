import 'package:final_project/screens/home/widget/best_sell.dart';
import 'package:final_project/screens/home/widget/custom_app_bar.dart';
import 'package:final_project/screens/home/widget/new_arrival.dart';
import 'package:final_project/screens/home/widget/search_input.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
   HomeScreen({Key key}) : super(key: key);
  final bottomList = {'home', 'menu', 'heart', 'user'};
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body:SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  [const CustomAppBar(),
            SearchInput(),
            NewArrival(),
            const BestSell(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        items: bottomList.map((e) => BottomNavigationBarItem(
            label: e,
            icon:Image.asset('assets/icons/$e.png', width: 25))).toList(),
      ),
    );
  }
}
