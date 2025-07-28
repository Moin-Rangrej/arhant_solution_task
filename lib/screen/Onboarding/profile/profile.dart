import 'package:arhant_solution_task/screen/Onboarding/Edit_Profile/edit_profile.dart';
import 'package:arhant_solution_task/screen/parent.dart';
import 'package:arhant_solution_task/utils/app_text_style.dart';
import 'package:arhant_solution_task/utils/utils.dart';
import 'package:arhant_solution_task/widget/appBar/custom_appbar.dart';
import 'package:arhant_solution_task/widget/custom_image_component.dart';
import 'package:arhant_solution_task/widget/label.dart';
import 'package:arhant_solution_task/widget/profile_navigate_button.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    final imageSize = width * 0.3;
    final adjustedSize = imageSize.clamp(80.0, 200.0);

    void onPressEditProfile() {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const EditProfile()),
      );
    }

    return Scaffold(
      appBar: CustomAppbar(title: "Profile"),
      body: Parent(
        paddingHorizontal: width * 0.04,
        paddingVertical: height * 0.04,
        childWidget: SingleChildScrollView(
          child: Column(
            children: [
              CustomImageComponent(
                imageName: "${appImage.imagePath}/profile_image.png",
                height: adjustedSize,
                width: adjustedSize,
                filterQuality: FilterQuality.high,
                boxFit: BoxFit.contain,
              ),
              SizedBox(height: height * 0.012),
              Label(text: "Ethan Carter", textStyle: userProfileName()),
              SizedBox(height: height * 0.003),
              Label(
                text: "ethan.carter@example.com",
                textStyle: userProfileEmail(),
              ),
              SizedBox(height: height * 0.003),
              Label(text: "+1 (555) 123-4567", textStyle: userProfileEmail()),
              SizedBox(height: height * 0.02),
              ProfileNavigateButton(
                onPress: onPressEditProfile,
                title: "EditProfile",
                icon: Icons.arrow_forward,
              ),
              SizedBox(height: height * 0.01),
              ProfileNavigateButton(
                onPress: () {},
                title: "Logout",
                icon: Icons.arrow_forward,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
