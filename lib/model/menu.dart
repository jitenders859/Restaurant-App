import 'package:pizza_in/model/food.dart';

class Menu {
  static List<Food> menu = [
    Food(
        id: "1",
        image: "assets/images/menu1.png",
        name: "LASAGNE",
        price: "12",
        description: "A smart Personal assistant at your beck and call, who makes doing your everyday tasks"
              "easier - isn't that the dream? whether it it managing your calendar, playing music, or "
              "controlling your home entertainment, these can all be done by the Google Home - all you have to do is say "
              "\"Ok Google\" \n\n you can know the status of real-time information such as the current weather, important news,"
              "match dates and scores of your favourite sports team and much more by using your voice.",
        ),
    Food(
        id: "3",
        image: "assets/images/menu11.png",
        name: "MUSHROOM RISOTTO",
        price: "4",
        description: "A smart Personal assistant at your beck and call, who makes doing your everyday tasks"
              "easier - isn't that the dream? whether it it managing your calendar, playing music, or "
              "controlling your home entertainment, these can all be done by the Google Home - all you have to do is say "
              "\"Ok Google\" \n\n you can know the status of real-time information such as the current weather, important news,"
              "match dates and scores of your favourite sports team and much more by using your voice.",
        ),
    Food(
        id: "4",
        image: "assets/images/menu13.png",
        name: "CIOPPINO",
        price: "30",
        description: "A smart Personal assistant at your beck and call, who makes doing your everyday tasks"
              "easier - isn't that the dream? whether it it managing your calendar, playing music, or "
              "controlling your home entertainment, these can all be done by the Google Home - all you have to do is say "
              "\"Ok Google\" \n\n you can know the status of real-time information such as the current weather, important news,"
              "match dates and scores of your favourite sports team and much more by using your voice.",
        ),
    Food(
        id: "5",
        image: "assets/images/menu12.png",
        name: "SEAFOOD PLATTER",
        price: "22",
        description: "A smart Personal assistant at your beck and call, who makes doing your everyday tasks"
              "easier - isn't that the dream? whether it it managing your calendar, playing music, or "
              "controlling your home entertainment, these can all be done by the Google Home - all you have to do is say "
              "\"Ok Google\" \n\n you can know the status of real-time information such as the current weather, important news,"
              "match dates and scores of your favourite sports team and much more by using your voice.",
        ),
    Food(
        id: "2",
        image: "assets/images/menu3.png",
        name: "TORTELLINI WITH BROCCOLI",
        price: "8",
        description: "A smart Personal assistant at your beck and call, who makes doing your everyday tasks"
              "easier - isn't that the dream? whether it it managing your calendar, playing music, or "
              "controlling your home entertainment, these can all be done by the Google Home - all you have to do is say "
              "\"Ok Google\" \n\n you can know the status of real-time information such as the current weather, important news,"
              "match dates and scores of your favourite sports team and much more by using your voice.",
        ),
    Food(
        id: "6",
        image: "assets/images/menu10.png",
        name: "MEAT ROLL",
        price: "19",
        description: "A smart Personal assistant at your beck and call, who makes doing your everyday tasks"
              "easier - isn't that the dream? whether it it managing your calendar, playing music, or "
              "controlling your home entertainment, these can all be done by the Google Home - all you have to do is say "
              "\"Ok Google\" \n\n you can know the status of real-time information such as the current weather, important news,"
              "match dates and scores of your favourite sports team and much more by using your voice.",
        ),
        
    Food(
        id: "7",
        image: "assets/images/menu7.png",
        name: "SALMON SALAD",
        price: "25",
        description: "A smart Personal assistant at your beck and call, who makes doing your everyday tasks"
              "easier - isn't that the dream? whether it it managing your calendar, playing music, or "
              "controlling your home entertainment, these can all be done by the Google Home - all you have to do is say "
              "\"Ok Google\" \n\n you can know the status of real-time information such as the current weather, important news,"
              "match dates and scores of your favourite sports team and much more by using your voice.",
        ),
    Food(
        id: "8",
        image: "assets/images/menu5.png",
        name: "MEATBALLS AND PASTA",
        price: "7",
        description: "A smart Personal assistant at your beck and call, who makes doing your everyday tasks"
              "easier - isn't that the dream? whether it it managing your calendar, playing music, or "
              "controlling your home entertainment, these can all be done by the Google Home - all you have to do is say "
              "\"Ok Google\" \n\n you can know the status of real-time information such as the current weather, important news,"
              "match dates and scores of your favourite sports team and much more by using your voice.",
        ),
    Food(
        id: "9",
        image: "assets/images/menu9.png",
        name: "STEAK AU POIVRE",
        price: "63",
        description: "A smart Personal assistant at your beck and call, who makes doing your everyday tasks"
              "easier - isn't that the dream? whether it it managing your calendar, playing music, or "
              "controlling your home entertainment, these can all be done by the Google Home - all you have to do is say "
              "\"Ok Google\" \n\n you can know the status of real-time information such as the current weather, important news,"
              "match dates and scores of your favourite sports team and much more by using your voice.",
        ),
    Food(
        id: "10",
        image: "assets/images/menu8.png",
        name: "CHICKEN SALAD",
        price: "43",
        description: "A smart Personal assistant at your beck and call, who makes doing your everyday tasks"
              "easier - isn't that the dream? whether it it managing your calendar, playing music, or "
              "controlling your home entertainment, these can all be done by the Google Home - all you have to do is say "
              "\"Ok Google\" \n\n you can know the status of real-time information such as the current weather, important news,"
              "match dates and scores of your favourite sports team and much more by using your voice.",
        ),
        
  ];

  static Food getFoodById(id) {
    return menu.where((p) => p.id == id).first;
  }
}
