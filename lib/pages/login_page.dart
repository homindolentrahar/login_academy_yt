import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login_academy_yt/colors.dart';
import 'package:login_academy_yt/widgets/input_field.dart';
import 'package:login_academy_yt/widgets/primary_button.dart';
import 'package:login_academy_yt/widgets/social_button.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _usernameController = TextEditingController();
    final _passwordController = TextEditingController();
    final List<String> _socialIcons = [
      "assets/icons/twitter.svg",
      "assets/icons/google.svg",
      "assets/icons/facebook.svg",
    ];

    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: [
            SizedBox(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.25,
              child: SvgPicture.asset(
                "assets/images/login.svg",
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.only(
                left: 32,
                right: 32,
                bottom: 64,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () => Navigator.of(context).pop(),
                    child: Row(
                      children: [
                        SvgPicture.asset(
                          "assets/icons/back.svg",
                          color: light,
                        ),
                        const SizedBox(width: 8),
                        Text(
                          "Back",
                          style: TextStyle(
                            color: light,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16),
                  FadeInDown(
                    duration: Duration(milliseconds: 500),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Let\'s jump in!",
                          style: TextStyle(
                            color: white,
                            fontSize: 28,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          "Nice to see you around, please sign in into your account",
                          style: TextStyle(
                            color: light,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16),
                  FadeInDown(
                    duration: Duration(milliseconds: 500),
                    delay: Duration(milliseconds: 750),
                    child: Row(
                      children: _socialIcons
                          .map(
                            (icon) => Container(
                              margin: const EdgeInsets.only(right: 24),
                              child: SocialButton(
                                icon: SvgPicture.asset(icon),
                                onPressed: () {},
                              ),
                            ),
                          )
                          .toList(),
                    ),
                  ),
                  const SizedBox(height: 32),
                  FadeInUp(
                    duration: Duration(milliseconds: 500),
                    delay: Duration(milliseconds: 1250),
                    child: Form(
                      child: Column(
                        children: [
                          InputField(
                            controller: _usernameController,
                            icon: SvgPicture.asset("assets/icons/username.svg"),
                            hint: "username",
                            action: TextInputAction.next,
                          ),
                          const SizedBox(height: 16),
                          InputField(
                            controller: _passwordController,
                            icon: SvgPicture.asset("assets/icons/password.svg"),
                            hint: "password",
                            obscure: true,
                            keyboardType: TextInputType.visiblePassword,
                            action: TextInputAction.done,
                          ),
                          const SizedBox(height: 32),
                          PrimaryButton(
                            text: "Sign In",
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
