// ignore: file_names

import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:testing/Screens/dashboard.dart';
import 'package:testing/register.dart';



class Mylogin extends StatefulWidget {
  const Mylogin({Key? key}) : super(key: key);

  @override
  State<Mylogin> createState() => _MyloginState();
}

//int _selectedIndex = 0;
// int _selectedIndex = 0;

class _MyloginState extends State<Mylogin> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController emailController = new TextEditingController();
  final TextEditingController passwordController = new TextEditingController();

  final _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
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
        filled: true,
        hintText: 'Email',
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
      ),
    );

    final passwordField = TextFormField(
      autofocus: false,
      obscureText: true,
      controller: passwordController,
      validator: (value) {
        RegExp regex = new RegExp(r'^.{6,}$');
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
        filled: true,
        hintText: 'Password',
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
      ),
    );

    return Scaffold(
      body: Stack(children: [
        SizedBox(
          height: double.maxFinite,
          width: double.maxFinite,
          child: Image.asset(
            'assets/Login2.png',
            fit: BoxFit.fill,
          ),
        ),
        Container(
          padding: const EdgeInsets.only(left: 40, top: 150),
          child: const Text(
            'Welcome\nBack',
            style: TextStyle(
              color: Colors.white,
              fontSize: 33,
              //fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.5,
                right: 45,
                left: 45),
            child: Column(
              children: [
                Form(
                    key: _formKey,
                    child: Column(children: <Widget>[
                      emailField,
                      const SizedBox(
                        height: 30,
                      ),
                      passwordField,
                      const SizedBox(height: 30),
                    ])),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Sign In',
                      style: TextStyle(
                          color: Color(0xff4c505b),
                          fontSize: 27,
                          fontWeight: FontWeight.w700),
                    ),
                    CircleAvatar(
                        radius: 25,
                        backgroundColor: const Color(0xff4c505b),
                        //elevation: 1.0,
                        child: IconButton(
                          color: Colors.white,
                          onPressed: () {
                            //Navigator.pushNamed(context, 'menu');
                            signIn(
                                emailController.text, passwordController.text);
                          },
                          icon: const Icon(Icons.arrow_forward),
                        ))
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const Text("Do you have an account? "),
                    GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, 'register');
                        },
                        child: const Text("SignUp",
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue,
                            ))),
                  ],
                ),
              ],
            ),
          ),
        ),
      ]

          //If you want to show body behind the navbar, it should be true

          ),

      //extendBody: true,
    );
  }

  void signIn(String email, String password) async {
    if (_formKey.currentState!.validate()) {
      try {
        await _auth
            .signInWithEmailAndPassword(email: email, password: password)
            .then((uid) => {
                  Fluttertoast.showToast(msg: "Login Successful"),
                  Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) => const MyHome1())),
                });
      } on FirebaseAuthException catch (error) {
        switch (error.code) {
          //   case "invalid-email":
          //     errorMessage = "Your email address appears to be malformed.";

          //     break;
          //   case "wrong-password":
          //     errorMessage = "Your password is wrong.";
          //     break;
          //   case "user-not-found":
          //     errorMessage = "User with this email doesn't exist.";
          //     break;
          //   case "user-disabled":
          //     errorMessage = "User with this email has been disabled.";
          //     break;
          //   case "too-many-requests":
          //     errorMessage = "Too many requests";
          //     break;
          //   case "operation-not-allowed":
          //     errorMessage = "Signing in with Email and Password is not enabled.";
          //     break;
          //   default:
          //     errorMessage = "An undefined Error happened.";
          // }
          // Fluttertoast.showToast(msg: errorMessage!);
          // print(error.code);
        }
      }
    }
  }

  Route _createRoute() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) =>
          const MyRegister(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(0.0, 1.0);
        const end = Offset.zero;
        const curve = Curves.ease;

        var tween =
            Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      },
    );
  }
}
