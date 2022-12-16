import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:task_flutter/Ui/widgets/deal_item.dart';
import 'package:task_flutter/Ui/widgets/offer_item.dart';
import 'package:task_flutter/controller/orderController.dart';
import 'package:task_flutter/models/category.dart';
import 'package:task_flutter/models/deal.dart';
import 'package:task_flutter/models/offer.dart';
import 'package:task_flutter/models/product.dart';

import '../../models/adress.dart';
import '../resourses/color_manager.dart';
import '../resourses/style_manager.dart';
import '../resourses/value_manager.dart';
import '../widgets/address.dart';
import '../widgets/cart_item.dart';
import '../widgets/category_item.dart';
import '../widgets/complete_adress.dart';
import '../widgets/search_bar.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {

  OrderController orderController = Get.put(OrderController());
  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(top: AppSize.s12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children:  [
            const Address(),
             SizedBox(height: size.height * .01,),
            const SearchContainer(),
            SizedBox(height: size.height * .02,),
            Padding(
              padding: const EdgeInsets.all(AppPadding.p8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:  [
                  AddressWidget(address: Addres(name: "office address", fullAddress: "Axis istanbul, B2 Bloc, floor 2, office 11")),
                  AddressWidget(address: Addres(name: "home address",fullAddress: "mustafa street, no 2 , st x12"),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(AppPadding.p8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Explore by Category", style: StyleManager.getBoldStyle(color: ColorManager.grey),),
                  Text("see All (36)", style: StyleManager.getRegularStyle(color: ColorManager.grey1)),
                ],
              ),
            ),
            SizedBox(height: size.height * .01,),
            SizedBox(
              height: size.height * .2,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: orderController.categories.length,
                itemBuilder: (context, index)
                {
                  return CategoryItem(colorOfBox: index == 0 ? ColorManager.category1: index == 1 ? ColorManager.category2:
                      index == 2 ? ColorManager.category3 : index == 3 ?ColorManager.category4 : ColorManager.category5, category: orderController.categories[index]);
                },

              ),
            ),
            SizedBox(height: size.height * .01,),
            Padding(
              padding: const EdgeInsets.all(AppSize.s8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Deals of the day", style: StyleManager.getBoldStyle(color: ColorManager.grey),),
                ],
              ),
            ),
            //const SizedBox(height: AppSize.s8,),
            SizedBox(
              height: size.height < 600 ? size.height * .6:size.height * .27,
              child: ListView.builder(
                padding: const EdgeInsets.all(12),
                itemCount: orderController.deals.length,
                itemBuilder: (context, index)
                {
                  return DealItem(colorOfBox: ColorManager.deal1, deal: orderController.deals[index]);
                },
                scrollDirection: Axis.horizontal,
              ),
            ),
            OfferItem(offer: Offer(name: "mega whopper", availabilityTime: "15 december 2022", oldPrice: 45, newPrice: 30)),
          ],
        ),
      ),
    );
  }
}
