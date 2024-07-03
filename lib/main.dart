// ignore_for_file: depend_on_referenced_packages

import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:testing/Menu/appointments.dart';
import 'package:testing/Menu/chats.dart';
import 'package:testing/Menu/dietplan.dart';
import 'package:testing/Menu/funds.dart';
import 'package:testing/Menu/insurance.dart';
import 'package:testing/Menu/labreports.dart';
import 'package:testing/Menu/notifications.dart';
import 'package:testing/Menu/pharmacy.dart';
import 'package:testing/Menu/prescription.dart';
import 'package:testing/Menu/profile.dart';
import 'package:testing/Menu/settings.dart';
import 'package:testing/Menu/wallet.dart';
import 'package:testing/Screens/dashboard.dart';
import 'package:testing/front.dart';
import 'package:testing/register.dart';
import 'package:window_size/window_size.dart';
import 'Menu/wallet/send.dart';
import 'home.dart';
import 'login.dart';
import 'package:flutter/material.dart';
import 'Sample1.dart';
import 'Menu/dashboard1.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //await Firebase.initializeApp();
  if (Platform.isWindows) {
    setWindowMinSize(const Size(600, 710));
  }
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'front',
    routes: {
      'front': (context) => const front(),
      'login': (context) => const Mylogin(),
      'register': (context) => const MyRegister(),
      'home': (context) => const MyHome(),
      'page1': (context) => const MyHome1(),
      'sample1': (context) => const sample1(),
      'menu': (context) => const Dashboard(title: 'Dashboard'),
      'appointments': (context) => const Appointment(title: 'Appointments'),
      'chat': (context) => const Chat(title: 'Chats'),
      'diet': (context) => const Diet(title: 'Diet Plan'),
      'fund': (context) => const Fund(title: 'Funds'),
      'insurance': (context) => const Insurance(title: 'Insurance'),
      'lab': (context) => const Lab(title: 'Lab Reports'),
      'notification': (context) => const Notifications(title: 'Notifications'),
      'pharmacy': (context) => const Pharmacy(title: 'Pharmacy'),
      'prescription': (context) => const Perscription(title: 'Prescription'),
      'profile': (context) => const Profile(title: 'Profile'),
      'wallet': (context) => const Wallet(title: 'Wallet'),
      'send': (context) => send(),
      'setting': (context) => const setting(title: 'Settings'),
    },
  ));
}
