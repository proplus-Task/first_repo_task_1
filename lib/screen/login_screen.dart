import 'package:flutter/material.dart';
import 'package:fluttericon/elusive_icons.dart';
import 'package:provider/provider.dart';
import 'package:provider_example_prj/provider_page/login_provider.dart';

import '../themes/colors_value.dart';
import '../utils/dimens.dart';
import '../utils/styles.dart';
import '../widget/feild_widget.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {

    final loginprovider = Provider.of<LoginProvider>(context);

    return Scaffold(

      appBar: AppBar(
        title: Text("Login"),
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [

            Center(
              child: Container(
                height: 200,
                width: 200,
                color: Colors.cyanAccent.shade700,
              ),
            )
            // FieldWidget(
            //   // key: const Key('password-field'),
            //   textEditingController: loginprovider.password_cntrlr,
            //   fieldHeight: Dimens.fourtyFive,
            //   autoFocus: false,
            //   isFilled: true,
            //   obscureCharacter: '*',
            //   // isObscureText: signup_scrn_cntrlr.showPassword,
            //   contentPadding: Dimens.edgeInsets14,
            //   fillColor: ColorsValue.backgroundColor,
            //   // hintText: StringConstants.password,
            //   // hintStyle: Styles.lightBlackW50014,
            //   errorStyle: Styles.errorW50012,
            //   // errorText: _controller.passwordErrortext,
            //   formBorder: Styles.outlineBorderRadius10black26,
            //   // textInputType: TextInputType.emailAddress,
            //   formEnableBorder: Styles.outlineBorderRadius10black26,
            //   textInputAction: TextInputAction.next,
            //   formStyle: Styles.formFieldTextStyle,
            //   textCapitalization: TextCapitalization.words,
            //   // isObscureText: _controller.showPassword,
            //   //   inputFormatters: [
            //   //   MaskedInputFormatter('##########',
            //   //     allowedCharMatcher: RegExp(r'[0-9]')
            //   //   )
            //   // ],
            //   /*prefixIcon: Icon(
            //     Elusive.lock,
            //     color: ColorsValue.lightGreyColor,
            //     size: Dimens.sixteen,
            //   ),*/
            //   suffixIcon: IconButton(
            //     onPressed: () {
            //       loginprovider.ObscureTextvalueChnage();
            //       /*LGNprovider.showPassword = !LGNprovider.showPassword;
            //       print("sfbhjdbjh ; "+LGNprovider.showPassword.toString());*/
            //     },
            //     icon: Consumer<LoginProvider>(
            //       builder: (context, obscureProvider, child) {
            //         return Icon(
            //           obscureProvider.showPassword
            //               ? Elusive.eye
            //               : Elusive.eye_off,
            //           //     ? Icons.remove_red_eye_sharp
            //           //     : Icons.panorama_fish_eye,
            //           color: ColorsValue.lightGreyColor,
            //           size: Dimens.twenty,
            //         );
            //       }
            //     ),
            //   ),
            //   /*onChange: (val) {
            //     _controller.checkIfPasswordIsValid(val, context);
            //   },*/
            // ),

          ],
        ),
      ),

    );
  }
}
