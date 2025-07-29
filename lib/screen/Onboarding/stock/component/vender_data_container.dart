import 'package:arhant_solution_task/utils/app_text_style.dart';
import 'package:arhant_solution_task/utils/utils.dart';
import 'package:flutter/material.dart';

class VenderDataContainer extends StatelessWidget {
  final String companyName;
  final String phone;
  final String email;
  final String location;
  final String contact;
  final VoidCallback? onPress;

  const VenderDataContainer({
    super.key,
    required this.companyName,
    required this.phone,
    required this.email,
    required this.location,
    required this.contact,
    this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(companyName, style: vendorCompany()),
            IconButton(
              onPressed: onPress,
              icon: Icon(Icons.phone, color: appColor.primaryBlue),
            ),
          ],
        ),
        Text("Phone: $phone", style: vendorOtherData()),
        Text("Email: $email", style: vendorOtherData()),
        Text("Location: $location", style: vendorOtherData()),
        Text("Contact: $contact", style: vendorOtherData()),
      ],
    );
  }
}

// Phone: (555) 123-4567 Email: ethan.harper@example.com Location: New York, NY
