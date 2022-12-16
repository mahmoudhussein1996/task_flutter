import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:task_flutter/Ui/resourses/color_manager.dart';
import 'package:task_flutter/Ui/resourses/font_manager.dart';
import 'package:task_flutter/models/adress.dart';
import '';
import '../resourses/value_manager.dart';
import '../resourses/style_manager.dart';

class AddressWidget extends StatelessWidget {

  Addres address;

   AddressWidget({
    Key? key,
     required this.address
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Size size = Get.size;

    return Container(
      padding: const EdgeInsets.all(
        AppMargin.m8,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppSize.s20),
        border: Border.all(color: ColorManager.grey, width: .2),
      ),
      child: Container(
        width: size.width < 480 ? size.width * .4:size.width * .42,
        height: size.height < 500 ? size.height * .2:size.height * .14,
        child: Row(
          children: [
            Container(
              width: size.width * .13,
              height: size.height * .06,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(AppSize.s12),
                border: Border.all(color: ColorManager.grey, width: .2),
                color: ColorManager.addressColor
              ),
            ),
             SizedBox(width: size.width * .05),
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children:  [
                 Text("${address.name}", style: StyleManager.getBoldStyle(color: ColorManager.grey,fontSize: 10)),
                 SizedBox(height: size.height * .01,),
                 Container(
                   width: size.width * .15,
                   height: size.height * .1,
                  child: Text("${address.fullAddress}", style: StyleManager.getRegularStyle(color: ColorManager.grey, fontSize: 10))),
              ],
            ),
          ],
        ),
      ),
    );
  }
}