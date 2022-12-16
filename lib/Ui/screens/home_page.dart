import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:task_flutter/Ui/component/cart_view.dart';
import 'package:task_flutter/Ui/component/favorite_view.dart';
import 'package:task_flutter/Ui/resourses/color_manager.dart';
import 'package:task_flutter/Ui/resourses/style_manager.dart';
import 'package:task_flutter/Ui/resourses/value_manager.dart';
import 'package:task_flutter/Ui/widgets/complete_adress.dart';

import '../../controller/orderController.dart';
import '../component/home_view.dart';
import '../widgets/address.dart';
import '../widgets/search_bar.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int _selectedIndex = 0;
  OrderController orderController = Get.put(OrderController());
  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;
    return  Scaffold(
      backgroundColor: ColorManager.white,
      bottomNavigationBar: SizedBox(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: AppSize.s22),
              child: BottomNavigationBar(
                type: BottomNavigationBarType.fixed,
                selectedItemColor: ColorManager.orange,
                unselectedItemColor: ColorManager.grey1,
                currentIndex: _selectedIndex,
                onTap: _onItemTapped,
                items: const [
                  BottomNavigationBarItem(
                    icon: Icon(Icons.local_grocery_store),
                    label: 'Grocery',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.notifications_outlined),
                    label: 'News',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.favorite_border_outlined),
                    label: 'Favorite',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.account_balance_wallet_outlined),
                    label: 'Cart',
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: size.height * .02,
              right: size.width * .45,
              child:
              //GetBuilder<OrderController>(builder:(value)=>
              GetBuilder<OrderController>(builder:(value)=> Container(
                width: size.width > 500 ? size.width * .09:size.width * .14,
                height: size.height < 480 ?size.height * .17 :size.height * .07,
                decoration: BoxDecoration(
                  color: ColorManager.orange,
                  borderRadius: BorderRadius.circular(AppSize.s35)
                ),
                child:Center(
                  child: Text("\$ "+"${value.totalPrice}",
                      style: StyleManager.getBoldStyle(color: ColorManager.white, fontSize: AppSize.s12),),
                ),
                )
              ),
              //)
            )
          ],
        ),
      ),
      body: getBody(),
    );
  }

  Widget getBody( )  {
    if(_selectedIndex == 0) {
      return const HomeView();
    } else if(_selectedIndex == 1) {
      return Container();
    } else if(_selectedIndex == 2){
      return const FavoriteView();
    }
    else
      {
        return const CartView();
      }
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
