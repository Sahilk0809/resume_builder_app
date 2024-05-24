import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:resume_builder_app/utils/colors.dart';

class ContactInfo extends StatefulWidget {
  const ContactInfo({super.key});

  @override
  State<ContactInfo> createState() => _ContactInfoState();
}

ImagePicker imagePicker = ImagePicker();
File? fileImage;
TextEditingController txtName = TextEditingController();
TextEditingController txtSurname = TextEditingController();
TextEditingController txtEmail = TextEditingController();
TextEditingController txtPass = TextEditingController();
TextEditingController txtContact = TextEditingController();
TextEditingController txtCity = TextEditingController();
TextEditingController txtCountry = TextEditingController();
TextEditingController txtPincode = TextEditingController();
TextEditingController txtLinkedIn = TextEditingController();
TextEditingController txtWebsite = TextEditingController();
TextEditingController txtNationality = TextEditingController();

class _ContactInfoState extends State<ContactInfo> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).pushNamed('/workHistory');
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
              'Continue',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 25),
            ),
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        shadowColor: Colors.black,
        centerTitle: true,
        title: Text(
          'Contact information',
          style: TextStyle(color: blueSelect, fontSize: 21),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 12),
            child: Text(
              'Preview',
              style: TextStyle(
                  color: Colors.blueAccent,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    "What's the best way for\nemployers to Contact\nyou?",
                    style: TextStyle(
                      color: blueSelect,
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text(
                    'We suggest including an email an phone\nnumber.',
                    style: TextStyle(
                        color: blueSelect,
                        fontSize: 17,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Container(
                    height: height * 0.14,
                    width: width * 0.3,
                    decoration: BoxDecoration(
                      image: (fileImage != null)
                          ? DecorationImage(
                              fit: BoxFit.cover,
                              image: FileImage(fileImage!),
                            )
                          : null,
                      color: Colors.white,
                      border: Border.all(width: 1, color: Colors.grey),
                    ),
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            '   '
                            'Add a photo to your CV',
                            style: TextStyle(color: blueSelect, fontSize: 18),
                          ),
                        ],
                      ),
                      const Row(
                        children: [
                          Text(
                            'Supported files format\nare .JPEG, .PNG, and .HEIC.Size\nlimit is set at 4MB',
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 80),
                        child: IconButton(
                            onPressed: () async {
                              XFile? xFileImage = await imagePicker.pickImage(
                                  source: ImageSource.gallery);
                              setState(() {
                                fileImage = File(xFileImage!.path);
                              });
                            },
                            icon: const Row(
                              children: [
                                Icon(
                                  Icons.add,
                                  color: Colors.blueAccent,
                                ),
                                Text(
                                  'Upload Photo',
                                  style: TextStyle(color: Colors.blueAccent),
                                )
                              ],
                            )),
                      )
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              contactInfoInput(
                inputType: TextInputType.name,
                hint: 'First Name',
                label: 'First Name',
                controller: txtName,
              ),
              const SizedBox(
                height: 10,
              ),
              contactInfoInput(
                inputType: TextInputType.name,
                hint: 'Last Name',
                label: 'Last Name',
                controller: txtSurname,
              ),
              const SizedBox(
                height: 10,
              ),
              contactInfoInput(
                inputType: TextInputType.name,
                hint: 'Email Address(required)',
                label: 'Email Address(required)',
                controller: txtEmail,
              ),
              const SizedBox(
                height: 10,
              ),
              contactInfoInput(
                inputType: TextInputType.number,
                hint: 'Password',
                label: 'Password',
                controller: txtPass,
              ),
              const SizedBox(
                height: 10,
              ),
              contactInfoInput(
                inputType: TextInputType.number,
                hint: 'Phone Number',
                label: 'Phone Number',
                controller: txtContact,
              ),
              const SizedBox(
                height: 10,
              ),
              contactInfoInput(
                inputType: TextInputType.name,
                hint: 'City',
                label: 'City',
                controller: txtCity,
              ),
              const SizedBox(
                height: 10,
              ),
              contactInfoInput(
                inputType: TextInputType.name,
                hint: 'Country',
                label: 'Country',
                controller: txtCountry,
              ),
              const SizedBox(
                height: 10,
              ),
              contactInfoInput(
                inputType: TextInputType.number,
                hint: 'Pincode',
                label: 'Pincode',
                controller: txtPincode,
              ),
              const SizedBox(
                height: 10,
              ),
              contactInfoInput(
                inputType: TextInputType.name,
                hint: 'LinkedIn(Optional)',
                label: 'LinkedIn(Optional)',
                controller: txtLinkedIn,
              ),
              const SizedBox(
                height: 10,
              ),
              contactInfoInput(
                inputType: TextInputType.name,
                hint: 'Website(Optional)',
                label: 'Website(Optional)',
                controller: txtWebsite,
              ),
              const SizedBox(
                height: 10,
              ),
              contactInfoInput(
                inputType: TextInputType.name,
                hint: 'Nationality(Optional)',
                label: 'Nationality(Optional)',
                controller: txtNationality,
              ),
            ],
          ),
        ),
      ),
    );
  }

  TextFormField contactInfoInput(
      {required String hint,
      required String label,
      required controller,
      required inputType}) {
    return TextFormField(
      controller: controller,
      keyboardType: inputType,
      cursorColor: Colors.black,
      decoration: InputDecoration(
        hintText: hint,
        labelText: label,
        labelStyle: const TextStyle(
          color: Colors.black,
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(width: 1.5, color: Colors.grey.shade400),
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(width: 2, color: Colors.teal),
        ),
      ),
    );
  }
}
