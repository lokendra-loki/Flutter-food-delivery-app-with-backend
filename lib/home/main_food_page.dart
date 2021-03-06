import 'package:flutter/material.dart';
import 'package:flutter_food_delivery/utils/colors.dart';
import 'package:flutter_food_delivery/widgets/big_text.dart';
import 'package:flutter_food_delivery/widgets/small_text.dart';

class MainFoodPage extends StatefulWidget {
  const MainFoodPage({Key? key}) : super(key: key);

  @override
  State<MainFoodPage> createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            color: Colors.yellow,

            //appbar container
            child: Container(
              margin: const EdgeInsets.only(top: 50, bottom: 15),
              padding: const EdgeInsets.symmetric(horizontal: 20),
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      BigText(
                        text: "Kathmandu",
                        color: AppColors.mainColor,
                        size: 20,
                      ),
                      Row(
                        children: [
                          SmallText(
                            text: "Soyambhu",
                            color: Colors.black54,
                          ),
                          const Icon(Icons.arrow_drop_down)
                        ],
                      )
                    ],
                  ),

                  //search icon container
                  Container(
                    width: 45,
                    height: 45,
                    child: const Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                    decoration: BoxDecoration(
                      color: AppColors.mainColor,
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
