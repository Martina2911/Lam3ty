
import 'package:flutter/services.dart';
import 'package:project1/screens/AddCar2/AddCar2.dart';
import 'package:project1/screens/AddCar3/AddCar3.dart';
import 'package:project1/screens/Conditions/conditions.dart';
import 'package:project1/screens/Exit/exit.dart';
import 'package:project1/screens/Help/help.dart';
import 'package:project1/screens/Homee_screen/Homee_Screen.dart';
import 'package:project1/screens/Notifications/notifications.dart';
import 'package:project1/screens/Privacy/privacy.dart';
import 'package:project1/screens/Profile/Profile.dart';
import 'package:project1/screens/Settings/settings.dart';
import 'package:project1/screens/WalletScreen/WalletScreen.dart';

List l=
[
  Profile(),AddCar3(),AddCar2(),HomeeScreen()
];

List l2=[
  WalletScreen(),
  Settings(),
  Help(),
];

List l3=[
  Notifications(),
  Privacy(),
  Conditions(),

];

List <String>types=["type",'SUV',

  'Hatchback',

  'Sedan',

  'Minivan',

  'Coupe',

  'Crossover',

  'StationWagon',

  'Convertible',

  'Sports car'
];
List <String>models=["model","FordFocus", 'Corolla', 'Mustang', 'Corvette', 'BMW', 'Civic', 'Volkswagen', 'Camry', "Camaro"];
List <String>brands=["brand",'BMW',

  'Ford',

  'Mercedes-Benz'
,
  'Tesla'
,
  'Chevrolet'
,
  'Toyota'
,
  'Audi'
,
  'General Motors'
,
  'Jeep'
];

List list=[types,models,brands];