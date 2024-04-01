import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  final Color color;
  final TextStyle style;
  const CustomText.small({Key? key, this.color = Colors.black, required this.text})
      : style = const TextStyle(fontSize: 10, fontWeight: FontWeight.normal),
        super(key: key);
  const CustomText.large({Key? key, this.color = Colors.black, required this.text})
      : style = const TextStyle(fontSize: 30, fontWeight: FontWeight.normal),
        super(key: key);
  const CustomText.largeBold({Key? key, this.color = Colors.black, required this.text})
      : style = const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        super(key: key);
  const CustomText.medium({Key? key, this.color = Colors.black, required this.text})
      : style = const TextStyle(fontSize: 20, fontWeight: FontWeight.normal),
        super(key: key);
  const CustomText.bold({Key? key, this.color = Colors.black, required this.text})
      : style = const TextStyle(fontWeight: FontWeight.bold),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: style.copyWith(color: color),
    );
  }
}

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hint;
  final bool isNumeric;
  final int? length;
  final bool require;
  const CustomTextField({Key? key, this.require = false, this.length, this.isNumeric = false, required this.controller, this.hint = "hint"}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(border: Border.all(), borderRadius: BorderRadius.circular(10), color: Colors.grey[300]),
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: TextFormField(
        maxLength: length,
        validator: (value) {
          if (value!.isEmpty) {
            return 'required field';
          }
          return null;
        },
        keyboardType: isNumeric ? const TextInputType.numberWithOptions() : null,
        decoration: InputDecoration(border: InputBorder.none, hintText: hint, counterText: ""),
        // style: TextStyle(bo),
        controller: controller,
      ),
    );
  }
}
