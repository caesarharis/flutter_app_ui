// List foods = [
//   'assets/images/beaf-steak.png',
//   'assets/images/butter-chicken.png',
//   'assets/images/dumplings.png',
//   'assets/images/french-toast.png',
//   'assets/images/mexican-pizza.png',
//   'assets/images/ramen-noodles.png',
// ];

// ignore: camel_case_types
class food {
  late String name;
  late String image;
  late double cal;
  late double time;
  late double rate;
  late int reviews;
  late bool isliked;

  food({
    required this.name,
    required this.cal,
    required this.rate,
    required this.image , 
    required this.isliked,
    required this.reviews,
     required this.time
  });

}

List <food> foods =  [

food(name: 'Beaf Steak', 
  cal: 230,
   rate: 4.3, 
  image: 'assets/images/beaf-steak.png', 
  isliked: false,
   reviews: 27, 
   time: 20) ,

food(name: 'Butter chicken',
     cal: 390,
      rate: 4.0, 
  image: 'assets/images/butter-chicken.png', 
  isliked: true,
   reviews: 32, 
   time: 1) , 

food(name: 'Dumplings',
     cal: 190,
      rate: 2.6, 
  image: 'assets/images/dumplings.png', 
  isliked: false,
   reviews: 60, 
   time: 3) ,


food(name: 'French Toast',
     cal: 60,
      rate: 4.7, 
  image: 'assets/images/french-toast.png', 
  isliked: true,
   reviews: 90, 
   time: .40) ,


food(name: 'Mexican Pizza',
     cal: 230,
      rate: 4.9, 
  image:  'assets/images/mexican-pizza.png', 
  isliked: false,
   reviews: 90, 
   time: .50) ,

food(name: 'Spicy Ramen Noodles',
     cal: 230,
      rate: 4.9, 
  image:  'assets/images/ramen-noodles.png', 
  isliked: true,
   reviews: 90, 
   time: .50) ,
   




];









