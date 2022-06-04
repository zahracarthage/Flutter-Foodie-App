import 'package:app/constants/constants.dart';
import 'package:app/models/restaurant.dart';
import 'package:app/screens/home/widgets/foodListView.dart';
import 'package:app/screens/home/widgets/food_list.dart';
import 'package:app/screens/home/widgets/restaurant_info.dart';
import 'package:app/widgets/custom_app_Bar.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePage extends StatefulWidget {

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var selected = 0; 
  final pageController = PageController();
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
              pageController.jumpToPage(index);
            },restaurant), 
            Expanded(
              child : FoodListView(
                selected, 
                (int index)
                {
                  setState((){
                    selected = index; 
                  });
                },
                pageController,
                restaurant,
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 25),
              height: 60,
              child: SmoothPageIndicator(
                controller: pageController,
                count : restaurant.menu.length,
                effect: CustomizableEffect(
                  dotDecoration: DotDecoration(
                    width: 8,
                    height: 8,
                    color: Colors.green.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  activeDotDecoration: DotDecoration(
                    width: 10,
                    height: 10,
                    color: kBackground,
                    borderRadius: BorderRadius.circular(10),
                    dotBorder: DotBorder(
                    color: kPrimaryColor,
                    padding: 2,
                    width: 2)
                  )
                  ),
                  onDotClicked: (index) => pageController.jumpToPage(index) ,
              )
              
            )
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: kPrimaryColor,
          elevation: 2,
          child: Icon(Icons.shopping_bag_outlined,
          color : Colors.black,
          size: 30,),
          

        ),
      
    );
    
  }
}