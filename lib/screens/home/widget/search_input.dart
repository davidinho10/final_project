import 'package:flutter/material.dart';

class SearchInput extends StatelessWidget {

   SearchInput({Key key}) : super(key: key);

  final tagList = ['Woman', 'T-shirt' , 'Dress'];
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          Row(
            children:  [
              Flexible(
                flex: 1,
                child: TextField(
                  cursorColor: Colors.white,
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none
                    ),
                    hintText: 'Search Aesthetic Shirt',
                    hintStyle: const TextStyle(color: Colors.grey, fontSize: 18),
                  prefixIcon: Container(
                    padding: const EdgeInsets.all(15),
                    child: IconButton(onPressed: () {  }, icon: const Icon(Icons.search),
                      
                    ),
                  )
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left:10),
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.circular(15)
                ),
                child: IconButton ( icon : const Icon(Icons.filter_list), onPressed: () {  },)
              )
            ],
          ),
          Row(
            children:
              tagList.map((e) => Container(
                margin: const EdgeInsets.only(top: 10,right: 10),
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Theme.of(context).colorScheme.secondary
                ),
                child: Text(e,
                  style: const TextStyle(color: Colors.green),
                ),
              )).toList(),
          ),
        ],
      ),
    );
  }
}
