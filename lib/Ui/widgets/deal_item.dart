import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:task_flutter/Ui/resourses/color_manager.dart';
import 'package:task_flutter/Ui/resourses/font_manager.dart';
import 'package:task_flutter/Ui/resourses/style_manager.dart';
import 'package:task_flutter/Ui/resourses/value_manager.dart';
import 'package:task_flutter/models/deal.dart';

import '../../controller/orderController.dart';

class DealItem extends StatelessWidget {

  Color colorOfBox;
  Deal deal;

  DealItem({Key? key,required this.colorOfBox,required this.deal}) : super(key: key);

 

  bool favorite = false;

  OrderController orderController = Get.put(OrderController());

  @override
  Widget build(BuildContext context) {

    Size size = Get.size;

    return Container(
      height: size.height * .2,
      child: Row(
        //mainAxisAlignment: MainAxisAlignment.start,
        //crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            children: [
              Container(
                width: size.width > 500 ? size.width * .3:size.width * .4,
                height: size.height < 600 ?size.height * .5 :size.height * .22,
                decoration:  BoxDecoration(
                  borderRadius: BorderRadius.circular(AppSize.s12),
                  color: colorOfBox,
                ),
              ),
              Positioned(
                  child: GetBuilder<OrderController>(builder:(value)=>InkWell(
                    onTap: ()
                    {
                      deal.isFav = !deal.isFav;
                      orderController.addToFavorite(deal, deal.isFav);
                    },
                    child: Container(
                      width: size.width > 400 ? size.width * .07 :size.width * .12,
                      height: size.height < 600 ?size.height * .12: size.height * .06,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(AppSize.s20), color: ColorManager.white),
                      child: Icon(deal.isFav ? Icons.favorite: Icons.favorite_border_outlined, color: deal.isFav ? ColorManager.red2 : ColorManager.grey1,),
                    ),
                  ))),
              Positioned(
                right: 0,
                  child: GetBuilder<OrderController>(builder:(value)=>InkWell(
                    onTap: ()
                    {
                      if(deal.addedToCart == true)
                        {
                          Get.snackbar(
                            'Message',
                            'This item already Added to cart',
                              snackPosition:SnackPosition.BOTTOM,
                              backgroundColor: ColorManager.orange,
                              colorText: ColorManager.white
                          );

                          return;
                        }
                      else
                        {
                          orderController.addToCart(deal, deal.addedToCart);

                          Get.snackbar(
                              'Message',
                              'Successfully added to cart',
                              snackPosition:SnackPosition.BOTTOM,
                              backgroundColor: Colors.greenAccent,
                              colorText: ColorManager.black
                          );
                        }


                    },
                    child: Container(
                      width: size.width > 400 ? size.width * .07 :size.width * .12,
                      height: size.height < 600 ?size.height * .12: size.height * .06,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(AppSize.s20), color: ColorManager.white),
                      child: Icon(deal.addedToCart ?Icons.check :Icons.shopping_cart, color: deal.addedToCart ? Colors.greenAccent : ColorManager.black,),
                    ),
                  )))
            ],
          ),
           SizedBox(width: size.width * .01,),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: AppSize.s35, horizontal: AppSize.s12),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // const SizedBox(height: AppSize.s25,),
                Text("${deal.name}",style: StyleManager.getRegularStyle(color: ColorManager.grey),),
                const SizedBox(height: AppSize.s8,),
                Text("${deal.brief}",style: StyleManager.getRegularStyle(color: ColorManager.grey),),
                const SizedBox(height: AppSize.s8,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.location_on, color: ColorManager.grey1, size: AppSize.s12,),
                    const SizedBox(width: AppSize.s8,),
                    Text("${deal.timeOfDeliver}" + " Awc", style: StyleManager.getRegularStyle(color: ColorManager.grey),)
                  ],
                ),
                 SizedBox(height: size.height * .01,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("${deal.sealingPrice}" + " \$", style: StyleManager.getRegularStyle(color: ColorManager.orange),),
                    const SizedBox(width: AppSize.s20,),
                    Text("${deal.originPrice}"  + " \$", style: TextStyle(
                        fontSize: FontSizeManager.s12,
                        fontFamily: FontManager.FontFamily,
                        fontWeight: FontWeight.w400,
                        color: ColorManager.grey1,
                        decoration: TextDecoration.lineThrough
                    ),)
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

