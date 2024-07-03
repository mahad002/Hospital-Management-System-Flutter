import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:fluttertoast/fluttertoast.dart';
import 'package:testing/Menu/dashboard1.dart';

// import 'model/user_model.dart';

class MyRegister extends StatefulWidget {
  const MyRegister({Key? key}) : super(key: key);
  static const String route = 'register';

  @override
  State<MyRegister> createState() => MyRegisterState();
}

class MyRegisterState extends State<MyRegister> {
  //final _auth = FirebaseAuth.instance;

  String? errorMessage;

  final _formKey = GlobalKey<FormState>();

  final TextEditingController firstnameController = TextEditingController();
  final TextEditingController secondnameController = TextEditingController();
  final TextEditingController fathernameController = TextEditingController();
  final TextEditingController AgeController = TextEditingController();
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmpasswordController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    final firstnameField = TextFormField(
      autofocus: false,
      controller: firstnameController,
      keyboardType: TextInputType.name,
      validator: (value) {
        RegExp regex = RegExp(r'^.{3,}$');
        if (value!.isEmpty) {
          return ("First Name cannot be Empty");
        }
        if (!regex.hasMatch(value)) {
          return ("Enter Valid name(Min. 3 Character)");
        }
        return null;
      },
      onSaved: (value) {
        firstnameController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.face_outlined),
        fillColor: Colors.grey.shade100,
        filled: false,
        hintText: 'First Name',
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
      ),
    );

    final secondnameField = TextFormField(
      autofocus: false,
      controller: secondnameController,
      keyboardType: TextInputType.name,
      validator: (value) {
        if (value!.isEmpty) {
          return ("Second Name cannot be Empty");
        }
        return null;
      },
      onSaved: (value) {
        secondnameController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.face_retouching_natural_outlined),
        fillColor: Colors.grey.shade100,
        filled: false,
        hintText: 'Second Name',
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
      ),
    );

    final fathernameField = TextFormField(
      autofocus: false,
      controller: fathernameController,
      keyboardType: TextInputType.emailAddress,
      validator: (value) {
        RegExp regex = RegExp(r'^.{3,}$');
        if (value!.isEmpty) {
          return ("Guardian Name cannot be Empty");
        }
        if (!regex.hasMatch(value)) {
          return ("Enter Valid name(Min. 3 Character)");
        }
        return null;
      },
      onSaved: (value) {
        fathernameController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.account_circle_outlined),
        fillColor: Colors.grey.shade100,
        filled: false,
        hintText: "Father's/Mother's name",
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
      ),
    );

    final AgeField = TextFormField(
      autofocus: false,
      //obscureText: true,
      controller: AgeController,
      validator: (value) {
        if (value!.isEmpty) {
          return ("Age cannot be Empty");
        }
        return null;
      },
      onSaved: (value) {
        AgeController.text = value!;
      },
      textInputAction: TextInputAction.done,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.calendar_month),
        fillColor: Colors.grey.shade100,
        filled: false,
        hintText: 'Age',
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
      ),
    );
    final usernameField = TextFormField(
      autofocus: false,
      controller: usernameController,
      keyboardType: TextInputType.name,
      validator: (value) {
        RegExp regex = RegExp(r'^.{5,}$');
        if (value!.isEmpty) {
          return ("Userame cannot be Empty");
        }
        if (!regex.hasMatch(value)) {
          return ("Enter Valid name(Min. 5 Character)");
        }
        return null;
      },
      onSaved: (value) {
        usernameController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.account_circle_outlined),
        fillColor: Colors.grey.shade100,
        filled: false,
        hintText: 'Username',
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
      ),
    );

    final emailField = TextFormField(
      autofocus: false,
      controller: emailController,
      keyboardType: TextInputType.emailAddress,
      validator: (value) {
        if (value!.isEmpty) {
          return ("Please enter your email!");
        }
        if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]").hasMatch(value)) {
          return ("Please Enter a valid email");
        }
        return null;
      },
      onSaved: (value) {
        emailController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.mail),
        fillColor: Colors.grey.shade100,
        filled: false,
        hintText: 'Email',
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
      ),
    );

    final passwordField = TextFormField(
      autofocus: false,
      obscureText: true,
      controller: passwordController,
      validator: (value) {
        RegExp regex = RegExp(r'^.{6,}$');
        if (value!.isEmpty) {
          return ("Password is required for login");
        }
        if (!regex.hasMatch(value)) {
          return ("Enter Valid Password(Min. 6 Character)");
        }
      },
      onSaved: (value) {
        passwordController.text = value!;
      },
      textInputAction: TextInputAction.done,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.vpn_key),
        fillColor: Colors.grey.shade100,
        filled: false,
        hintText: 'Password',
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
      ),
    );
    final confirmpasswordField = TextFormField(
      autofocus: false,
      obscureText: true,
      controller: confirmpasswordController,
      validator: (value) {
        if (passwordController.text != confirmpasswordController.text) {
          return "Password does not match!";
        }
        return null;
      },
      onSaved: (value) {
        confirmpasswordController.text = value!;
      },
      textInputAction: TextInputAction.done,
      decoration: InputDecoration(
        prefixIcon: const Icon(Icons.vpn_key),
        fillColor: Colors.grey.shade100,
        filled: false,
        hintText: 'Confirm Password',
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
      ),
    );
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/Login2.png'), fit: BoxFit.fill)),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            color: Colors.white,
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back, color: Colors.white),
          ),
        ),
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              padding: EdgeInsets.only(left: 45, top: 45),
              child: const Text(
                'Create\nAccount',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 33,
                ),
              ),
            ),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.27,
                    right: 50,
                    left: 50),
                child: Column(
                  children: [
                    Form(
                        key: _formKey,
                        child: Column(children: <Widget>[
                          firstnameField,
                          const SizedBox(
                            height: 20,
                          ),
                          secondnameField,
                          const SizedBox(
                            height: 20,
                          ),
                          fathernameField,
                          const SizedBox(
                            height: 20,
                          ),
                          AgeField,
                          const SizedBox(
                            height: 20,
                          ),
                          usernameField,
                          const SizedBox(
                            height: 20,
                          ),
                          emailField,
                          const SizedBox(
                            height: 20,
                          ),
                          passwordField,
                          const SizedBox(height: 20),
                          confirmpasswordField,
                          const SizedBox(height: 30),
                        ])),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Sign Up',
                          style: TextStyle(
                              color: Color(0xff4c505b),
                              fontSize: 27,
                              fontWeight: FontWeight.w700),
                        ),
                        CircleAvatar(
                            radius: 25,
                            backgroundColor: Color(0xff4c505b),
                            child: IconButton(
                              color: Colors.white,
                              onPressed: () {
                                signUp(emailController.text,
                                    passwordController.text);

                                //Navigator.pushNamed(context, 'menu');
                                //addData();
                              },
                              icon: const Icon(Icons.arrow_forward),
                            ))
                      ],
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void signUp(String email, String password) async {
    if (_formKey.currentState!.validate()) {
      try {} catch (error) {
        switch (error) {
          case "invalid-email":
            errorMessage = "Your email address appears to be malformed.";
            break;
          case "wrong-password":
            errorMessage = "Your password is wrong.";
            break;
          case "user-not-found":
            errorMessage = "User with this email doesn't exist.";
            break;
          case "user-disabled":
            errorMessage = "User with this email has been disabled.";
            break;
          case "too-many-requests":
            errorMessage = "Too many requests";
            break;
          case "operation-not-allowed":
            errorMessage = "Signing in with Email and Password is not enabled.";
            break;
          default:
            errorMessage = "An undefined Error happened.";
        }
        //luttertoast.showToast(msg: errorMessage!);
        if (kDebugMode) {
          print(error);
        }
      }
    }
  }

  postDetailsToFirestore() async {
    //FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
    //CollectionReference cr = firebaseFirestore.collection('users');
    // User? user = _auth.currentUser;
    // UserModel userModel = UserModel(
    //     uid: user!.uid,
    //     username: usernameController.text,
    //     email: user.email,
    //     firstname: firstnameController.text,
    //     secondname: secondnameController.text,
    //     guardianname: fathernameController.text,
    //     age: 12);
    //userModel.toMap();
    //await cr.add(userModel.toMap());
    // await firebaseFirestore
    //     .collection("users")
    //     .doc(user.uid)
    //     .set(userModel.toMap());
    //Fluttertoast.showToast(msg: "Account created successfully :) ");

    Navigator.pushAndRemoveUntil(
        (context),
        MaterialPageRoute(
            builder: (context) => const Dashboard(
                  title: 'Dashboard',
                )),
        (route) => false);
  }
}
