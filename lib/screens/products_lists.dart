import 'package:bregzy_vendor/screens/product_screen.dart';
import 'package:bregzy_vendor/services/network.dart';
import 'package:bregzy_vendor/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../constants.dart';

class ProductList extends StatefulWidget {
  static String id = "ProductList";



  @override
  _ProductListState createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
  Future vendorObject ;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    vendorObject = Network().getProducts();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children:[ Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 27.0),
                  child: IconButton(icon: Icon(Icons.keyboard_backspace,color: KOrangeColor,size: 30.0,),
                  onPressed: (){
                    Navigator.popAndPushNamed(context, ProductScreen.id);
                  },),
                )
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height*0.05,
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Image.asset("images/logo-bregzy-2000x727.png",width: 250,),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Custom_TextField(icon: FontAwesomeIcons.search,hint: "Search for products",),
            ),
            Container(
              height: MediaQuery.of(context).size.height*0.67,
              child: FutureBuilder(
                future: vendorObject,
                builder: (context,snapshot){
                  if(snapshot.hasData){
                    return GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                        itemCount: snapshot.data.length,
                        itemBuilder: (BuildContext context , int index){
                          Map wpproducts = snapshot.data[index];
                          return Padding(
                            padding: const EdgeInsets.symmetric(vertical: 5 , horizontal: 30),
                            child: Material(
                              child: Container(
                                height: 250,
                                width: 190,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.white,
                                ),
                                child: Column(
                                  children: [
                                    Image.network(wpproducts['images'][0]['src'],),
                                    Text(wpproducts['name'],
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: KOrangeColor
                                      ),),
                                    Text("Price:${wpproducts['price']}LE" ,style: TextStyle(color: KOrangeColor),),
                                    Text("Sale price:${wpproducts['sale_price']}LE")
                                  ],
                                ),
                              ),
                              elevation: 6.0,
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                          );
                        });
                  }else{
                    return Center(child: CircularProgressIndicator(),);
                  }
                },
              ),
            )
          ],
        ),
      ]),
    );
  }
}
