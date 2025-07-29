import 'package:flutter/material.dart';

import '../../../../../utils/app_text_style.dart';
import '../../../../../utils/utils.dart';
import '../../../../../widget/label.dart';
import '../../../../../widget/stock_item_container.dart';

class ProductData extends StatelessWidget {
  const ProductData({
    super.key,
    required this.productData,
    required this.height,
    required this.percentage,
  });

  final Map<String, dynamic> productData;
  final double height;
  final dynamic percentage;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Label(text: "${productData['title']}", textStyle: productTitle()),
        SizedBox(height: height * 0.016),
        StockItemContainer(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Label(text: "HSN Code", textStyle: productContainerText()),
              SizedBox(height: height * 0.005),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Label(text: "Inactive", textStyle: productContainerText()),
                  Icon(
                    Icons.check_box_rounded,
                    color: appColor.softGray,
                    size: 16,
                  ),
                ],
              ),
              SizedBox(height: height * 0.005),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Label(
                    text: "Product Description",
                    textStyle: productContainerText(),
                  ),
                  Label(
                    text: "${productData['title']}",
                    textStyle: productContainerSubText(),
                  ),
                ],
              ),
              SizedBox(height: height * 0.005),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Label(text: "Units", textStyle: productContainerText()),
                  Label(text: "PKT", textStyle: productContainerSubText()),
                ],
              ),
              SizedBox(height: height * 0.005),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Label(
                    text: "GST Percentage",
                    textStyle: productContainerText(),
                  ),
                  Label(text: percentage, textStyle: productContainerSubText()),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
