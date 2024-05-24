import 'package:flutter/material.dart';
import 'colors.dart';

Row nameOfApp({required fontSize}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(
        'my',
        style: TextStyle(
          color: blueSelect,
          fontSize: fontSize,
          fontWeight: FontWeight.bold,
        ),
      ),
      Text(
        'perfect',
        style: TextStyle(
          color: redSelect,
          fontSize: fontSize,
          fontWeight: FontWeight.bold,
        ),
      ),
      Text(
        'CV',
        style: TextStyle(
          color: blueSelect,
          fontSize: fontSize,
          fontWeight: FontWeight.bold,
        ),
      ),
    ],
  );
}

List settingDetails = [
  'Account info',
  'Subscription',
  'Downloads',
  'Notifications',
  'Contact support',
  'FAQ\'s',
  'Send Feedback'
];

var txtBirthDate = TextEditingController();
var txtSchool = TextEditingController();
var txtLocation = TextEditingController();
var txtDegree = TextEditingController();
var txtStudy = TextEditingController();
var txtStart = TextEditingController();
var txtEnd = TextEditingController();
DateTime? datePicker;
String birthDate = '';

class EducationModel {
  TextEditingController? school;
  TextEditingController? location;
  TextEditingController? degree;
  TextEditingController? study;
  TextEditingController? startYear;
  TextEditingController? endYear;

  EducationModel({
    this.school,
    this.degree,
    this.location,
    this.startYear,
    this.endYear,
    this.study,
  });
}

List<EducationModel> educationModelList = [
  EducationModel(school: txtSchool, degree: txtDegree, endYear: txtEnd, startYear: txtStart, location: txtLocation, study: txtStudy),
];

String startYear = '';
String endYear = '';