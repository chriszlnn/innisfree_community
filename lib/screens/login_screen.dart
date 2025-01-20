import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/colors.dart';
import 'package:flutter_application_1/widgets/text_field_input.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 32),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Flexible(child: Container(), flex: 1,),
            //svg image
            Image.asset("assets/images/Innisfree-Logo.png", height: 64,),
            
            
            const SizedBox(height: 64,),
            //text Field for email
            TextFieldInput(
              textEditingController: _emailController,
              hintText: "Enter Your Email",
              textInputType: TextInputType.emailAddress,
            ),
            const SizedBox(height: 16,),
            //text field for password
            TextFieldInput(
              textEditingController: _passwordController,
              hintText: "Enter Your Password",
              textInputType: TextInputType.text,
              isPass: true,
            ),

            const SizedBox(height: 16,),
            //button login
            Container(
              child:const Text('Log in'),
              width: double.infinity,
              alignment: Alignment.center,
              padding: const EdgeInsets.symmetric(vertical: 12),
              decoration: const ShapeDecoration(shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(4)
                ),
              ),
              color: blueColor
            ),
            ),
            const SizedBox(height: 12,),
            //transitioning to sign up
          ],)
        )
        )
    );
  }
}