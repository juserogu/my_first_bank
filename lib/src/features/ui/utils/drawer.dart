import 'package:flutter/material.dart';
import 'package:my_first_bank/src/features/ui/home_page.dart';
import 'package:my_first_bank/src/features/ui/login_page.dart';
import 'package:my_first_bank/src/features/ui/weather_page.dart';

class DrawerApp extends StatelessWidget {
  const DrawerApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[200],
        body: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        CircleAvatar(
          child: Icon(
            Icons.person,
            size: 80,
          ),
          radius: 80,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> WeatherPage()));
              },
              child: Container(
                child: Row(
                  children: [
                    Icon(Icons.cloud,size: 40,),
                    SizedBox(
                      width: 40,
                    ),
                    Text(' Weather',
                    style: TextStyle(
                      fontSize: 30
                    ),)
                  ],
                ),
              ),
            ),
            SizedBox(height: 20,),
            GestureDetector(              
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> HomePage()));
              },            
              child: Container(
                child: Row(
                  children: [
                    Icon(Icons.monetization_on,size: 40,),
                    SizedBox(
                      width: 30,
                    ),
                    Text(' Account',
                    style: TextStyle(
                      fontSize: 30
                    ),)
                  ],
                ),
              ),
            ),
          ],
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginPage()));
          },
          child: Container(
            child: Row(
              children: [
                Icon(Icons.logout,size: 40,),
                SizedBox(
                  width: 30,
                ),
                Text(' Log out',
                style: TextStyle(
                      fontSize: 30
                    ),)
              ],
            ),
          ),
        ),
      ],
    ));
  }
}
