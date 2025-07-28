import 'package:arhant_solution_task/screen/Onboarding/stock/product.dart';
import 'package:arhant_solution_task/screen/parent.dart';
import 'package:arhant_solution_task/utils/data.dart';
import 'package:arhant_solution_task/widget/appBar/custom_appbar.dart';
import 'package:arhant_solution_task/widget/stock_item_container.dart';
import 'package:flutter/material.dart';

class Stock extends StatefulWidget {
  const Stock({super.key});

  @override
  State<Stock> createState() => _StockState();
}

class _StockState extends State<Stock> {
  void onPressStockItem(Map<String, dynamic> item) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (BuildContext context) => Product(data: item)),
    );
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: CustomAppbar(
        title: "Stock Items",
        icon: Icons.add,
        isActionShow: true,
        onPress: () {},
      ),
      body: Parent(
        paddingVertical: height * 0.016,
        paddingHorizontal: width * 0.025,
        childWidget: ListView.builder(
          itemCount: stockItemsData.length,
          itemBuilder: (BuildContext context, int index) {
            final item = stockItemsData[index];
            return StockItemContainer(
              onPress: () => onPressStockItem(item),
              child: stock_items_list(
                height: height,
                width: width,
                title: item['title'],
                subtitle: item['subtitle'],
                stock: item['stock'],
                color: item['color'],
                quantity: item['quantity'],
                total: item['total'],
              ),
            );
          },
        ),
      ),
    );
  }
}
