import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram_fluuter/utils/colors.dart';

import '../widgets/text_field_input.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    final TextEditingController _emailController = TextEditingController();
    final TextEditingController _passwordController = TextEditingController();

    @override
    void dispose() {
      super.dispose();
      _emailController.dispose();
      _passwordController.dispose();
    }

    return Scaffold(
        body: SafeArea(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Flexible(
              child: Container(),
              flex: 2,
            ),
            // svg image
            SvgPicture.asset(
              "assets/ic_instagram.svg",
              color: primaryColor,
              height: 64,
            ),
            const SizedBox(
              height: 64,
            ),
            // text field input for email
            TextfieldInput(
              textEditingController: _emailController,
              hintText: "Enter Your email",
              textInputType: TextInputType.emailAddress,
            ),
            const SizedBox(
              height: 24,
            ),
            TextfieldInput(
              textEditingController: _passwordController,
              hintText: "Enter Your email",
              textInputType: TextInputType.emailAddress,
              isPass: true,
            ),
            const SizedBox(
              height: 24,
            ),

            Container(
              child: Text("Log in"),
              width: double.infinity,
              alignment: Alignment.center,
              padding: const EdgeInsets.symmetric(vertical: 12),
              decoration: const ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(4),
                    ),
                  ),
                  color: blueColor),
            ),
            const SizedBox(
              height: 24,
            ),
            Flexible(
              child: Container(),
              flex: 2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: (){},
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: const Text("Don't have an account"),
                  ),
                ),
                const SizedBox(width: 10,),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: const Text("Sign Up"),
                ),
              ],
            )

            // text field input for password
            // button login??
            // transitioning to signing up
          ],
        ),
      ),
    ));
  }
}
