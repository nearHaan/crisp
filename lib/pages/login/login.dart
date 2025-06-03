import 'package:crisp/pages/login/widgets/custom_text_input.dart';
import 'package:crisp/pages/login/widgets/forgot_pass_box.dart';
import 'package:crisp/pages/login/widgets/login_btn.dart';
import 'package:crisp/pages/login/widgets/top_box.dart';
import 'package:crisp/utils/app_style.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppStyle.yellow,
        body: SingleChildScrollView(
          child: Column(
            children: [
              TopBox(),
              Container(
                height: MediaQuery.of(context).size.height*0.6,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(topRight: Radius.circular(80)),
                  color: Colors.white,
                ),
                clipBehavior: Clip.hardEdge,
                padding: EdgeInsets.all(50),
                child: Column(
                  children: [
                    CustomTextInput(
                      title: 'Enter your mobile number',
                      icon: Icons.phone_iphone,
                    ),
                    SizedBox(height: 20,),
                    CustomTextInput(
                      title: 'Enter Password',
                      icon: Icons.password,
                      isPassword: true,
                      hideText: false,
                    ),
                    SizedBox(height: 10,),
                    ForgotPassBox(),
                    SizedBox(height: 30,),
                    Row(
                      children: [
                        Expanded(
                          child: LoginBtn(),
                        ),
                      ],
                    ),
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Don\'t have an account?', style: AppStyle.smallText,),
                        SizedBox(width: 10,),
                        GestureDetector(
                          onTap: () {
                            //
                          },
                          child: Text(
                            'Register',
                            style: AppStyle.smallText.copyWith(color: Colors.red),
                          ),
                        )
                      ],
                    ),
                    Image(
                      height: 70,
                      image: AssetImage('assets/images/duk_logo.png'),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}