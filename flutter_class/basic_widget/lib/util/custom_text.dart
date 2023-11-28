import 'package:flutter/material.dart';


// ignore: must_be_immutable
class CustomTextField extends StatelessWidget {
  final String hintText;
  final IconData? prefixIconData;
  final IconData? suffixIconData;
  final bool? obscure;
  final VoidCallback? press;
  String? Function(String?)? validatorFuction;

  CustomTextField({
    super.key,
    required this.hintText,
    this.prefixIconData,
    this.obscure = false,
    this.suffixIconData,
    this.press,
    this.validatorFuction,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscure!,
      style: const TextStyle(color: Colors.white),
      onChanged: (value) {
        debugPrint(value);
      },
      validator: validatorFuction,
      decoration: InputDecoration(
        fillColor: Colors.black,
        filled: true,
        isCollapsed: true,
        contentPadding: const EdgeInsets.all(12),
        hintText: "Enter your $hintText",
        hintStyle: const TextStyle(color: Colors.grey),
        prefixIcon: Icon(prefixIconData, color: Colors.amber),
        suffixIcon: GestureDetector(
            onTap: press, child: Icon(suffixIconData, color: Colors.amber)),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: Colors.white, width: 2.5)),
      ),
    );
  }
}
