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
var txtSchool = TextEditingController(text: 'VIS');
var txtLocation = TextEditingController(text: 'Surat');
var txtDegree = TextEditingController(text: 'MCA');
var txtStudy = TextEditingController(text: 'IT');
var txtStart = TextEditingController(text: '08/09/2019');
var txtEnd = TextEditingController(text: '06/06/2023');
var txtName = TextEditingController(text: 'Sahil');
var txtSurname = TextEditingController(text: 'Kashyap');
var txtEmail = TextEditingController(text: 'rk4978@gmail.com');
var txtPass = TextEditingController(text: '0801546');
var txtContact = TextEditingController(text: '+91 9875642265');
var txtCity = TextEditingController(text: 'Surat');
var txtCountry = TextEditingController(text: 'India');
var txtPincode = TextEditingController(text: '394210');
var txtLinkedIn = TextEditingController(text: 'Sahil Kashyap');
var txtWebsite = TextEditingController(text: 'www.rnw.multimedia.edu.in');
var txtNationality = TextEditingController(text: 'Indian');
var txtAddress = TextEditingController(text: 'Sai Darshan Soc.,Near Rami Park, Dindoli Surat');
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