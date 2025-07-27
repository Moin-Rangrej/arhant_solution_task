import 'package:arhant_solution_task/utils/utils.dart';
import 'package:arhant_solution_task/widget/appBar/custom_appbar.dart';
import 'package:arhant_solution_task/widget/custom_button.dart';
import 'package:arhant_solution_task/widget/custom_textbutton.dart';
import 'package:arhant_solution_task/widget/custom_textfield.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String? userName(value) {
    if (value == null || value.isEmpty) {
      return 'Please enter some text';
    }
    return null;
  }

  String? passwordValidator(value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your password';
    } else if (value.length < 6) {
      return 'Password must be at least 6 characters';
    }
    return null;
  }

  void onPressSaveChange() {
    if (_formKey.currentState!.validate()) {
      print("Username: ${usernameController.text}");
      print("Password: ${passwordController.text}");
    } else {
      print("Form is invalid");
    }
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: CustomAppbar(title: "Login"),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: width * 0.02,
              vertical: height * 0.05,
            ),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  CustomTextfield(
                    textEditingController: usernameController,
                    hintText: "Username or Phone Number",
                    textCapitalization: TextCapitalization.words,
                    textInputAction: TextInputAction.next,
                    validator: userName,
                    inputBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                      borderSide: BorderSide.none,
                    ),
                  ),
                  SizedBox(height: height * 0.025),
                  CustomTextfield(
                    textEditingController: passwordController,
                    hintText: "Password",
                    obsecureText: true,
                    textCapitalization: TextCapitalization.words,
                    textInputAction: TextInputAction.done,
                    validator: passwordValidator,
                    inputBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                      borderSide: BorderSide.none,
                    ),
                  ),
                  CustomTextbutton(onPress: () {}, text: "Forgot Password?"),
                  Divider(color: appColor.lightCoolGray),
                  SizedBox(height: height * 0.01),
                  CustomButton(
                    text: "Save Changes",
                    onPress: onPressSaveChange,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
