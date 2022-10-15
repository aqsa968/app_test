import 'package:flutter/material.dart';

class RectangularTextField extends StatelessWidget {
  final String? hintText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final String? title;
  final EdgeInsetsGeometry? contentPadding;
  final bool obscureText;
  final TextEditingController? controller;

  RectangularTextField({
    Key? key,
    this.contentPadding = const EdgeInsets.fromLTRB(10, 13.5, 10, 13.5),
    this.controller,
    this.suffixIcon,
    this.obscureText = false,
    this.hintText,
    this.prefixIcon,
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title ?? "",
          style: const TextStyle(
            color: Color(0xff858597),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 3),
          child: TextFormField(
            controller: controller,
            obscureText: obscureText,
            decoration: InputDecoration(
              prefixIcon: prefixIcon,
              contentPadding: contentPadding,
              suffixIcon: suffixIcon,
              // suffixIconConstraints: BoxConstraints.expand(width: 40),
              filled: true,
              fillColor: Colors.white,
              hintText: hintText,
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xffB8B8D2)),
                borderRadius: BorderRadius.circular(11),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xffB8B8D2), width: 1.5),
                borderRadius: BorderRadius.circular(11),
              ),
              errorBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.red.shade700),
                borderRadius: BorderRadius.circular(11),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.red.shade700, width: 1.5),
                borderRadius: BorderRadius.circular(11),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
