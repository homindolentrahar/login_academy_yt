import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login_academy_yt/colors.dart';
import 'package:login_academy_yt/pages/login_page.dart';
import 'package:login_academy_yt/transitions/slide_in_transition.dart';
import 'package:login_academy_yt/widgets/primary_button.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(
              width: double.infinity,
              child: SvgPicture.asset(
                "assets/images/landing.svg",
                fit: BoxFit.cover,
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 32,
                  right: 32,
                  bottom: 64,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    FadeInDown(
                      duration: Duration(milliseconds: 500),
                      child: Text(
                        "Experience limitless learning system",
                        style: TextStyle(
                          color: white,
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    FadeInDown(
                      duration: Duration(milliseconds: 500),
                      delay: Duration(milliseconds: 1250),
                      child: Text(
                        "Designed to help students studying easier, more efficient, with limitless resources",
                        style: TextStyle(
                          color: light,
                          fontSize: 14,
                        ),
                      ),
                    ),
                    const SizedBox(height: 64),
                    FadeInUp(
                      duration: Duration(milliseconds: 500),
                      delay: Duration(milliseconds: 1750),
                      child: PrimaryButton(
                        text: "Get Started",
                        onPressed: () =>
                            Navigator.of(context).push(
                          SlideInTransition(
                            page: LoginPage(),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
