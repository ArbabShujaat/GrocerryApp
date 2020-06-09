import 'package:flutter/material.dart';
import 'package:grocerryApp/util/GrocerryList.dart';

import 'package:grocerryApp/widgets/slide_item.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with AutomaticKeepAliveClientMixin<Home> {

  

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: Colors.grey[300],
          child: ListView(
            children: <Widget>[
              Column(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      FittedBox(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(20.0),
                              bottomRight: Radius.circular(20.0),
                            ),
                            color: Colors.white,
                          ),
                          height: MediaQuery.of(context).size.height / 4.5,
                          width: MediaQuery.of(context).size.width,
                          child: Stack(children: <Widget>[
                            Positioned(
                                top: 10,
                                left: 20,
                                child: Text(
                                  "All Categories",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                )),
                            Positioned(
                              top: 30,
                              left: 20,
                              child: Container(
                                width: MediaQuery.of(context).size.width - 30,
                                child: Row(children: <Widget>[
                                  Column(
                                    children: <Widget>[
                                      CircleAvatar(
                                          backgroundColor: Colors.green[50],
                                          minRadius: 30,
                                          child: Icon(
                                            Icons.home,
                                            color: Colors.green,
                                          )),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            0, 8, 0, 0),
                                        child: Text(
                                          "Household",
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.grey),
                                        ),
                                      )
                                    ],
                                  ),
                                  Spacer(),
                                  Column(
                                    children: <Widget>[
                                      CircleAvatar(
                                          backgroundColor: Colors.green[50],
                                          minRadius: 30,
                                          child: Icon(
                                            Icons.shopping_cart,
                                            color: Colors.green,
                                          )),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            0, 8, 0, 0),
                                        child: Text(
                                          "Grocery",
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.grey),
                                        ),
                                      )
                                    ],
                                  ),
                                  Spacer(),
                                  Column(
                                    children: <Widget>[
                                      CircleAvatar(
                                          backgroundColor: Colors.green[50],
                                          minRadius: 30,
                                          child: Icon(
                                            Icons.local_bar,
                                            color: Colors.green,
                                          )),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            0, 8, 0, 0),
                                        child: Text(
                                          "Liquor",
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.grey),
                                        ),
                                      )
                                    ],
                                  ),
                                  Spacer(),
                                  Column(
                                    children: <Widget>[
                                      CircleAvatar(
                                          backgroundColor: Colors.green[50],
                                          minRadius: 30,
                                          child: Icon(
                                            Icons.local_cafe,
                                            color: Colors.green,
                                          )),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            0, 8, 0, 0),
                                        child: Text(
                                          "Chilled",
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.grey),
                                        ),
                                      )
                                    ],
                                  ),
                                  Spacer(),
                                ]),
                              ),
                            )
                          ]),
                        ),
                      ),
                      Container(
                          height: 20,
                          child: Icon(
                            Icons.keyboard_arrow_down,
                            color: Colors.white,
                            size: 30,
                          ))
                    ],
                  ),
                ],
              ),

              Padding(
                padding: const EdgeInsets.fromLTRB(20, 4, 4, 4),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Grocery Member Deals",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w800,
                          color: Colors.black),
                    ),
                    Row(
                      children: <Widget>[
                        Text(
                          "View all",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w800,
                            color: Colors.grey,
                          ),
                        ),
                        Icon(
                          Icons.keyboard_arrow_right,
                          color: Colors.grey,
                          size: 18,
                        )
                      ],
                    ),
                  ],
                ),
              ),

              //Horizontal List here
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Container(
                    height: MediaQuery.of(context).size.height / 3.5,
                    width: MediaQuery.of(context).size.width / 6,
                    child: ListView.builder(
                      primary: false,
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: grocerry == null ? 0 : grocerry.length,
                      itemBuilder: (BuildContext context, int index) {
                        Map restaurant = grocerry[index];

                        return SlideItem(
                          img: restaurant["img"],
                          title: restaurant["title"],
                          price: restaurant["price"],
                          favorite: restaurant["Favorite"],
                          weight: restaurant["weight"],
                        );
                      },
                    ),
                  ),
                
              ),

              SizedBox(height: 10.0),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 4, 4, 4),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Grocery Deals",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w800,
                          color: Colors.black),
                    ),
                    Row(
                      children: <Widget>[
                        Text(
                          "View all",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w800,
                            color: Colors.grey,
                          ),
                        ),
                        Icon(
                          Icons.keyboard_arrow_right,
                          color: Colors.grey,
                          size: 18,
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Container(
                  height: MediaQuery.of(context).size.height / 3.5,
                  width: MediaQuery.of(context).size.width / 6,
                  child: ListView.builder(
                    primary: false,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: grocerry2 == null ? 0 : grocerry2.length,
                    itemBuilder: (BuildContext context, int index) {
                      Map restaurant = grocerry2[index];

                      return SlideItem(
                        img: restaurant["img"],
                        title: restaurant["title"],
                        price: restaurant["price"],
                        favorite: restaurant["Favorite"],
                        weight: restaurant["weight"],
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

  @override
  bool get wantKeepAlive => true;
}
