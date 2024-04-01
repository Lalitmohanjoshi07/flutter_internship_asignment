import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_internship_asignment/presentation/login/widgets/custom_phone.dart';
import 'package:flutter_internship_asignment/presentation/widgets/custom_buttons.dart';
import 'package:flutter_internship_asignment/presentation/widgets/error_dialog.dart';
import 'package:flutter_internship_asignment/presentation/widgets/texts.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController countryCodeController = TextEditingController(text: "+91");
  @override
  Widget build(BuildContext context) {
    if (kIsWeb) {
      return Scaffold(
        body: Center(
          child: Container(
            height: 500,
            width: 500,
            padding: const EdgeInsets.symmetric(vertical: 20),
            decoration: BoxDecoration(border: Border.all(), borderRadius: BorderRadius.circular(10), color: Colors.yellow.shade100),
            child: _buildScript(),
          ),
        ),
      );
    } else {
      return Scaffold(body: _buildScript());
    }
  }

  Widget _buildScript() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const CustomText.largeBold(text: "Login to Continue"),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomPhoneEditor(countryCodeController: countryCodeController, phoneController: phoneController),
              // const CustomText.bold(text: "Login screen"),
              const SizedBox(height: 20),
              PrimaryButton("Login", ontap: login),
              const SizedBox(height: 20),
              SecondaryButton(
                "Guest",
                ontap: () {},
              ),
            ],
          ),
        ),
      ],
    );
  }

  //login button
  login() {
    final String phno = phoneController.text.toString();
    final String countrycode = countryCodeController.text.toString();
    if (countrycode.isEmpty) {
      ErrorDialog.show(context, "country code required");
      return;
    }
    if (phno.isEmpty) {
      ErrorDialog.show(context, "phone number required");
      return;
    }
    RegExp phPattern = RegExp(r'^\+[0-9]+$');
    if (!phPattern.hasMatch(phno)) {
      ErrorDialog.show(context, "invalid phone number");
      return;
    }
  }
}
