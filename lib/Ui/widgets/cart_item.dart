import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_flutter/Ui/resourses/font_manager.dart';

import '../../controller/orderController.dart';
import '../../models/deal.dart';
import '../resourses/color_manager.dart';
import '../resourses/style_manager.dart';
import '../resourses/value_manager.dart';

class CartItem extends StatelessWidget {

  Color colorOfItem;
  Deal deal;

   CartItem({Key? key, required this.colorOfItem, required this.deal}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Size size = Get.size;
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppSize.s12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: size.width * .2,
            height: size.height * 0.11,
            decoration:  BoxDecoration(
              borderRadius: BorderRadius.circular(AppSize.s12),
              color: colorOfItem,
            ),
          ),
          SizedBox(height: size.height * .01,),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: AppSize.s35, horizontal: AppSize.s12),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // const SizedBox(height: AppSize.s25,),
                Text("${deal.name}",style: StyleManager.getRegularStyle(color: ColorManager.grey),),
                const SizedBox(height: AppSize.s8,),
                Text("${deal.brief}" ,style: StyleManager.getRegularStyle(color: ColorManager.grey1),),
                const SizedBox(height: AppSize.s8,),
                Text("\$ " + "${deal.originPrice}",style: StyleManager.getRegularStyle(color: ColorManager.orange, fontSize: FontSizeManager.s16),),
              ],
            ),
          ),
          SizedBox(height: size.height * .035,),
          GetBuilder<OrderController>(
              init: OrderController(),
              builder: (value) => Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap:()
                {
                  value.changeQuantity (deal,deal.quantity,deal.originPrice??0,'+');
                },
                child: Container(
                  width: size.width * .12,
                  height: size.height * .06,
                  decoration: BoxDecoration(
                      color: ColorManager.category4,
                      borderRadius: BorderRadius.circular(AppSize.s12)
                  ),
                  child: Icon(Icons.add, color: Colors.blue),

                ),
              ),
              SizedBox(width: AppSize.s12,),
              Text("${deal.quantity}", style: StyleManager.getBoldStyle(color: ColorManager.black, fontSize: FontSizeManager.s22),),
              SizedBox(width: AppSize.s12,),

              InkWell(
                onTap: ()
                {
                    value.changeQuantity (deal,deal.quantity, deal.originPrice ??0,'-');

                },
                child: Container(
                  width: size.width * .12,
                  height: size.height * .06,
                  decoration: BoxDecoration(
                      color: ColorManager.category4,
                      borderRadius: BorderRadius.circular(AppSize.s12)
                  ),
                  child: const Padding(
                    padding: EdgeInsets.only(bottom: AppSize.s12),
                    child: Icon(Icons.minimize, color: Colors.blue,),
                  ),
                ),
              ),
            ],
          ))
        ],
      ),
    );
  }
}

