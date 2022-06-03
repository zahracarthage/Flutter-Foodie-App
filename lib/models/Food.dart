class Food{
  String imgUrl; 
  String desc; 
  String name; 
  String waitTime;
  num score; 
  String cal; 
  num price; 
  num quantity; 
  List<Map<String, String>> ingredients; 
  String about; 
  bool highlight; 

  Food(this.imgUrl,
  this.desc,
  this.name,
  this.waitTime,
  this.score,
  this.cal,
  this.price,
  this.quantity,
  this.ingredients,
  this.about, 
  {this.highlight = false});

  static List<Food> generateRecommendFoods()
  {
    return [
      Food(
        'assets/images/dish1.jpeg',
        'No1. in Sales',
        'Soba Soup',
        '50 min',
        4.8,
        '325 kcal',
        12,
        0,
        [
          {
            'Noodle' : 'assets/images/noodles.jpeg',
          },
          {
            'Shrimp' : 'assets/images/shrimp.jpeg',
          },
          {
            'Scallion' : 'assets/images/Scallion.jpeg',
          },
          {
            'Eggs' : 'assets/images/eggs.jpeg',
          },
        ],
        'Simply put, ramen in Japanese noodles with a bit of scallion and eggs and mix',
        highlight : true,
         ),
         Food(
        'assets/images/dish2.jpeg',
        'No1. in Sales',
        'Soba Soup',
        '50 min',
        4.8,
        '325 kcal',
        12,
        0,
        [
          {
            'Noodle' : 'assets/images/noodles.jpeg',
          },
          {
            'Shrimp' : 'assets/images/shrimp.jpeg',
          },
          {
            'Scallion' : 'assets/images/Scallion.jpeg',
          },
          {
            'Eggs' : 'assets/images/eggs.jpeg',
          },
        ],
        'Simply put, ramen in Japanese noodles with a bit of scallion and eggs and mix',
        highlight : true,
         ),
    ];
  }


  static List<Food> generatePopularFood()
  {
    return [
      Food(
        'assets/images/dish3.jpeg',
        'No1. in Sales',
        'Soba Soup',
        '50 min',
        4.8,
        '325 kcal',
        12,
        0,
        [
          {
            'Noodle' : 'assets/images/noodles.jpeg',
          },
          {
            'Shrimp' : 'assets/images/shrimp.jpeg',
          },
          {
            'Scallion' : 'assets/images/Scallion.jpeg',
          },
          {
            'Eggs' : 'assets/images/eggs.jpeg',
          },
        ],
        'Simply put, ramen in Japanese noodles with a bit of scallion and eggs and mix',
        highlight : true,
         ),
         Food(
        'assets/images/dish4.jpeg',
        'No1. in Sales',
        'Soba Soup',
        '50 min',
        4.8,
        '325 kcal',
        12,
        0,
        [
          {
            'Noodle' : 'assets/images/noodles.jpeg',
          },
          {
            'Shrimp' : 'assets/images/shrimp.jpeg',
          },
          {
            'Scallion' : 'assets/images/Scallion.jpeg',
          },
          {
            'Eggs' : 'assets/images/eggs.jpeg',
          },
        ],
        'Simply put, ramen in Japanese noodles with a bit of scallion and eggs and mix',
        highlight : true,
         ),
    ];
  }
}