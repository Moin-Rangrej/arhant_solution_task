import 'package:arhant_solution_task/screen/Onboarding/stock/product/component/product_category_button.dart';
import 'package:arhant_solution_task/screen/parent.dart';
import 'package:arhant_solution_task/widget/appBar/custom_appbar.dart';
import 'package:flutter/material.dart';

import 'component/Product_Conatiner.dart';

class Product extends StatefulWidget {
  final Map<String, dynamic> data;
  const Product({super.key, required this.data});

  @override
  State<Product> createState() => _ProductState();
}

class _ProductState extends State<Product> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final productData = widget.data;
    final subTitle = productData['subtitle'].split(" ");
    final percentage = subTitle[3];

    return Scaffold(
      appBar: CustomAppbar(
        title: "Product",
        isActionShow: true,
        icon: Icons.edit_square,
        iconSize: 24,
      ),
      body: Parent(
        paddingVertical: height * 0.02,
        paddingHorizontal: width * 0.04,
        childWidget: Column(
          children: [
            ProductData(
              productData: productData,
              height: height,
              percentage: percentage,
            ),
            ProductCategoryButton(),
          ],
        ),
      ),
    );
  }
}
