
import 'package:get/get.dart';
import 'package:task_flutter/models/adress.dart';
import 'package:task_flutter/models/deal.dart';

import '../models/category.dart';


class OrderController extends GetxController
{
  double totalPrice = 0;

  final List<Deal> favoriteDeals = [];

  final List<Deal> cartDeals = [];

  final List<Deal> deals = [
    Deal(id: 1,name: 'fish',brief: '2 serving',timeOfDeliver: '20 minutes',originPrice: 45,sealingPrice: 35,),
    Deal(id: 2,name: 'steak',brief: '180 grams',timeOfDeliver: '13 minutes',originPrice: 40,sealingPrice: 30,),
    Deal(id: 3,name: 'cola',brief: '2 bottle',timeOfDeliver: '30 minutes',originPrice: 20,sealingPrice: 17,),
    Deal(id: 4,name: 'red juice',brief: '1 bottle',timeOfDeliver: '10 minutes',originPrice: 15,sealingPrice: 10,),
  ];


  final List<Category> categories = [
    Category(name: "Fish"),
    Category(name: "Steak"),
    Category(name: "Vegetables"),
    Category(name: "Beverages"),
    Category(name: "Juice"),

  ];

  void changeQuantity(Deal deal,int productCount,double productPrice, String incOreDecrement)
  {
    if(incOreDecrement == '+'){
      deal.quantity++;
      totalPrice+=productPrice;
      update();
    }else{
      if(deal.quantity > 0)
      {
        deal.quantity--;
        totalPrice-=productPrice;

        update();
      }
    }

  }



  void addToFavorite(Deal deal,bool isFav)
  {
    if(isFav)
      {
        isFav=!isFav;
        favoriteDeals.add(deal);
        update();
      }

    else
      {
        favoriteDeals.remove(deal);
        isFav=!isFav;

        update();

      }
  }
  void addToCart(Deal deal,bool addedToCart)
  {
    if(addedToCart==false)
      {
        cartDeals.add(deal);
        deal.addedToCart = true;
        update();
      }
  }


  void calculateTotal(double price,String incOreDecrement)
  {
    if(incOreDecrement == '+'){
      totalPrice+=price;
      update();
    }else{
    if(totalPrice > 0)
    {
      totalPrice-=price;
      update();
    }
    }
  }

}