import 'package:flutter/material.dart';
import "package:lesson107/prisentions/widgets/pages/your_recipe_item.dart";

import "../../../utils/utils.dart";


class BodyContainer extends StatelessWidget {
  const BodyContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 430,
        height: 255,
        decoration: BoxDecoration(
          color: AppColors.textColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 18, top: 10),
              child: Text(
                "Your Recipes",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.w500),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                YourRecipeItem(
                  image: "assets2/chikken_burger.png",
                  title: "Chicken Burger",
                  star: '5',
                  desc: "15min",
                ),
                const SizedBox(
                  width: 15,
                ),
                YourRecipeItem(
                    image: "assets2/tiramisu.png",
                    title: 'Tiramisu',
                    star: '5',
                    desc: '15'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}