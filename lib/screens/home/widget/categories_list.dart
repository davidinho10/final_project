import 'package:flutter/material.dart';

class CategoriesList extends StatelessWidget {
  final String title;
  const CategoriesList(this.title);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Text(title),
          Row(
            children: [
              const Text('View All'),
              Container(
                child: const Icon(Icons.arrow_forward_ios),
              )
            ],
          )
        ],
      ),
    );
  }
}
