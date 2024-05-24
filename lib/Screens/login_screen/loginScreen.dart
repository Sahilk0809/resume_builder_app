import 'package:flutter/material.dart';
import 'package:resume_builder_app/utils/colors.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}
var txtEmail = TextEditingController();
var txtPassword = TextEditingController();
GlobalKey<FormState> formKey = GlobalKey();

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    // var width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text(
            'REGISTRATION',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: blueSelect,
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Form(
            key: formKey,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Login',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 25,
                          color: blueSelect,
                          letterSpacing: 0.7,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Container(
                    height: height * 0.065,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.black26,
                            blurRadius: 2,
                            spreadRadius: 1,
                            offset: Offset(0, 1))
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/img/google.png',
                          width: 40,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Sign in with Google',
                          style: TextStyle(
                              fontSize: 19, color: Colors.grey.shade700),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  const Text(
                    '---------- or login with ----------',
                    style: TextStyle(
                      fontSize: 17,
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  inputMethod(
                      hintText: 'Email Address',
                      keyBoardType: TextInputType.emailAddress,
                      obscureText: false,
                      controller: txtEmail),
                  const SizedBox(
                    height: 20,
                  ),
                  inputMethod(
                      hintText: 'Password',
                      obscureText: true,
                      controller: txtPassword),
                  const SizedBox(
                    height: 50,
                  ),
                  TextButton(
                    onPressed: () {

                    },
                    child: const Text(
                      'Forget Password?',
                      style: TextStyle(
                        color: Colors.blueAccent,
                        decoration: TextDecoration.underline,
                        decorationColor: Colors.blueAccent,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Terms | Privacy | Contact Us',
                    style: TextStyle(
                      color: blueSelect,
                    ),
                  ),
                  const SizedBox(
                    height: 150,
                  ),
                  GestureDetector(
                    onTap: () {
                      bool response = formKey.currentState!.validate();
                      if(response){
                        Navigator.of(context).pushNamed('/dashboard');
                      }
                    },
                    child: Container(
                      alignment: Alignment.center,
                      height: height * 0.07,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.teal,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: const Text(
                        'Login',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  SizedBox inputMethod(
      {required String hintText,
      keyBoardType,
      required obscureText,
      required controller}) {
    return SizedBox(
      width: 300,
      child: TextFormField(
        validator: (value) {
          if(value!.isEmpty){
            return 'Required';
          }
          return null;
        },
        controller: controller,
        keyboardType: keyBoardType,
        decoration: InputDecoration(
          focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(
              width: 2,
              color: Colors.teal,
            ),
          ),
          hintText: hintText,
          hintStyle: TextStyle(
            color: Colors.grey.shade400,
          ),
        ),
        cursorColor: Colors.teal,
        obscureText: obscureText,
      ),
    );
  }
}
