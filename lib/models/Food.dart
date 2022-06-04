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
        'assets/images/dish1.png',
        'No1. in Sales',
        'Soba Soup',
        '50 min',
        4.8,
        '325 kcal',
        12,
        0,
        [
          {
            'Noodle' : 'assets/images/noodles.png',
          },
          {
            'Shrimp' : 'assets/images/shrimp.png',
          },
          {
            'Scallion' : 'assets/images/Scallion.png',
          },
          {
            'Eggs' : 'assets/images/eggs.png',
          },
        ],
        'Simply put, ramen in Japanese noodles with a bit of scallion and eggs and mix, Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat ',
        highlight : true,
         ),
         Food(
        'assets/images/dish2.jpeg',
        'Highly Recommand',
        'Soba Soup',
        '50 min',
        4.8,
        '325 kcal',
        12,
        0,
        [
          {
            'Noodle' : 'assets/images/noodles.png',
          },
          {
            'Shrimp' : 'assets/images/shrimp.png',
          },
          {
            'Scallion' : 'assets/images/Scallion.png',
          },
          {
            'Eggs' : 'assets/images/eggs.png',
          },
        ],
        'Simply put, ramen in Japanese noodles with a bit of scallion and eggs and mix,Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
        highlight : false,
         ),
    ];
  }


  static List<Food> generatePopularFood()
  {
    return [
      Food(
        'assets/images/dish3.jpeg',
        'Low fat',
        'Soba Soup',
        '50 min',
        4.8,
        '325 kcal',
        12,
        0,
        [
          {
            'Noodle' : 'assets/images/noodles.png',
          },
          {
            'Shrimp' : 'assets/images/shrimp.png',
          },
          {
            'Scallion' : 'assets/images/Scallion.png',
          },
          {
            'Eggs' : 'assets/images/eggs.png',
          },
        ],
        'Simply put, ramen in Japanese noodles with a bit of scallion and eggs and mix,Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
        highlight : false,
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
            'Noodle' : 'assets/images/noodles.png',
          },
          {
            'Shrimp' : 'assets/images/shrimp.png',
          },
          {
            'Scallion' : 'assets/images/Scallion.png',
          },
          {
            'Eggs' : 'assets/images/eggs.png',
          },
        ],
        'Simply put, ramen in Japanese noodles with a bit of scallion and eggs and mix,Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
        highlight : false,
         ),
    ];
  }
}