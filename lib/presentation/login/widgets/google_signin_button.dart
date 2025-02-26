/* import 'package:flutter/material.dart';
import 'package:shopit/domain/usecases/sign_in_with_google_usecase.dart';

class GoogleButton extends StatelessWidget {
  final SignInWithGoogleUseCase signInUseCase;

  const GoogleButton({super.key, required this.signInUseCase});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Text("Sign in with Google"),
      onPressed: () async {
        final user = await signInUseCase();
        if (user != null) {
          print("Signed in as: ${user.displayName}");
        }
      },
    );
  }
}
 */

import 'package:flutter/material.dart';
import 'package:shopit/common/widgets/primary_button/ripple.dart';
import 'package:shopit/presentation/home/pages/home.dart';

class GoogleSigninButton extends StatefulWidget {
  const GoogleSigninButton({super.key});

  @override
  State<GoogleSigninButton> createState() => _GoogleSigninButtonState();
}

class _GoogleSigninButtonState extends State<GoogleSigninButton> {
  void onPress() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (BuildContext context) => HomePage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return RippleButton(onPress: onPress, title: "G");
  }
}
