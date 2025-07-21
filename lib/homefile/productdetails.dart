import 'package:flutter/material.dart';

class Productdetails extends StatefulWidget {
  const Productdetails({super.key});

  @override
  State<Productdetails> createState() => _ProductdetailsState();
}

class _ProductdetailsState extends State<Productdetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Icon(Icons.arrow_back_ios),
                    ),
                    SizedBox(width: 300),
                    Icon(Icons.shopping_cart),
                  ],
                ),
              ),
              SizedBox(
                height: 240,
                child: Image.asset(
                  "assets/d610318e96b2fdd9029f4ef9d1867dd217840b3e.png",
                ),
              ),
          
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: 130,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Text(
                        "Galaxy M33 (4GB | 64 GB )",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 165),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "AED 42900",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
          
                      Text(
                        "AED74999",
                        style: TextStyle(fontSize: 10, color: Colors.red),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 10),
              Container(height: 0.5, width: 365, color: Colors.blueGrey),
              Padding(
                padding: const EdgeInsets.only(right: 240, top: 10),
                child: Text(
                  "Product Details",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15,right: 15,top: 10),
                child: Text(
                  "The Samsung Galaxy M33 5G runs One UI 4.1 is based on Android 12 and packs 128GB of inbuilt storage. Connectivity options on the Samsung Galaxy M33 5G include Wi-Fi 802.11 a/b/g/n/ac and USB Type-C with active 4G on both SIM cards",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
