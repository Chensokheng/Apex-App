import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'heroSlide.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Icon(Icons.sort,size: 40.0,),
                  Badge(
                    badgeContent: Text("3"),
                    child: Icon(FontAwesomeIcons.cartPlus),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                Text("APEX LEGENDS"),
                Text("CHARACTERS",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40.0),

                ),
              ],),
            ),
            SizedBox(height: 10.0),
            HeroCarousel()  
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (int value){
          setState(() {
            _currentIndex = value;
          });
        },
        items: [

          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.search
            ),
            title: SizedBox.shrink()
          )
          ,BottomNavigationBarItem(
            icon:CircleAvatar(
              radius: 15.0,
              backgroundImage: AssetImage("asset/crypto.png"),
            ),
            title: SizedBox.shrink()
          ),
        ],
      ),
    );
  }
}