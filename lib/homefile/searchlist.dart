import 'package:shopping_app/homefile/mobiledet.dart';
import 'package:flutter/material.dart';
import 'package:shopping_app/homefile/productdetails.dart';

class Searchlist extends StatefulWidget {
  const Searchlist({super.key});

  @override
  State<Searchlist> createState() => _SearchlistState();
}

class _SearchlistState extends State<Searchlist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
                child: TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.search,
                      size: 40,
                      color: Colors.white,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    filled: true,
                    fillColor: const Color.fromARGB(255, 2, 36, 82),
                    hintText: "mobile",
                    hintStyle: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              SizedBox(
                height: 700,
                width: 400,
                child: Padding(
                  padding: const EdgeInsets.only(top: 20, left: 15, right: 15),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Productdetails(),
                        ),
                      );
                    },
                    child: GridView.builder(
                      itemCount: mobiles.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 20,
                        mainAxisSpacing: 10,
                        mainAxisExtent: 210,
                      ),
                      itemBuilder: (context, index) {
                        return Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                              color: const Color.fromARGB(255, 218, 200, 200),
                            ),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Stack(
                            children: [
                              Container(
                                height: 120,
                                width: 200,
                                decoration: BoxDecoration(
                                  color: const Color.fromARGB(
                                    255,
                                    241,
                                    240,
                                    240,
                                  ),
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(15),
                                    topRight: Radius.circular(15),
                                  ),
                                ),
                              ),
                              Center(
                                child: Padding(
                                  padding: const EdgeInsets.only(bottom: 90),
                                  child: Image.asset(
                                    mobiles[index].img,
                                    height: 130,
                                  ),
                                ),
                              ),
                              Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 125),
                                    child: Text(
                                      mobiles[index].text1,
                                      style: TextStyle(
                                        fontSize: 11,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      left: 8,
                                      top: 4,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          mobiles[index].text2,
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 8),
                                    child: Container(
                                      height: 0.5,
                                      width: 200,
                                      color: const Color.fromARGB(
                                        255,
                                        218,
                                        200,
                                        200,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      right: 110,
                                      top: 7,
                                    ),
                                    child: Text(
                                      mobiles[index].text3,
                                      style: TextStyle(
                                        color: const Color.fromARGB(
                                          255,
                                          99,
                                          91,
                                          91,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        );
                      },
                    ),
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
