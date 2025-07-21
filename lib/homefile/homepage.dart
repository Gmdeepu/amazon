import 'package:shopping_app/homefile/categories.dart';
import 'package:shopping_app/homefile/latestmobiles.dart';
import 'package:shopping_app/homefile/searchlist.dart';
import 'package:shopping_app/loginfile/otppage.dart';
import 'package:shopping_app/loginfile/profile.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 15, left: 10),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 17),
                      child: Column(
                        children: [
                          Text("Welcome Back!"),
                          Text(
                            "Lorem ipsum",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 220),
                    Icon(Icons.shopping_cart_outlined, size: 26),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20, right: 20, top: 18),
                child: TextFormField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color.fromARGB(255, 2, 36, 82),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(100),
                    ),
                    prefixIcon: Icon(Icons.search, color: Colors.white),
                    hintText: "What are you looking for..",
                    hintStyle: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              CarouselSlider(
                items: [
                  Padding(
                    padding: const EdgeInsets.only(top: 18),
                    child: ClipRRect(
                      borderRadius: BorderRadiusGeometry.circular(10),
                      child: Image.asset("assets/banner.png", fit: BoxFit.cover),
                    ),
                  ),
                ],
                options: CarouselOptions(
                  autoPlay: true,
                  enlargeCenterPage: true,
                  height: 160,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(width: 20),
                    Text(
                      "Categories",
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: 210),
                    Text(
                      "View all",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Container(
                  height: 130,
                  width: 400,
                  color: const Color.fromARGB(255, 237, 235, 235),
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: categories.length,
                    itemBuilder: (context, index) {
                      return Container(
                        width: 90,
          
                        margin: EdgeInsets.symmetric(horizontal: 8, vertical: 10),
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadiusGeometry.circular(10),
                            side: BorderSide(color: Colors.black26),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  categories[index].img,
                                  height: 60,
                                  fit: BoxFit.contain,
                                ),
          
                                Text(
                                  categories[index].name,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 7.5,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Row(
                  children: [
                    SizedBox(width: 14),
                    Text(
                      "Latest Mobiles",
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: 190),
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder:(context) => Searchlist(),));
                      },
                      child: Text(
                        "View all",
                        
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 350,
                width: 400,
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: GridView.builder(
                    itemCount: Latestmobiles.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                      mainAxisExtent: 180
                    ),
                    itemBuilder: (context, index) {
                      return Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(10),
                          color:Colors.white,
                        ),
                        child: Column(
                          children: [
                            Container(
                              child: SizedBox(height: 130,
                                child: Image.asset(Latestmobiles[index].img))),
                            Text(
                              Latestmobiles[index].text,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Container(
                                height: 0.5,
                                width: 175,
                                color: Colors.blueGrey,
                            ),
                            SizedBox(width: 170,
                              child: Text(
                                Latestmobiles[index].text1,
                                style: TextStyle(
                                  fontSize: 12,
                                ),
                              ),
                            )
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
