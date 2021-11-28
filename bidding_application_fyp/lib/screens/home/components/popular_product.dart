import 'package:flutter/material.dart';
import 'package:bidding_application_fyp/components/product_card.dart';
import 'package:bidding_application_fyp/models/Product.dart';

import '../../../size_config.dart';
import 'section_title.dart';

class PopularProducts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SectionTitle(title: "Popular Products", press: () {}),
        ),
        SizedBox(height: getProportionateScreenWidth(20)),
        SingleChildScrollView(

          child: Row(
            children: [
              Column(
                children: [
                  ...List.generate(
                    demoProducts.length,
                    (index) {
                      if (demoProducts[index].isPopular)
                        return ProductCard(product: demoProducts[index]);

                      return SizedBox
                          .square(); // here by default width and height is 0
                    },
                  ),
                  ...List.generate(
                    demoProducts.length,
                        (index) {
                      if (demoProducts[index].isPopular)
                        return ProductCard(product: demoProducts[index]);

                      return SizedBox
                          .square(); // here by default width and height is 0
                    },
                  ),
                  SizedBox(width: getProportionateScreenWidth(20)),
                ],
              ),
              Column(
                children: [
                  ...List.generate(
                    demoProducts.length,
                        (index) {
                      if (demoProducts[index].isPopular)
                        return ProductCard(product: demoProducts[index]);

                      return SizedBox
                          .square(); // here by default width and height is 0
                    },
                  ),
                  ...List.generate(
                    demoProducts.length,
                        (index) {
                      if (demoProducts[index].isPopular)
                        return ProductCard(product: demoProducts[index]);

                      return SizedBox
                          .square(); // here by default width and height is 0
                    },
                  ),
                  SizedBox(width: getProportionateScreenWidth(20)),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
