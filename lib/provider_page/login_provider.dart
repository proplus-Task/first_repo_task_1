import 'package:flutter/material.dart';



class LoginProvider extends ChangeNotifier {

  String? UsrName;
  String? Password;
  bool showPassword = false;
  TextEditingController password_cntrlr = TextEditingController();


  void ObscureTextvalueChnage() {
    showPassword = !showPassword;
    print("sfbhjdbjh ; "+showPassword.toString());
  }

  void validateLoginCredential() {



  }


}