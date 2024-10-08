

import 'package:flutter/material.dart';
import 'package:provider_example_prj/screen/login_screen.dart';

import '../main.dart';
import '../routes/app_routes.dart';


class Homeproviderpage extends ChangeNotifier {

  int count = 0;

  String Name = "Gowtham";

  Color boxclr = Colors.amberAccent;


  void changing_value(context) {

    Name = "XXXX";
    boxclr = Colors.green;

    // Navigator.push(context, MaterialPageRoute(builder: (builder)=> LoginScreen()));
    //
    // final route = MaterialPageRoute(builder: (builder)=> LoginScreen());
    // Navigator.push(context, route);

    Navigator.pushNamed(context, Routes.login);

    notifyListeners();


    /*Timer(Duration(milliseconds: 20), () {
      Name = "Vignesh";
    });*/

  }





}

