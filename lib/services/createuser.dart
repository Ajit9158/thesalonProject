import 'dart:io';

import 'package:salon/UI/Home_page.dart';
import 'package:salon/services/createshop.dart';
import 'package:flutter/material.dart';

import '../ApiCalls/ApiCalls.dart';
import '../model/user.dart';

class CreateUser extends StatefulWidget {
  const CreateUser({super.key});
  @override
  State<CreateUser> createState() => _CreateState();
}

class _CreateState extends State<CreateUser> {
  final _formKey = GlobalKey<FormState>();
  final adController = TextEditingController();
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final emailController = TextEditingController();
  final mobileController = TextEditingController();
  final addlineController = TextEditingController();
  final cityController = TextEditingController();
  final stateController = TextEditingController();
  final pinController = TextEditingController();
  final landmarkController = TextEditingController();
  ApiCalls _apiCalls = ApiCalls();
  bool isClicked=false;


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
    //  backgroundColor: Colors.white,
     // extendBodyBehindAppBar: true,
      // backgroundColor: Colors.gr,
      appBar: AppBar(
        // backgroundColor: Colors.transparent,
        // elevation: 0,
        title: Text("Create User"),
        centerTitle: true,
        // actions:[
        //   IconButton(onPressed: (){
        //     Navigator.push(context, MaterialPageRoute(builder: (context)=>Create()));},
        //       icon: Icon(Icons.arrow_forward_rounded,color: Colors.white,))
        // ],
      ),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Please Enter First Name";
                        }
                      },
                      controller: firstNameController,
                      decoration: InputDecoration(
                          labelText: "Enter your First Name",
                          hintText: "Enter First Name",
                          focusedBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.elliptical(5, 5)))),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Please Enter last Name";
                        }
                      },
                      controller: lastNameController,
                      decoration: InputDecoration(
                          labelText: "Enter your  Last Name",
                          hintText: "Enter Last Name",
                          focusedBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.elliptical(5, 5)))),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Please Enter Email ";
                        }
                      },
                      controller: emailController,
                      decoration: InputDecoration(
                          // enabledBorder: OutlineInputBorder(
                          //     borderRadius:
                          //         BorderRadius.all(Radius.circular(10))),
                          labelText: "Enter your Email ",
                          hintText: "Enter Email",
                          focusedBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.elliptical(5, 5))
                     )
                    ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Please Enter Mobile Number";
                        }
                      },
                      controller: mobileController,
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(

                          labelText: "Enter user's Mobile Number ",
                          hintText: "Enter Moble Number",
                          focusedBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.elliptical(5, 5)))),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextFormField(
                      minLines: 1,
                      maxLines: 2,
                      keyboardType: TextInputType.text,
                      style: TextStyle(
                        fontSize: 18,
                      ),
                      controller: addlineController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Please enter your Address";
                        }
                      },
                      onChanged: (value) {
                        if (value == null || value.isEmpty) {
                          setState(() {
                            isClicked = false;
                          });
                        }
                      },
                      decoration: InputDecoration(
                        labelText: "Enter address line",
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(18),
                            borderSide:
                            BorderSide(width: 1.2, color: Colors.blue)),
                        hintText: " ",
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextFormField(
                      keyboardType: TextInputType.text,
                      style: TextStyle(
                        fontSize: 18,
                      ),
                      controller: landmarkController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Please enter landmark ";
                        }
                      },
                      onChanged: (value) {
                        if (value == null || value.isEmpty) {
                          setState(() {
                            isClicked = false;
                          });
                        }
                      },
                      decoration: InputDecoration(
                        labelText: "Enter your landmark",
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(18),
                            borderSide:
                            BorderSide(width: 1.2, color: Colors.blue)),
                        hintText: "Enter Pincode",
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextFormField(
                      keyboardType: TextInputType.text,
                      style: TextStyle(
                        fontSize: 18,
                      ),
                      controller: cityController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Please enter your city ";
                        }
                      },
                      onChanged: (value) {
                        if (value == null || value.isEmpty) {
                          setState(() {
                            isClicked = false;
                          });
                        }
                      },
                      decoration: InputDecoration(
                        labelText: "Enter your city",
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(18),
                            borderSide:
                            BorderSide(width: 1.2, color: Colors.blue)),
                        hintText: "city",
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextFormField(
                      keyboardType: TextInputType.text,
                      style: TextStyle(
                        fontSize: 18,
                      ),
                      controller: stateController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Please enter your state ";
                        }
                      },
                      onChanged: (value) {
                        if (value == null || value.isEmpty) {
                          setState(() {
                            isClicked = false;
                          });
                        }
                      },
                      decoration: InputDecoration(
                        labelText: "Enter your state",
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(18),
                            borderSide:
                            BorderSide(width: 1.2, color: Colors.blue)),
                        hintText: "Enter Pincode",
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextFormField(
                      keyboardType: TextInputType.text,
                      style: TextStyle(
                        fontSize: 18,
                      ),
                      controller: pinController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Please enter your pin ";
                        }
                      },
                      onChanged: (value) {
                        if (value == null || value.isEmpty) {
                          setState(() {
                            isClicked = false;
                          });
                        }
                      },
                      decoration: InputDecoration(
                        labelText: "Enter your pin",

                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(18),
                            borderSide:
                            BorderSide(width: 1.2, color: Colors.blue)),
                        hintText: "Enter n",
                      ),
                    ),
                  ),

                  ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          setState(() {
                            isClicked = true;
                          });
                        }
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const Homepage()
                        )
                        );
                      },
                      style: ButtonStyle(
                          shape:
                          MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10))),
                          fixedSize:
                          MaterialStateProperty.all<Size>(Size(100, 25))),
                      child: Text(
                        "Create",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white),
                      )),
                  SizedBox(
                    height: 15,
                  ),
                  (isClicked)
                      ? FutureBuilder(
                        future: _apiCalls.createUser(User(
                        uph: mobileController.text,
                        uft: firstNameController.text,
                        ult: lastNameController.text,
                        uemail: emailController.text,
                        uad: UAd(
                            uadline: addlineController.text,
                            ulandmark:landmarkController.text,
                            ucty: cityController.text,
                            ustate: stateController.text,
                            upin: pinController.text))),
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {
                        if (snapshot.data == "") {
                          return Center(
                              child: Text(
                                "User With given Id already Present ",
                                style: TextStyle(color: Colors.red),
                              ));
                        }
                        // User user=welcomeFromJson(snapshot.data.toString());
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Name :" +
                                  snapshot.data.uft +
                                  " " +
                                  snapshot.data.ult,
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "E-mail: " + snapshot.data.uemail,
                              style: TextStyle(fontSize: 16),
                            )
                          ],
                        );
                      } else if (snapshot.hasError) {
                        print(snapshot.error);
                        return Center(
                            child: Text("Something Went Wrong"));
                      }
                      return CircularProgressIndicator();
                    },
                  )
                      : Text("")


                ],
              )),
        ),
      ),
    );
  }
}


