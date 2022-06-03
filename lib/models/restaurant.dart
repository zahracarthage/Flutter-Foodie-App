import 'Food.dart';

class Restaurant{
  String name; 
  String waitTime; 
  String distance; 
  String label; 
  String logoUrl; 
  String desc; 
  num score; 
  Map<String, List<Food>> menu;


  Restaurant(this.name,
  this.waitTime,
  this.distance,
  this.label,
  this.logoUrl,
  this.desc,
  this.score,
  this.menu);


static Restaurant generateRestaurant()
{
  return Restaurant(
    'Restaurant',
    '20-30 min',
    '2.4km',
    'Restaurant',
    'assets/images/logo.jpeg',
    'Orange Sandwiches are delicious',
    4.7,
      {
        'Recommand': Food.generateRecommendFoods(),
        'Popular': Food.generatePopularFood(),
        'Noodles': [],
        'Pizza': [],
      },
    );
}

}