import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram_fluuter/utils/colors.dart';

import '../widgets/text_field_input.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    final TextEditingController _emailController = TextEditingController();
    final TextEditingController _passwordController = TextEditingController();
    final TextEditingController _bioController = TextEditingController();
    final TextEditingController _userNameController = TextEditingController();

    @override
    void dispose() {
      super.dispose();
      _emailController.dispose();
      _passwordController.dispose();
      _bioController.dispose();
      _userNameController.dispose();
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

            // circular widget to accept and show our selected file

            Stack(
              children: [
                const CircleAvatar(
                  radius: 64,
                  backgroundImage: NetworkImage("https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/29bb5312-f201-4099-aa99-7f8916f3ae5f/d22jy1i-a05a4094-094c-476f-a1a9-504c466c1c47.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcLzI5YmI1MzEyLWYyMDEtNDA5OS1hYTk5LTdmODkxNmYzYWU1ZlwvZDIyankxaS1hMDVhNDA5NC0wOTRjLTQ3NmYtYTFhOS01MDRjNDY2YzFjNDcuanBnIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.JqD2lq-LYIe7eGt4CiWKXc2n46niwBaTShYF7MeNkic"),
                ),
                Positioned(child: IconButton(onPressed: (){}, icon: Icon(Icons.add_a_photo),), 
                bottom: -10,
                left: 80,),

              ],
            ),

            const SizedBox(
              height: 24,
            ),


            // text field input for username

            TextfieldInput(
              textEditingController: _userNameController,
              hintText: "Enter Your username",
              textInputType: TextInputType.text,
            ),
            const SizedBox(
              height: 24,
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
              hintText: "Enter Your Password",
              textInputType: TextInputType.text,
              isPass: true,
            ),
            const SizedBox(
              height: 24,
            ),
            TextfieldInput(
              textEditingController: _bioController,
              hintText: "Enter Your bio",
              textInputType: TextInputType.text,
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
                    child: const Text("I have already account"),
                  ),
                ),
                const SizedBox(width: 10,),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: const Text("Log in"),
                ),
              ],
            )

            // text field input for password
            // button loginπ
            // transitioning to signing up
          ],
        ),
      ),
    ));
  }
}
