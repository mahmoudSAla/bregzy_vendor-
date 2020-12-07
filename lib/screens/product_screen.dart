import 'package:bregzy_vendor/constants.dart';
import 'package:bregzy_vendor/screens/products_lists.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:bregzy_vendor/widgets/custom_productsbutton.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProductScreen extends StatefulWidget {
  static String id = 'ProductScreen';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<ProductScreen> {
  @override
  Widget build(BuildContext context) {
    GlobalKey<ScaffoldState> drawerKey = GlobalKey();
    return Scaffold(
      key: drawerKey,
      appBar: AppBar(
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "images/shape.png",
              fit: BoxFit.contain,
              width: 60,
              height: 70,
            ),
            Text("regzy".toUpperCase(),
                style: TextStyle(
                  color: KOrangeColor,
                )),
            SizedBox(
              width: 70,
            ),
          ],
        ),
        backgroundColor: Colors.white,
        brightness: Brightness.light,
        elevation: 0,
        actionsIconTheme: IconThemeData(color: Colors.black),
        iconTheme: IconThemeData(color: Colors.black),
        leading: IconButton(
          onPressed: () {
            drawerKey.currentState.openDrawer();
          },
          icon: Icon(Icons.menu_rounded),
        ),
      ),
      drawerEdgeDragWidth: 0,
      drawer: Drawer(
        child: Container(
          color: Colors.white,
          child: ListView(
            children: <Widget>[
              UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  color: KPinkColor,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(15.0),
                      bottomRight: Radius.circular(15.0)),
                ),
                accountEmail: Text(
                  "admin@email.com",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                accountName: Text(
                  "admin",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                currentAccountPicture: ClipRRect(
                  borderRadius: BorderRadius.circular(70),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(70),
                        border: Border.all(color: Colors.white, width: 0.54)),
                    child: Image(
                      image: NetworkImage(""),
                      width: 70,
                      height: 70,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              ListTile(
                title: InkWell(
                    onTap: () {},
                    child: Text(
                      "Products",
                      style: TextStyle(color: KPurpleColor),
                    )),
                leading: FaIcon(
                  FontAwesomeIcons.box,
                  color: KPinkColor,
                ),
              ),
              SizedBox(height: 5),
              ListTile(
                title: InkWell(
                    onTap: () {},
                    child: Text(
                      "Coupons",
                      style: TextStyle(color: KPurpleColor),
                    )),
                leading: FaIcon(
                  FontAwesomeIcons.ticketAlt,
                  color: KPinkColor,
                ),
              ),
              SizedBox(height: 5),
              ListTile(
                title: InkWell(
                  onTap: () {},
                  child: Text(
                    "Orders",
                    style: TextStyle(color: KPurpleColor),
                  ),
                ),
                leading: FaIcon(
                  FontAwesomeIcons.shoppingCart,
                  color: KPinkColor,
                ),
              ),
              SizedBox(height: 5),
              ListTile(
                title: InkWell(
                    onTap: () {},
                    child: Text(
                      "Withdraw",
                      style: TextStyle(color: KPurpleColor),
                    )),
                leading: Icon(
                  Icons.monetization_on,
                  color: KPinkColor,
                ),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Material(
                  color: Colors.white54,
                  elevation: 6.0,
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.65,
                    height: 200,
                    decoration: BoxDecoration(
                        color: Colors.white54,
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          " Earned this month",
                          style: TextStyle(
                              color: KPinkColor,
                              fontWeight: FontWeight.w700,
                              fontSize: 25.0),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          "0.00 LE",
                          style: TextStyle(
                              color: KOrangeColor,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
                Material(
                  color: Colors.white54,
                  elevation: 6.0,
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.3,
                    height: 200,
                    decoration: BoxDecoration(
                        color: Colors.white54,
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          " Requests Today",
                          style: TextStyle(
                              color: KPinkColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 15.0),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          "0",
                          style: TextStyle(
                              color: KOrangeColor,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Text(
                "Products",
                style: TextStyle(
                    color: KPurpleColor,
                    fontSize: 25.0,
                    fontWeight: FontWeight.w700),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Custom_ProductButtons(
                  icon: FontAwesomeIcons.boxes,
                  productOpName: "View products",
                  size: 20,
                  color: KOrangeColor,
                  width: MediaQuery.of(context).size.width * 0.45,
                  height: 200,
                  onClicked: () {
                    Navigator.pushNamed(context, ProductList.id);
                  },
                ),
                Custom_ProductButtons(
                  icon: EvaIcons.refresh,
                  productOpName: "Returned products",
                  size: 20,
                  color: KPurpleColor,
                  width: MediaQuery.of(context).size.width * 0.45,
                  height: 200,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Custom_ProductButtons(
                  icon: FontAwesomeIcons.box,
                  productOpName: "Add product",
                  size: 20,
                  color: KPinkColor,
                  width: MediaQuery.of(context).size.width * 0.45,
                  height: 200,
                ),
                Custom_ProductButtons(
                  icon: EvaIcons.trash,
                  productOpName: "Remove product",
                  size: 20,
                  color: KPurpleColor,
                  width: MediaQuery.of(context).size.width * 0.45,
                  height: 200,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Custom_ProductButtons(
                  icon: FontAwesomeIcons.upload,
                  productOpName: "Update products",
                  size: 20,
                  color: KOrangeColor,
                  width: MediaQuery.of(context).size.width * 0.45,
                  height: 200,
                ),
                Custom_ProductButtons(
                  icon: FontAwesomeIcons.ticketAlt,
                  productOpName: "Add Coupons",
                  size: 20,
                  color: KPinkColor,
                  width: MediaQuery.of(context).size.width * 0.45,
                  height: 200,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Custom_ProductButtons(
                  icon: FontAwesomeIcons.chartLine,
                  productOpName: "Reports",
                  size: 20,
                  color: KPurpleColor,
                  width: MediaQuery.of(context).size.width * 0.45,
                  height: 200,
                ),
                Custom_ProductButtons(
                  icon: FontAwesomeIcons.calendar,
                  productOpName: "Booking",
                  size: 20,
                  color: KOrangeColor,
                  width: MediaQuery.of(context).size.width * 0.45,
                  height: 200,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
