import 'package:flutter/material.dart';

class WeatherPage extends StatelessWidget {
  const WeatherPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    TextEditingController _weatherController;
    return Scaffold(
      appBar: AppBar(
        title: Text('Weather city'),
      ),
      body: Column(
        children: [
          Container(
                  height: 45,
                  width: 350,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.blue),
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: TextFormField(
                      controller: _weatherController,
                      textInputAction: TextInputAction.next,
                      style: TextStyle(color: Colors.black),                      
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        fillColor: Colors.black,
                        hoverColor: Colors.black,
                        focusColor: Colors.black,
                        icon: Icon(
                          Icons.search
                        ),
                        hintStyle: TextStyle(color: Colors.black),
                        hintText: 'Search your city',
                      ),
                      onChanged: (value) {}),
                ),
        ],
      ),
    );
  }
}
