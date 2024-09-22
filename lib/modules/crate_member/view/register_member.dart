import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:movie_guidlist_new/modules/crate_member/bloc/register_bloc.dart';
import 'package:movie_guidlist_new/modules/crate_member/models/register_payload.dart';
import 'package:movie_guidlist_new/widgets/all_widgets.dart';
import 'package:movie_guidlist_new/widgets/text.dart';
import 'package:multiselect/multiselect.dart';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';

class RegisterMemberPage extends StatefulWidget {
  const RegisterMemberPage({super.key});

  @override
  State<RegisterMemberPage> createState() => _RegisterMemberPageState();
}

class _RegisterMemberPageState extends State<RegisterMemberPage> {
  TextEditingController firstName_controller = TextEditingController();
  TextEditingController lastName_controller = TextEditingController();
  TextEditingController email_controller = TextEditingController();
  TextEditingController password_controller = TextEditingController();
  bool passwordText = false;
  bool emailText = false;
  bool firstName = false;
  bool lastName = false;
  File? image;
  String? imgProfile;
  final _formKey = GlobalKey<FormState>();

  List<String> dropdownItems = ["sadas", "asdas"];
  List<String> selectedItems = [];

  bool _isobscureText = true;

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              centerTitle: true,
              title: Text(
                "สมัครสมาชิก",
                style: TextStyle(color: Colors.white),
              ),
              backgroundColor: Colors.cyan[900],
            ),
            body: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/bg.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              height: screenSize.height * 1,
              child: SingleChildScrollView(
                child: Column(
                    //   mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Stack(
                        children: [
                          image != null
                              ? CircleAvatar(
                                  radius: 64,
                                  backgroundImage: FileImage(image!),
                                )
                              : CircleAvatar(
                                  radius: 64,
                                  backgroundImage: NetworkImage(imgProfile!),
                                ),
                          Positioned(
                            child: IconButton(
                              icon: const Icon(Icons.add_a_photo),
                              color: Colors.white,
                              onPressed: () {
                                selectImage();
                              },
                            ),
                            bottom: -10,
                            left: 80,
                          )
                        ],
                      ),

                      Form(
                          key: _formKey,
                          child: Column(
                            children: [
                              textFieldCustomPassword(
                                  'ชื่อ', firstName_controller),
                              textFieldCustomPassword(
                                  'นามสกุล', lastName_controller),
                              textFieldCustomPassword(
                                  'อีเมล', email_controller),
                              textFieldCustomPassword(
                                  'รหัสผ่าน', password_controller),
                            ],
                          )),
                      Padding(
                          padding: EdgeInsets.all(20),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.white,
                            ),
                            child: DropDownMultiSelect(
                              options: dropdownItems,
                              selectedValues: selectedItems,
                              onChanged: (value) {
                                setState(() {
                                  selectedItems = value;
                                });
                              },
                              whenEmpty: 'Select your favorite type',
                            ),
                          )),

                      // Expanded(
                      //     child:

                      SizedBox(
                        height: 40,
                      ),

                      //  ),
                      Padding(
                        padding: EdgeInsets.all(20),
                        child: GestureDetector(
                          onTap: () {
                            _register();
                          },
                          child: Container(
                            height: screenSize.height * 0.05,
                            // width: screenSize.width * 0.8,
                            decoration: BoxDecoration(
                              //    color: Colors.white,
                              borderRadius: BorderRadius.circular(8.0),
                              // border: Border.all(
                              color: Color.fromARGB(255, 51, 221, 243),
                              //  width: 1.5),
                            ),
                            child: Center(
                                child: TextWidget.normalText("สมัครสมาชิก",
                                    color: Colors.black)),
                          ),
                        ),
                      )
                    ]),
              ),
            )));
  }

  pickImg(ImageSource scr) async {
    final ImagePicker img = ImagePicker();
    XFile? file_img = await img.pickImage(source: scr);
    if (file_img != null) {
      return File(file_img.path);
    }
    print("NO Images Selected");
  }

  void selectImage() async {
    log(('Image sasdasdasdasd'));
    final File img = await pickImg(ImageSource.gallery);
    image = img;
    imgProfile = await uploadFile(img);
    log("sadsad ${imgProfile}");
    setState(() {});
  }

  Future<String> uploadFile(File file) async {
    Reference ref =
        FirebaseStorage.instance.ref().child("${file.path.split("/").last}");
    UploadTask uploadTask = ref.putFile(file);
    TaskSnapshot snapshot = await uploadTask.whenComplete(() {});
    String fileUrl = await snapshot.ref.getDownloadURL();
    return fileUrl;
  }

  textFieldCustomPassword(String label, controller) {
    return Column(
      children: [
        Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "$label",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                SizedBox(
                  height: 5,
                ),
                TextFormField(
                  controller: controller,
                  obscureText: (label == 'รหัสผ่าน') ? _isobscureText : false,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter ';
                    }
                  },
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(vertical: 15.0),
                      filled: true, // Fill the background
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      // labelText: label,
                      labelStyle: TextStyle(color: Colors.grey),
                      prefixIcon: (label == 'อีเมล')
                          ? Icon(Icons.email)
                          : (label == 'รหัสผ่าน')
                              ? Icon(Icons.key)
                              : null,
                      suffixIcon: (label == 'รหัสผ่าน')
                          ? IconButton(
                              onPressed: () {
                                setState(() {
                                  _isobscureText = !_isobscureText;
                                });
                              },
                              icon: Icon((_isobscureText)
                                  ? Icons.visibility_off
                                  : Icons.visibility))
                          : null),
                ),
              ],
            )),
        SizedBox(
          height: 5,
        )
      ],
    );
  }

  void _register() {
    log("sad=>${imgProfile}");
    // if (_formKey.currentState!.validate()) {
    //   final RegisterPayload registerPayload = RegisterPayload(
    //       firstName: firstName_controller.text,
    //       lastName: lastName_controller.text,
    //       email: email_controller.text,
    //       imgProfile: imgProfile);
    //   // log("is CusPayload Data => ${customerPayload.birthDate}");
    //   Modular.get<RegisterBloc>()
    //       .add(RegisterMemberEvent(registerPayload: registerPayload));
    // }
  }
}
