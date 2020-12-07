
import 'package:bregzy_vendor/constants.dart';
import 'package:bregzy_vendor/models/vendors_model.dart';
import 'package:bregzy_vendor/services/network.dart';
import 'package:bregzy_vendor/widgets/custom_buttom.dart';
import 'package:bregzy_vendor/widgets/custom_textfield.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';


import 'HomePage.dart';


class LoginPage extends StatefulWidget {
  static String id = 'LoginPage';

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email, password;

  // final auth = Auth();
  Future<Vendors> vendorObject;
  bool _isLoading = false ;
  final TextEditingController usernameController = new TextEditingController();
  final TextEditingController passwordController = new TextEditingController();
  GlobalKey<FormState> _globalKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {

    var height = MediaQuery
        .of(context)
        .size
        .height;
    return Scaffold(
      backgroundColor: Colors.white,
      body:ModalProgressHUD (
        inAsyncCall: _isLoading,

        child: ListView(
          children: [
            SizedBox(
              height: height * 0.13,
            ),
            Padding(
              padding:
              const EdgeInsets.symmetric(horizontal: 61.0, vertical: 30.0),
              child: Container(
                  child: Image.asset(
                    "images/logo-bregzy-2000x727.png",
                    width: 300,
                  )),
            ),
            Form(
              key: _globalKey,
              child: Column(
                children: [
                  SizedBox(
                    height: height * 0.1,
                  ),
                  Custom_TextField(
                    controller: usernameController,
                    hint: 'Enter your Email',
                    icon: Icons.email,
                    onclicked: (value){
                      email = value ;
                    },
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  Custom_TextField(
                    controller: passwordController,
                    hint: 'Enter your password',
                    icon: Icons.vpn_key_rounded,
                    onclicked: (value){
                      password = value ;
                    },

                  ),
                  SizedBox(
                    height: height * 0.04,
                  ),
                  Custom_buttom(
                    opname: "Login",
                    onpressed: () {
                      _globalKey.currentState.validate();
                      _globalKey.currentState.save();
                      setState(() {
                        _isLoading = true ;
                      });
                      VendorLogin(username: email,password: password).then((value) {
                        if(value != null && value.dataT.email == email){
                          print(value.dataT.token);
                          setState(() {
                            Navigator.pushNamed(context, HomePage.id);
                          });
                        }

                      });
                      setState(() {
                        _isLoading = false ;
                      });
                    }
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Don't have an account?"),
                      InkWell(
                          onTap: () {
                            // Navigator.pushNamed(context, Signup_Screen.id);
                          },
                          child: Text(
                            "Signup",
                            style: TextStyle(
                                color: KPinkColor, fontWeight: FontWeight.w500),
                          )),
                      Row(

                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

}