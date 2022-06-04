import 'package:app/models/Food.dart';
import 'package:app/models/restaurant.dart';
import 'package:app/screens/home/widgets/FoodItem.dart';
import 'package:app/screens/home/widgets/food_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class FoodListView extends StatelessWidget {

final int selected;
final Function callback; 
final PageController pagecontroller; 
final Restaurant restaurant;

FoodListView(this.selected, this.callback,this.pagecontroller,this.restaurant);

  @override
  Widget build(BuildContext context) {
    final category = restaurant.menu.keys.toList();
    
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: PageView(
        controller: pagecontroller,
        onPageChanged: (index) => callback(index),
        children: 
          category.map((e) => 
          ListView.separated(
            padding: EdgeInsets.zero,
            itemBuilder: (context, index)=> FoodItem(
              restaurant.menu[category[selected]]![index]
            ),
            separatorBuilder: (_, index) => SizedBox(height:15,
            ),
            itemCount: restaurant.menu[category[selected]]!.length)).toList(),
          
        
      )
    );
  }
}