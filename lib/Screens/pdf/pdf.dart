import 'dart:io';

import 'package:flutter/material.dart';
import 'package:printing/printing.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:resume_builder_app/utils/global.dart';
import 'dart:typed_data';

import '../contact_info/contactInfo.dart';

class PdfScreen extends StatefulWidget {
  const PdfScreen({super.key});

  @override
  State<PdfScreen> createState() => _PdfScreenState();
}

class _PdfScreenState extends State<PdfScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: PdfPreview(
          build: (format) => generatePdf(),
        ),
      ),
    );
  }
}

Future<Uint8List> generatePdf() {
  final pdf = pw.Document();
  final image = pw.MemoryImage(
    File(fileImage!.path).readAsBytesSync(),
  );
  pdf.addPage(
    pw.Page(
      pageFormat: PdfPageFormat.a4,
      build: (pw.Context context) {
        return pw.Row(
          children: [
            pw.Container(
              padding: const pw.EdgeInsets.all(15),
              height: double.infinity,
              width: 200,
              color: const PdfColor.fromInt(0xffEBE2D3),
              child: pw.Column(
                children: [
                  pw.SizedBox(
                    height: 30,
                  ),
                  pw.Container(
                    height: 100,
                    width: 100,
                    decoration: pw.BoxDecoration(
                      border: pw.Border.all(
                        width: 3,
                        color: PdfColors.black,
                      ),
                    ),
                    child: pw.Image(image),
                  ),
                  pw.SizedBox(
                    height: 30,
                  ),
                  pw.Text('Personal Information'),
                  pw.Divider(
                    thickness: 2,
                    endIndent: 2,
                    indent: 2,
                  ),
                  pw.SizedBox(
                    height: 10,
                  ),
                  pw.Row(
                    children: [
                      pw.Text('Name :- ${txtName.text}'),
                    ],
                  ),
                  pw.SizedBox(
                    height: 10,
                  ),
                  pw.Text(
                      'Description :- A well-written resume job description can offer hiring managers important indications regarding the type of employee you are and the potential value you can bring to an organization.'),
                  pw.Divider(
                    thickness: 2,
                    endIndent: 2,
                    indent: 2,
                  ),
                  pw.Text('Contact'),
                  pw.Divider(
                    thickness: 2,
                    endIndent: 2,
                    indent: 2,
                  ),
                  pw.SizedBox(
                    height: 10,
                  ),
                  pw.Row(
                    children: [
                      pw.Text('Contact no.:- ${txtContact.text}'),
                    ],
                  ),
                  pw.SizedBox(
                    height: 10,
                  ),
                  pw.Row(
                    children: [
                      pw.Text('Email Address:- ${txtEmail.text}'),
                    ],
                  ),
                  pw.SizedBox(
                    height: 10,
                  ),
                  pw.Row(
                    children: [
                      pw.Text('Website:- ${txtWebsite.text}'),
                    ],
                  ),
                  pw.SizedBox(
                    height: 10,
                  ),
                  pw.Divider(
                    thickness: 2,
                    endIndent: 2,
                    indent: 2,
                  ),
                ],
              ),
            ),
            pw.Container(
              height: double.infinity,
              width: 320,
              padding: const pw.EdgeInsets.all(20),
              child: pw.Column(
                children: [
                  pw.Row(
                    children: [
                      pw.Text(
                        txtName.text,
                        style: const pw.TextStyle(
                          color: PdfColor.fromInt(0xff012D6C),
                          fontSize: 30,
                        ),
                      ),
                    ],
                  ),
                  pw.Row(
                    children: [
                      pw.Text(
                        txtSurname.text,
                        style: const pw.TextStyle(
                          color: PdfColor.fromInt(0xff012D6C),
                          fontSize: 30,
                        ),
                      ),
                    ],
                  ),
                  pw.SizedBox(
                    height: 10,
                  ),
                  pw.Divider(
                    thickness: 2,
                    endIndent: 2,
                    indent: 2,
                  ),
                  pw.SizedBox(
                    height: 10,
                  ),
                  pw.Row(
                    children: [
                      pw.Text(
                        'Education',
                        style: const pw.TextStyle(
                          color: PdfColor.fromInt(0xff012D6C),
                          fontSize: 30,
                        ),
                      ),
                    ],
                  ),
                  pw.SizedBox(
                    height: 10,
                  ),
                  pw.Divider(
                    thickness: 2,
                    endIndent: 2,
                    indent: 2,
                  ),
                  pw.SizedBox(
                    height: 10,
                  ),
                  pw.Row(
                    children: [
                      pw.Text(
                        'School/University:- ${txtSchool.text}',
                        style: const pw.TextStyle(
                          color: PdfColor.fromInt(0xff012D6C),
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                  pw.SizedBox(
                    height: 10,
                  ),
                  pw.Row(
                    children: [
                      pw.Text(
                        'Location:- ${txtLocation.text}',
                        style: const pw.TextStyle(
                          color: PdfColor.fromInt(0xff012D6C),
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                  pw.SizedBox(
                    height: 10,
                  ),
                  pw.Row(
                    children: [
                      pw.Text(
                        'Field of study:- ${txtStudy.text}',
                        style: const pw.TextStyle(
                          color: PdfColor.fromInt(0xff012D6C),
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                  pw.SizedBox(
                    height: 10,
                  ),
                  pw.Row(
                    children: [
                      pw.Text(
                        'Degree:- ${txtDegree.text}',
                        style: const pw.TextStyle(
                          color: PdfColor.fromInt(0xff012D6C),
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                  pw.SizedBox(
                    height: 10,
                  ),
                  pw.Row(
                    children: [
                      pw.Text(
                        'Start Year:- $startYear',
                        style: const pw.TextStyle(
                          color: PdfColor.fromInt(0xff012D6C),
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),pw.SizedBox(
                    height: 10,
                  ),
                  pw.Row(
                    children: [
                      pw.Text(
                        'End Year:- $endYear',
                        style: const pw.TextStyle(
                          color: PdfColor.fromInt(0xff012D6C),
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                  pw.SizedBox(
                    height: 10,
                  ),
                  pw.Divider(
                    thickness: 2,
                    endIndent: 2,
                    indent: 2,
                  ),
                  pw.SizedBox(
                    height: 10,
                  ),
                  pw.Row(
                    children: [
                      pw.Text(
                        'Experience',
                        style: const pw.TextStyle(
                          color: PdfColor.fromInt(0xff012D6C),
                          fontSize: 30,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        );
      },
    ),
  );
  return pdf.save();
}
