import 'dart:math';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:my_first_bank/src/features/ui/utils/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int numberSaving = Random().nextInt(10000);
    int numberCurrent = Random().nextInt(10000);

    return Scaffold(
      drawer: Drawer(
        child: DrawerApp(),
      ),
      appBar: AppBar(
        title: Text('Hello User!'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(
            height: 40,
          ),
          Text(
            'Your products',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 40,
          ),
          Expanded(
            flex: 2,
            child: Container(
              height: 100,
              child: CarouselSlider(
                  items: [
                    Container(
                      height: 100,
                      width: 300,
                      margin: EdgeInsets.zero,
                      child: Card(
                        elevation: 2,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                                child: Icon(
                              Icons.monetization_on,
                              size: 100,
                            )),
                            Text(
                              'Saving account',
                              style: TextStyle(fontSize: 30),
                            ),
                            Text(
                              'Disponible:\n\$$numberSaving',
                              style: TextStyle(fontSize: 30),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 100,
                      width: 300,
                      margin: EdgeInsets.zero,
                      child: Card(
                        elevation: 4,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                                child: Icon(
                              Icons.monetization_on,
                              size: 100,
                            )),
                            Text('Current account',
                                style: TextStyle(fontSize: 30)),
                            Text('Disponible:\n\$$numberCurrent  ',
                                style: TextStyle(fontSize: 30)),                           
                          ],
                        ),
                      ),
                    ),
                  ],
                  options: CarouselOptions(
                    height: 500,
                    enableInfiniteScroll: false,
                    viewportFraction: 0.8,
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
