import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:task_flutter/Ui/resourses/color_manager.dart';
import 'package:task_flutter/Ui/resourses/value_manager.dart';
import 'package:task_flutter/models/offer.dart';

import '../resourses/font_manager.dart';
import '../resourses/style_manager.dart';

class OfferItem extends StatelessWidget {

  Offer offer;

   OfferItem({Key? key, required this.offer}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Size size = Get.size;

    return Padding(padding: EdgeInsets.all(AppPadding.p12),
      child: Container(
        width: size.width > 500 ? size.width * .6 :size.width,
        height: size.height < 450 ? size.height * .4: size.height * .25,
      decoration: BoxDecoration(
          color: ColorManager.offer,
          borderRadius: BorderRadius.circular(AppSize.s12),
      ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("${offer.name}", style: StyleManager.getBoldStyle(color: ColorManager.orange, fontSize: FontSizeManager.s22)),
              const SizedBox(height: AppSize.s20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("${offer.newPrice}" + " \$", style: StyleManager.getBoldStyle(color: ColorManager.orange, fontSize: FontSizeManager.s22),),
                  const SizedBox(width: AppSize.s35,),
                  Text("${offer.oldPrice}"  + " \$", style: TextStyle(
                      fontSize: FontSizeManager.s22,
                      fontFamily: FontManager.FontFamily,
                      fontWeight: FontWeight.w700,
                      color: ColorManager.white,
                      decoration: TextDecoration.lineThrough
                  ),),
                ],
              ),
               SizedBox(height: size.height * .035,),
              Text(". available until " + "${offer.availabilityTime}", style: StyleManager.getRegularStyle(color: ColorManager.white),)
            ],
          ),
        ),
    ),);
  }
}
