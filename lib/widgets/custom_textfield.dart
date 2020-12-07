import 'package:bregzy_vendor/constants.dart';
import 'package:flutter/material.dart';
// ignore: camel_case_types
class Custom_TextField extends StatelessWidget {
  final String hint ;
  final IconData icon ;
  final Function onclicked ;
  final TextEditingController controller ;
  String _errorMessage(String str ){
    switch (hint){
      case "Enter your username": return "Name is username" ;
      case "Enter your Email": return "Email is Empty" ;
      case "Enter your password": return "Password is Empty" ;

    }
  }

  const Custom_TextField({Key key, this.hint, this.icon, this.onclicked, this.controller}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50.0,),
      child: TextFormField(
        validator: (value) {
          if (value.isEmpty) {
           return _errorMessage(hint);
             // ignore: missing_return
             }
          if(value.length<8 && hint == "Enter your password"){
            return "Password must be equal 8 characters or more";
          }
          if(!value.contains("@")&& hint=="Enter your Email"){
            return "Email should be like example@email.com";
          }
          return null ;

           },
        onSaved: onclicked,
        keyboardType: hint =="Enter your Email"? TextInputType.emailAddress:TextInputType.text,
        obscureText: hint == "Enter your password"||hint=="Conform your password"? true:false,
        decoration: InputDecoration(
          prefixIcon: Icon(icon , color: KPurpleColor,),
          hintText:hint,
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.0),
              borderSide: BorderSide(
                  width: 0.8,
                  color: KPinkColor
              )
          ),
          focusedBorder:  OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.0),
              borderSide: BorderSide(
                  width: 1,
                  color: KPinkColor
              )
          ),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.0),
              borderSide: BorderSide(
                  width: 1,
                  color: KPinkColor
              )
          ),
        ),
      ),
    );
  }
}
