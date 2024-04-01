import 'package:flutter/material.dart';
import 'package:flutter_internship_asignment/presentation/widgets/texts.dart';

class PrimaryButton extends StatelessWidget {
  final String title;
  final Function()? ontap;
  const PrimaryButton(this.title, {super.key, this.ontap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        alignment: Alignment.center,
        height: 50,
        width: MediaQuery.of(context).size.width < 500 ? MediaQuery.of(context).size.width / 2 : 300,
        decoration: BoxDecoration(border: Border.all(), borderRadius: BorderRadius.circular(6), color: Colors.indigo),
        child: CustomText.medium(
          text: title,
          color: Colors.white,
        ),
      ),
    );
  }
}

class SecondaryButton extends StatelessWidget {
  final String title;
  final Function()? ontap;
  const SecondaryButton(this.title, {super.key, this.ontap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        alignment: Alignment.center,
        height: 50,
        width: MediaQuery.of(context).size.width < 500 ? MediaQuery.of(context).size.width / 2 : 300,
        decoration: BoxDecoration(border: Border.all(), borderRadius: BorderRadius.circular(6), color: Colors.grey[700]),
        child: CustomText.medium(
          text: title,
          color: Colors.white,
        ),
      ),
    );
  }
}
