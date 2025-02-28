import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shopit/common/widgets/primary_button/ripple.dart';
import 'package:shopit/core/configs/assets/app_images.dart';
import 'package:shopit/core/configs/theme/app_screens.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  void onPress() {
    context.go(AppScreens.homeScreen);
  }

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            AppImages.loginBG,
            fit: BoxFit.cover,
            height: height - 200,
            width: MediaQuery.of(context).size.width,
          ),
          Container(
            height: height - 200,
            decoration: BoxDecoration(
              color: Colors.white,
              gradient: LinearGradient(
                begin: FractionalOffset.topCenter,
                end: FractionalOffset.bottomCenter,
                colors: [
                  const Color.fromARGB(26, 255, 255, 255),
                  const Color.fromARGB(255, 255, 255, 255),
                ],
                stops: [0.0, 1.0],
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Column(
              children: [
                Spacer(),
                SizedBox(
                  height: 200,
                  child: Padding(
                    padding: const EdgeInsets.all(32),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Divider(
                                color: Colors.grey.shade400,
                                thickness: 1,
                                indent: 20,
                                endIndent: 10,
                              ),
                            ),
                            Text(
                              "Sign in with",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.grey.shade700,
                              ),
                            ),
                            Expanded(
                              child: Divider(
                                color: Colors.grey.shade400,
                                thickness: 1,
                                indent: 10,
                                endIndent: 20,
                              ),
                            ),
                          ],
                        ),
                        Spacer(),
                        RippleButton(
                          onPress: onPress,
                          child: Center(child: Text("G")),
                        ),
                        Spacer(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
