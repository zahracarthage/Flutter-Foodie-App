import 'package:app/constants/constants.dart';
import 'package:app/models/restaurant.dart';
import 'package:app/screens/home/widgets/food_list.dart';
import 'package:app/screens/home/widgets/restaurant_info.dart';
import 'package:app/widgets/custom_app_Bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var selected = 0; 
  final restaurant = Restaurant.generateRestaurant();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: kBackground,
        body : Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomAppBar(
              Icons.arrow_back_ios_outlined,
              Icons.search_outlined
            ),
            RestaurantInfo(),
            FoodList(selected, (int index)
            {
              setState(() {
                selected = index; 

              });
            },restaurant)
          ],
        )
      
    );
    
  }
}