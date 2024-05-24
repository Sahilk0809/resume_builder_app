import 'package:flutter/material.dart';
import 'package:resume_builder_app/utils/colors.dart';

class TemplateScreen extends StatefulWidget {
  const TemplateScreen({super.key});

  @override
  State<TemplateScreen> createState() => _TemplateScreenState();
}

class _TemplateScreenState extends State<TemplateScreen> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 1,
          shadowColor: Colors.black,
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text(
            'CHOOSE TEMPLATE',
            style: TextStyle(
              color: blueSelect,
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Browse and select the\ntemplate for your CV',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: blueSelect,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    template(height, width, 'assets/img/template1.png'),
                    const SizedBox(
                      width: 30,
                    ),
                    template(height, width, 'assets/img/temp.webp'),
                    const SizedBox(
                      width: 30,
                    ),
                    template(height, width, 'assets/img/temp2.webp'),
                    const SizedBox(
                      width: 30,
                    ),
                    template(height, width, 'assets/img/temp3.jpg'),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                height: height * 0.08,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    colors(Color: Colors.black),
                    colors(Color: Colors.amber),
                    colors(Color: Colors.red),
                    colors(Color: Colors.blue),
                    colors(Color: Colors.teal),
                    colors(Color: Colors.purple),
                  ],
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed('/cvOption');
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
                    'Select this Template',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                      letterSpacing: 0.9,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Container template(double height, double width, img) {
    return Container(
      height: height * 0.45,
      width: width * 0.6,
      decoration: BoxDecoration(
        color: Colors.white,
        image: DecorationImage(
          image: AssetImage(img),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Container colors({required Color}) {
    return Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(
        color: Color,
        shape: BoxShape.circle,
      ),
    );
  }
}
