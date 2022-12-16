import 'package:flutter/material.dart';
import 'package:task_flutter/Ui/resourses/color_manager.dart';
import 'package:task_flutter/Ui/resourses/font_manager.dart';
import 'package:task_flutter/Ui/resourses/style_manager.dart';
import 'package:task_flutter/Ui/resourses/value_manager.dart';

class SearchContainer extends StatelessWidget {
  const SearchContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: AppSize.s12),
        width: MediaQuery.of(context).size.width * .95,
        height: AppSize.s50,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(AppSize.s12),
            color: ColorManager.white1),
        alignment: Alignment.center,
        child: Row(
          children: [
            const Icon(
              Icons.search,
              size: AppSize.s20,
            ),
            const SizedBox(width: AppSize.s20),
            Text(
              "Search in thousands of products",
              style: StyleManager.getRegularStyle(color: ColorManager.grey,fontSize: FontSizeManager.s16),
            ),
          ],
        ),
      ),
    );
  }
}