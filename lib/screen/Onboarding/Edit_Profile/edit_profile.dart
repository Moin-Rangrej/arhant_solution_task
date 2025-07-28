import 'package:arhant_solution_task/screen/parent.dart';
import 'package:arhant_solution_task/utils/utils.dart';
import 'package:arhant_solution_task/widget/appBar/custom_appbar.dart';
import 'package:arhant_solution_task/widget/custom_button.dart';
import 'package:arhant_solution_task/widget/custom_textfield.dart';
import 'package:flutter/material.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController mobileNumberController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String? _nameValidate(value) {
    if (value == null || value.isEmpty) {
      return 'Please enter Name';
    }
    return null;
  }

  String? _emailValidate(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter Email';
    }
    // Basic email regex
    final emailRegex = validation.emailRegex;
    if (!emailRegex.hasMatch(value)) {
      return 'Please enter a valid Email';
    }
    return null;
  }

  String? _mobileNumberValidate(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter Mobile Number';
    }
    // Indian mobile number: 10 digits starting with 6-9
    final phoneRegex = validation.phoneRegex;
    if (!phoneRegex.hasMatch(value)) {
      return 'Please enter a valid Mobile Number';
    }
    return null;
  }

  void onPressSaveChange() {
    FocusManager.instance.primaryFocus?.unfocus();
    if (_formKey.currentState!.validate()) {
      print("Name: ${nameController.text}");
      print("Email: ${emailController.text}");
      print("PhoneNumber: ${mobileNumberController.text}");
    } else {
      print("Form is invalid");
    }
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: CustomAppbar(title: "Edit Profile"),
      body: Parent(
        paddingHorizontal: width * 0.08,
        paddingVertical: height * 0.04,
        childWidget: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              children: <Widget>[
                CustomTextfield(
                  title: "Name",
                  textEditingController: nameController,
                  textCapitalization: TextCapitalization.words,
                  textInputAction: TextInputAction.next,
                  textInputType: TextInputType.text,
                  validator: _nameValidate,
                ),
                SizedBox(height: height * 0.025),
                CustomTextfield(
                  title: "Email",
                  textEditingController: emailController,
                  textInputAction: TextInputAction.next,
                  textInputType: TextInputType.emailAddress,
                  validator: _emailValidate,
                ),
                SizedBox(height: height * 0.025),
                CustomTextfield(
                  title: "Mobile Number",
                  textEditingController: mobileNumberController,
                  textInputAction: TextInputAction.done,
                  textInputType: TextInputType.phone,
                  validator: _mobileNumberValidate,
                ),
                SizedBox(height: height * 0.06),
                Divider(color: appColor.lightCoolGray),
                CustomButton(text: "Save Changes", onPress: onPressSaveChange),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
