import 'package:arhant_solution_task/widget/label.dart';
import 'package:flutter/material.dart';
import '../../../../../utils/app_text_style.dart';
import '../../../../../utils/data.dart';
import '../../../../../utils/utils.dart';

class ProductCategoryButton extends StatefulWidget {
  const ProductCategoryButton({super.key});

  @override
  State<ProductCategoryButton> createState() => _ProductCategoryButtonState();
}

class _ProductCategoryButtonState extends State<ProductCategoryButton> {
  int _selectedIndex = 0;
  String title = "Stock Movement";
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Flexible(
      child: Column(
        children: [
          SizedBox(
            height: height * 0.055,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: product_btn_data.length,
              itemBuilder: (BuildContext context, int index) {
                final button = product_btn_data[index];
                bool isSelected = index == _selectedIndex;
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: isSelected
                          ? appColor.primaryBlue
                          : appColor.darkCoolGray,
                      shape: ContinuousRectangleBorder(
                        borderRadius: BorderRadiusGeometry.all(
                          Radius.circular(20),
                        ),
                      ),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16.0,
                        vertical: 10.0,
                      ),
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    ),
                    onPressed: () {
                      setState(() {
                        _selectedIndex = index;
                        title = button;
                      });
                    },
                    child: Text(button, style: productBtnStyle()),
                  ),
                );
              },
            ),
          ),
          SizedBox(height: height * 0.018),
          ProductList(title: title),
        ],
      ),
    );
  }
}

class ProductList extends StatelessWidget {
  final String title;
  const ProductList({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Label(text: "$title History", textStyle: stockHistoryText()),
        SizedBox(
          height: height * 0.4,
          child: ListView.builder(
            itemCount: categoryData.length,
            itemBuilder: (BuildContext context, int index) {
              final item = categoryData[index];
              return Padding(
                padding: EdgeInsets.only(
                  bottom: height * 0.01,
                  top: height * 0.01,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Label(
                          text: "${item['title']}",
                          textStyle: categoryName(),
                        ),
                        Label(
                          text: "${item['price']}",
                          textStyle: categoryPrice(),
                        ),
                      ],
                    ),
                    Label(text: "${item['date']}", textStyle: categoryDate()),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

// class CategoryButton extends StatelessWidget {
//   final bool isSelected;
//   final String title;
//   final VoidCallback onPress;

//   const CategoryButton({
//     super.key,
//     required this.isSelected,
//     required this.title,
//     required this.onPress,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return CustomButton(
//       text: title,
//       onPress: onPress,
//       btnHeight: 40,
//       buttonStyle: ElevatedButton.styleFrom(
//         backgroundColor: isSelected
//             ? appColor.primaryBlue
//             : appColor.darkCoolGray,
//         shape: ContinuousRectangleBorder(
//           borderRadius: BorderRadiusGeometry.all(Radius.circular(20)),
//         ),
//         padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
//         minimumSize: Size(0, 0), // important for shrink-wrap
//         tapTargetSize: MaterialTapTargetSize.shrinkWrap,
//       ),
//     );
//   }
// }
