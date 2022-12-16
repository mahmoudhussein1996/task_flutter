import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:task_flutter/Ui/resourses/color_manager.dart';
import 'package:task_flutter/Ui/resourses/font_manager.dart';
import 'package:task_flutter/Ui/resourses/style_manager.dart';
import 'package:task_flutter/Ui/resourses/value_manager.dart';
import 'package:task_flutter/Ui/widgets/cart_item.dart';
import 'package:task_flutter/controller/orderController.dart';
import 'package:task_flutter/models/product.dart';

import '../widgets/address.dart';

class CartView extends StatefulWidget {
  const CartView({Key? key}) : super(key: key);

  @override
  State<CartView> createState() => _CartViewState();
}

class _CartViewState extends State<CartView> {

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
                 Text("cart", style: StyleManager.getBoldStyle(color: ColorManager.black, fontSize: FontSizeManager.s22),),
               ],
             ),
           ),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: orderController.cartDeals.length,
              itemBuilder: (context , index)
              {
                return CartItem(colorOfItem: index == 0 ? ColorManager.category1:
                  index == 2 ? ColorManager.category4 : index == 3 ? ColorManager.category5 : ColorManager.category3, deal: orderController.cartDeals[index],);
              },
            ),
          ),

         // GetBuilder<OrderController>(builder:(value)=> Text("total price = ${value.totalPrice}"))
        ],
      ),
    );
  }
}
