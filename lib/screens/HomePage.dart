import 'package:bregzy_vendor/constants.dart';
import 'package:bregzy_vendor/screens/product_screen.dart';
import 'package:bregzy_vendor/widgets/custom_productsbutton.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class HomePage extends StatefulWidget {
  static String id = 'HomePage';
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Custom_ProductButtons(icon: FontAwesomeIcons.box,
                  width: width*0.4,
                  height: height*0.2,
                  color: KPurpleColor,
                  size: 20,
                  productOpName: "Products",

                  onClicked: (){
                    Navigator.pushNamed(context, ProductScreen.id);
                  },
                ),
                Custom_ProductButtons(icon: FontAwesomeIcons.ticketAlt,
                  width: width*0.4,
                  height: height*0.2,
                  color: KPinkColor,
                  size: 20,
                  productOpName: "Coupons",

                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Custom_ProductButtons(icon: FontAwesomeIcons.shippingFast,
                  width: width*0.4,
                  height: height*0.2,
                  color: KOrangeColor,
                  size: 20,
                  productOpName: "Orders",

                ),
                Custom_ProductButtons(icon: FontAwesomeIcons.moneyBillWave,
                  width: width*0.4,
                  height: height*0.2,
                  color: KPurpleColor,
                  size: 20,
                  productOpName: "Withdraw",

                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Custom_ProductButtons(icon: FontAwesomeIcons.store,
                  width: width*0.4,
                  height: height*0.2,
                  color: KPurpleColor,
                  size: 20,
                  productOpName: "Stores",

                ),
                Custom_ProductButtons(icon: FontAwesomeIcons.eye,
                  width: width*0.4,
                  height: height*0.2,
                  color: KPinkColor,
                  size: 20,
                  productOpName: "Reviews",

                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Custom_ProductButtons(icon: FontAwesomeIcons.paperPlane,
                  width: width*0.4,
                  height: height*0.2,
                  color: KOrangeColor,
                  size: 20,
                  productOpName: "Reports",

                ),

              ],
            )
          ],
        ),

      ),
    );
  }
}
