import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../models/deal.dart';
import '../resourses/color_manager.dart';
import '../resourses/font_manager.dart';
import '../resourses/style_manager.dart';
import '../resourses/value_manager.dart';

class FavoriteItem extends StatelessWidget {
  
  Color colorOfItem;
  Deal deal;
  
   FavoriteItem({Key? key, required this.colorOfItem, required this.deal}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Size size = Get.size;
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: AppSize.s12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: size.width * .2,
            height: size.height * .1,
            decoration:  BoxDecoration(
              borderRadius: BorderRadius.circular(AppSize.s12),
              color: colorOfItem,
            ),
          ),
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

        ],
      ),
    );

  }
}
