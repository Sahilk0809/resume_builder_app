import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:resume_builder_app/routes/routes.dart';

void main(){
  runApp(const Resume());
}

class Resume extends StatelessWidget {
  const Resume({super.key});

  @override
  Widget build(BuildContext context) {
    const SystemUiOverlayStyle(statusBarColor: Colors.black);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
     routes: MyRoutes.routes,
    );
  }
}
