import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:task_flutter/Ui/resourses/color_manager.dart';
import 'package:task_flutter/Ui/resourses/style_manager.dart';
import 'package:task_flutter/Ui/resourses/value_manager.dart';

class Address extends StatelessWidget {
  const Address({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Size size = Get.size;

    return  Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.all(AppPadding.p8),
          margin:  const EdgeInsets.only(left: AppMargin.m8, right: AppMargin.m8, top: AppMargin.m50, bottom: AppMargin.m8),
          decoration: BoxDecoration(
            color: ColorManager.red1,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(AppSize.s100),
              bottomLeft: Radius.circular(AppSize.s100),
              topRight: Radius.circular(AppSize.s200),
              bottomRight: Radius.circular(AppSize.s100),
            ),
          ),
          child: Row(
            children: [
              Icon(
                Icons.location_on_outlined,
                color: ColorManager.white,
              ),
              const SizedBox(width: AppSize.s4),
              Text(
                'Mustafa St.',
                style: StyleManager.getRegularStyle(color: ColorManager.white),
              ),
            ],
          ),
        ),
        const Spacer(),
        Container(
          width: size.width * .15,
          height: size.height * .07,
          margin:  const EdgeInsets.only(left: AppMargin.m8, right: AppMargin.m8, top: AppMargin.m50, bottom: AppMargin.m8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(size.width * .07),
            border: Border.all(width: 1,color: ColorManager.grey)
          ),
        )
      ],
    );
  }
}
