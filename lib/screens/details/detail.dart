import 'package:app/constants/constants.dart';
import 'package:app/models/Food.dart';
import 'package:app/screens/details/widget/food_details.dart';
import 'package:app/screens/details/widget/food_img.dart';
import 'package:app/widgets/custom_app_Bar.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {

  final Food food; 
  DetailPage(this.food);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
        body : SingleChildScrollView(
          child: Column(
            children: [
            CustomAppBar(Icons.arrow_back_ios_outlined, 
            Icons.favorite_outline,
            leftCallBack: () => Navigator.of(context).pop(),
            ),
            FoodImg(food),
            FoodDetail(food),

          ]
          ),
        ),
        floatingActionButton: Container(
          width: 100,
          height: 56,
          child: RawMaterialButton(
            fillColor: kPrimaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
            elevation: 2,
            child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly, 
               children: [
                 Icon(Icons.shopping_bag_outlined,
                 color: Colors.black,
                 size: 30,),
                 Container(
                   padding: EdgeInsets.all(15),
                   decoration: BoxDecoration(
                     color: Colors.white,
                     shape: BoxShape.circle,
                   ),
                   child: Text(food.quantity.toString(),
                   style: TextStyle(
                     color : Colors.black,
                     fontSize: 18,
                     fontWeight: FontWeight.bold,
                   ),
                   ),
                 )
               ],

            ),
            onPressed: () {},
        ),
    )
    );
    
  }
}