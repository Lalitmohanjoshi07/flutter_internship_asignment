import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_internship_asignment/presentation/widgets/texts.dart';

class CustomPhoneEditor extends StatelessWidget {
  final TextEditingController phoneController;
  final TextEditingController countryCodeController;
  const CustomPhoneEditor({super.key, required this.countryCodeController, required this.phoneController});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width <= 500 ? MediaQuery.of(context).size.width / 4 : 100,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 5.0),
                child: CustomText.small(text: 'Country Code'),
              ),
              CustomTextField(
                controller: countryCodeController,
                hint: '+91',
                isNumeric: true,
                require: true,
                length: 4,
              ),
            ],
          ),
        ),
        const SizedBox(width: 10),
        SizedBox(
          width: MediaQuery.of(context).size.width <= 500 ? MediaQuery.of(context).size.width * 2 / 4 : 300,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 5.0),
                child: CustomText.small(text: 'Phone no.'),
              ),
              CustomTextField(
                controller: phoneController,
                hint: "9876543210",
                isNumeric: true,
                length: 10,
                require: true,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
