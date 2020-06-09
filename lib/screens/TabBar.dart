import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:outline_material_icons/outline_material_icons.dart';
import 'home.dart';

class TabBarScreen extends StatefulWidget {
  static const routename = "/TabBarScreen";
  @override
  _TabBarScreenState createState() => _TabBarScreenState();
}

class _TabBarScreenState extends State<TabBarScreen>
    with AutomaticKeepAliveClientMixin<TabBarScreen> {


  @override
  Widget build(BuildContext context) {
    super.build(context);

    return DefaultTabController(
      length: 4,
      child: Scaffold(
        drawer: Drawer(),
        appBar: AppBar(
          title: Text("Store"),
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Icon(Icons.search),
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Icon(OMIcons.notifications),
            )
          ],
          bottom: TabBar(
            indicatorColor: Colors.white,
            indicatorWeight: 3.5,
            tabs: <Widget>[
              Tab(
                  icon: Icon(
                Icons.store,
              )),
              Tab(
                  icon: Icon(
                OMIcons.shoppingBasket,
              )),
              Tab(
                  icon: Icon(
                OMIcons.favoriteBorder,
              )),
              Tab(
                  icon: Icon(
                OMIcons.accountCircle,
              )),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Home(),
            Home(),
            Home(),
            Home(),
          ],
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
