import 'package:flutter/material.dart';
import 'package:resume_builder_app/utils/colors.dart';
import 'package:resume_builder_app/utils/global.dart';

class EnterScreen extends StatefulWidget {
  const EnterScreen({super.key});

  @override
  State<EnterScreen> createState() => _EnterScreenState();
}

class _EnterScreenState extends State<EnterScreen> {
  @override
  Widget build(BuildContext context) {
    // var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  nameOfApp(fontSize: 22.0),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed('/login');
                    },
                    child: const Text(
                      'Login',
                      style: TextStyle(
                        color: Colors.blueAccent,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: height * 0.24,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: const DecorationImage(
                    image: AssetImage('assets/img/banner.jpg'),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Just three',
                style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: blueSelect),
              ),
              Text(
                'simple steps',
                style: TextStyle(
                    height: 0.8,
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: blueSelect),
              ),
              const SizedBox(
                height: 20,
              ),
              enterScreenDetails(
                  num: '1',
                  text:
                      'Select a CV from our library of\n professional designs'),
              const SizedBox(
                height: 20,
              ),
              enterScreenDetails(
                  num: '2',
                  text:
                      'Build your CV with our\n with industry-specific bullet points.'),
              const SizedBox(
                height: 20,
              ),
              enterScreenDetails(
                  num: '3',
                  text:
                      'Download your CV, print it out\n and get it ready to send!'),
              const SizedBox(
                height: 80,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'By clicking create my CV you agree to our ',
                    style: TextStyle(
                      color: blueSelect,
                    ),
                  ),
                  const Text(
                    'Terms of',
                    style: TextStyle(
                      color: Colors.blueAccent,
                      decoration: TextDecoration.underline,
                      decorationColor: Colors.blueAccent,
                    ),
                  ),
                ],
              ),
              const Text(
                'Use and Privacy Policy',
                style: TextStyle(
                  color: Colors.blueAccent,
                  decoration: TextDecoration.underline,
                  decorationColor: Colors.blueAccent,
                ),
              ),
              const SizedBox(
                height: 17,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed('/template');
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
                    'Create My CV',
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
    );
  }

  Row enterScreenDetails({required String num, required String text}) {
    return Row(
      children: [
        CircleAvatar(
          radius: 15,
          backgroundColor: Colors.yellow.shade700,
          child: Text(
            num,
            style: TextStyle(
              fontSize: 20,
              color: blueSelect,
            ),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Text(
          text,
          style: TextStyle(
            fontSize: 20,
            color: blueSelect,
          ),
        ),
      ],
    );
  }
}
