import 'package:flutter/material.dart';
import 'package:login_academy_yt/colors.dart';

class SocialButton extends StatelessWidget {
  final Widget icon;
  final VoidCallback onPressed;

  const SocialButton({
    Key? key,
    required this.icon,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      minWidth: 48,
      height: 48,
      elevation: 0,
      highlightElevation: 0,
      color: dark.withOpacity(0.25),
      splashColor: primary.withOpacity(0.15),
      highlightColor: primary.withOpacity(0.30),
      padding: const EdgeInsets.all(4),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
        side: BorderSide(color: dark),
      ),
      child: icon,
      onPressed: onPressed,
    );
  }
}
