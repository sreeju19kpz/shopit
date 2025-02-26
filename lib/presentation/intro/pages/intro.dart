import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shopit/core/configs/assets/app_images.dart';
import 'package:shopit/core/configs/theme/app_colors.dart';
import 'package:shopit/core/configs/theme/app_screens.dart';
import 'package:shopit/presentation/splash/pages/splash.dart';
import 'package:shopit/common/widgets/primary_button/primary_button.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  void onPress() {
    context.go(AppScreens.loginScreen);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(AppImages.introOne),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            color: Colors.black.withAlpha(100), // 50% transparent black overlay
          ),
          SafeArea(
            child: Column(
              children: [
                Align(alignment: Alignment.topCenter),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    children: [
                      Text(
                        "Lorem Epsum",
                        style: TextStyle(
                          color: AppColors.lightBackground,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        "nwdoawnca wawndac awodpnaknic nopawhniodin cawopdn oaincawd aikcnoawind. nwdoawnca wawndac awodpnaknic nopawhniodin cawopdn oaincawd aikcnoawind.nwdoawnca wawndac awodpnaknic nopawhniodin cawopdn oaincawd aikcnoawind",
                        style: TextStyle(
                          color: AppColors.darkMutedText1,
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          height: 1.4,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 20),
                      PrimaryButton(onPress: onPress, title: "title"),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void redirect() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (BuildContext context) => const SplashScreen(),
      ),
    );
  }
}
