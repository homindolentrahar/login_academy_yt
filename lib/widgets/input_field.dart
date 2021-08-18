import 'package:flutter/material.dart';
import 'package:login_academy_yt/colors.dart';

class InputField extends StatelessWidget {
  final TextEditingController controller;
  final Widget icon;
  final String hint;
  final bool obscure;
  final TextInputType keyboardType;
  final TextInputAction action;

  const InputField({
    Key? key,
    required this.controller,
    required this.icon,
    required this.hint,
    this.obscure = false,
    this.keyboardType = TextInputType.text,
    this.action = TextInputAction.done,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 8,
      ),
      decoration: BoxDecoration(
        color: dark.withOpacity(0.5),
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: dark),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          icon,
          const SizedBox(width: 8),
          Expanded(
            child: TextField(
              controller: controller,
              obscureText: obscure,
              cursorColor: primary,
              keyboardType: keyboardType,
              textInputAction: action,
              style: TextStyle(
                color: light,
                fontWeight: FontWeight.w500,
              ),
              decoration: InputDecoration(
                hintText: hint,
                hintStyle: TextStyle(
                  color: gray,
                ),
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
              ),
            ),
          )
        ],
      ),
    );
  }
}
