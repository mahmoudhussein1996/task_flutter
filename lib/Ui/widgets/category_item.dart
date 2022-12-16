import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:task_flutter/Ui/resourses/color_manager.dart';
import 'package:task_flutter/Ui/resourses/style_manager.dart';
import 'package:task_flutter/Ui/resourses/value_manager.dart';
import 'package:task_flutter/models/category.dart';

class CategoryItem extends StatelessWidget {

  Color colorOfBox;
  Category category;
   CategoryItem({super.key, required this.colorOfBox, required this.category});

  @override
  Widget build(BuildContext context) {

    Size size = Get.size;

    return Container(
      width: size.width * .21,
      height: size.height * .2,
      child: Column(
        children: [
          Container(
            width: size.width > 500 ? size.width * .08:size.width * .16,
            height: size.height < 500 ? size.height * .14: size.height * .075,
            decoration:  BoxDecoration(
              borderRadius: BorderRadius.circular(AppSize.s12),
              color: colorOfBox,
            ),
          ),
           SizedBox(height: size.height * .02,),
          Text("${category.name}", style: StyleManager.getRegularStyle(color: ColorManager.grey),)
        ],
      ),
    );
  }
}
