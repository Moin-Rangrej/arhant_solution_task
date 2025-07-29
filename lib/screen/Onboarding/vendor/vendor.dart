import 'package:arhant_solution_task/screen/Onboarding/stock/component/vender_data_container.dart';
import 'package:arhant_solution_task/screen/parent.dart';
import 'package:arhant_solution_task/utils/data.dart';
import 'package:arhant_solution_task/widget/appBar/custom_appbar.dart';
import 'package:arhant_solution_task/widget/custom_dropdown_button.dart';
import 'package:arhant_solution_task/widget/custom_searchBar.dart';
import 'package:arhant_solution_task/widget/custom_textfield.dart';
import 'package:flutter/material.dart';

class Vendor extends StatefulWidget {
  const Vendor({super.key});

  @override
  State<Vendor> createState() => _VendorState();
}

class _VendorState extends State<Vendor> {
  final TextEditingController searchController = TextEditingController();
  final List<String> status = <String>["Status", "One", "Two"];
  final List<String> city = <String>["City/State", "One", "Two"];
  final List<String> vtype = <String>["Vendor Type", "One", "Two"];

  String? onChangedSearch(String value) {
    print("seach Text>> $value");
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: CustomAppbar(
        title: "Vendors",
        icon: Icons.add,
        isActionShow: true,
        onPress: () {},
      ),
      body: Parent(
        paddingVertical: height * 0.016,
        paddingHorizontal: width * 0.02,
        childWidget: Column(
          children: [
            CustomSearchbar(
              textEditingController: searchController,
              placeholderText: "Search  vendor company...",
              onChanged: onChangedSearch,
            ),
            SizedBox(height: height * 0.012),
            Row(
              children: [
                Expanded(
                  child: CustomDropdownButton(
                    dropDownHeight: height * 0.055,
                    dropDownWidth: 30,
                    items: status
                        .map((e) => DropdownMenuItem(value: e, child: Text(e)))
                        .toList(),
                    initialValue: status.first,
                    onChanged: (value) => print("Selected: $value"),
                  ),
                ),
                SizedBox(width: width * 0.03),
                Expanded(
                  child: CustomDropdownButton(
                    dropDownHeight: height * 0.055,
                    dropDownWidth: 30,
                    items: city
                        .map((e) => DropdownMenuItem(value: e, child: Text(e)))
                        .toList(),
                    initialValue: city.first,
                    onChanged: (value) => print("Selected: $value"),
                  ),
                ),
                SizedBox(width: width * 0.03),
                Expanded(
                  child: CustomDropdownButton(
                    dropDownHeight: height * 0.055,
                    dropDownWidth: 30,
                    items: vtype
                        .map((e) => DropdownMenuItem(value: e, child: Text(e)))
                        .toList(),
                    initialValue: vtype.first,
                    onChanged: (value) => print("Selected: $value"),
                  ),
                ),
              ],
            ),
            Expanded(
              child: ListView.builder(
                itemCount: vendor_information.length,
                itemBuilder: (BuildContext context, int index) {
                  final item = vendor_information[index];
                  return VenderDataContainer(
                    companyName: item['company'],
                    phone: item['phone'],
                    email: item['email'],
                    location: item['location'],
                    contact: item['contact'],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
