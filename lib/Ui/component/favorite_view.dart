import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:task_flutter/Ui/widgets/favorite_item.dart';

import '../../controller/orderController.dart';
import '../../models/deal.dart';
import '../resourses/color_manager.dart';
import '../resourses/font_manager.dart';
import '../resourses/style_manager.dart';
import '../resourses/value_manager.dart';
import '../widgets/address.dart';

class FavoriteView extends StatefulWidget {
  const FavoriteView({Key? key}) : super(key: key);

  @override
  State<FavoriteView> createState() => _FavoriteViewState();
}

class _FavoriteViewState extends State<FavoriteView> {

  OrderController orderController = Get.put(OrderController());

  @override
  Widget build(BuildContext context) {

    Size size = Get.size;

    return Padding(
      padding: EdgeInsets.all(AppSize.s12),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Address(),
           SizedBox(height: size.height * .02),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: AppSize.s12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("favorites", style: StyleManager.getBoldStyle(color: ColorManager.black, fontSize: FontSizeManager.s22),),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: orderController.favoriteDeals.length,
              itemBuilder: (context , index)
              {
                return FavoriteItem(colorOfItem: index == 0 ? ColorManager.category1:
                index == 2 ? ColorManager.category4 : index == 3 ? ColorManager.category5 : ColorManager.category3, deal: orderController.favoriteDeals[index],);
              },
            ),
          ),

          // GetBuilder<OrderController>(builder:(value)=> Text("total price = ${value.totalPrice}"))
        ],
      ),
    );
  }
}
