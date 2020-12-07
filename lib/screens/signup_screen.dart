// import 'package:bregzy_vendor/screens/product_screen.dart';
// import 'package:bregzy_vendor/screens/login_screen.dart';
// import 'package:bregzy_vendor/widgets/custom_buttom.dart';
// import 'package:bregzy_vendor/widgets/custom_textfield.dart';
// import 'package:flutter/material.dart';
// import 'package:bregzy_vendor/services/authrization.dart';
//
// import '../constants.dart';
// class Signup_Screen extends StatelessWidget {
//   static String id = "Signup_Screen";
//   String email ,password ,conformPass , username;
//   final _auth = Auth();
//   @override
//   Widget build(BuildContext context) {
//     var height = MediaQuery.of(context).size.height;
//     final GlobalKey<FormState> _globalKey =GlobalKey<FormState>();
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: ListView(
//         children: [
//           SizedBox(
//             height: height * 0.13,
//           ),
//           Padding(
//             padding:
//             const EdgeInsets.symmetric(horizontal: 61.0, vertical: 30.0),
//             child: Container(
//                 child: Image.asset(
//                   "images/logo-bregzy-2000x727.png",
//                   width: 300,
//                 )),
//           ),
//           Form(
//               child: Column(
//                 children: [
//                   SizedBox(
//                     height: height * 0.1,
//                   ),
//                   Custom_TextField(
//                     hint: 'Enter your username',
//                     onclicked: (value){
//                       username =value ;
//                       print(value);
//                     },
//                   ),
//                   SizedBox(
//                     height: height * 0.02,
//                   ),
//                   Custom_TextField(
//                     hint: 'Enter your Email',
//                     onclicked: (value){
//                       email = value ;
//                       print("${email}");
//                     },
//                   ),
//                   SizedBox(
//                     height: height * 0.02,
//                   ),
//                   Custom_TextField(
//                     hint: 'Enter your password',
//                     onclicked: (value){
//                       password = value ;
//                       print(password);
//                     }
//                   ),
//                   SizedBox(
//                     height: height * 0.02,
//                   ),
//                   Custom_TextField(
//                     hint: 'Conform your password',
//                     onclicked: (value){
//                       conformPass= value;
//                       print(conformPass);
//                     },
//
//                   ),
//                   SizedBox(
//                     height: height * 0.04,
//                   ),
//                   Custom_buttom(
//                     opname: "Signup",
//                     onpressed: () {
//                      if(email.isNotEmpty && password.isNotEmpty && username.isNotEmpty)
//                        if(password == conformPass){
//                         _auth.Signup(email: email,password: password);
//                       Navigator.pushNamed(context, ProductScreen.id);
//
//                        }
//
//                     },
//                   ),
//                   SizedBox(
//                     height: height * 0.02,
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Text("Don have an account?"),
//                       InkWell(
//                         onTap: (){
//                           Navigator.pushNamed(context, LoginPage.id);
//                         },
//                           child: Text(
//                             "Signin",
//                             style: TextStyle(
//                                 color: KPinkColor, fontWeight: FontWeight.w500),
//                           )),
//                     ],
//                   )
//                 ],
//               ))
//         ],
//       ),
//     );
//   }
// }
