import 'package:arhant_solution_task/utils/app_text_style.dart';
import 'package:arhant_solution_task/utils/utils.dart';
import 'package:arhant_solution_task/widget/label.dart';
import 'package:flutter/material.dart';

class StockItemContainer extends StatelessWidget {
  final Widget child;
  final Function()? onPress;
  const StockItemContainer({super.key, required this.child, this.onPress});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return InkWell(
      onTap: onPress,
      child: Container(
        padding: EdgeInsets.symmetric(
          vertical: height * 0.017,
          horizontal: width * 0.04,
        ),
        margin: EdgeInsets.only(bottom: height * 0.018),
        decoration: BoxDecoration(
          border: Border.all(color: appColor.lightGray),
          borderRadius: BorderRadius.circular(10),
        ),
        child: child,
      ),
    );
  }
}

class stock_items_list extends StatelessWidget {
  final double height;
  final double width;
  final String title;
  final String subtitle;
  final String stock;
  final String color;
  final String quantity;
  final String total;

  const stock_items_list({
    super.key,
    required this.height,
    required this.width,
    required this.title,
    required this.subtitle,
    required this.stock,
    required this.color,
    required this.quantity,
    required this.total,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Label(text: title, textStyle: stockItemTitle()),
              stock_container(height: height, width: width, stock: stock),
            ],
          ),
          Label(text: subtitle, textStyle: stockItemSubTitle()),
          SizedBox(height: height * 0.022),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Label(text: "Color: $color", textStyle: stockContainerColor()),
              Row(
                children: [
                  Label(
                    text: "Quantity: $quantity",
                    textStyle: stockContainerQuantity(),
                  ),
                  SizedBox(width: width * 0.03),
                  Label(
                    text: "Total: $total",
                    textStyle: stockContainerQuantity(),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class stock_container extends StatelessWidget {
  final double width;
  final double height;
  final String stock;

  const stock_container({
    super.key,
    required this.width,
    required this.height,
    required this.stock,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: width * 0.03,
        vertical: height * 0.009,
      ),
      decoration: BoxDecoration(
        color: stock == "In Stock"
            ? appColor.lightApplegreen
            : const Color.fromARGB(128, 237, 154, 150),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(stock, style: inStockText(stock)),
    );
  }
}
