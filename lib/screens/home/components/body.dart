import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pantrily/models/SubCategory.dart';
import 'package:pantrily/screens/home/components/subcategory_card.dart';
import 'package:pantrily/shared/size_config.dart';
import 'categories.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Categories(),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: SizeConfig.defaultSize * 2.0),
              child: GridView.builder(
                itemCount: subCategories.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount:
                      SizeConfig.orientation == Orientation.landscape ? 2 : 1,
                  crossAxisSpacing:
                      SizeConfig.orientation == Orientation.landscape
                          ? SizeConfig.defaultSize * 2
                          : 0,
                  mainAxisSpacing: 20,
                  childAspectRatio: 2.0,
                ),
                itemBuilder: (context, index) => SubCategoryCard(
                  subCategory: subCategories[index],
                  press: () {
                    print("Pressing" + index.toString());
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}