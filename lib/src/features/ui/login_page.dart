import 'package:flutter/material.dart';

import 'home_page.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController _userCotroller;
    TextEditingController _passwordController;
    return Scaffold(
      appBar: AppBar(
        title: Image.asset('assets/bank.jpg'),
        toolbarHeight: 80,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Join to your app',
                style: TextStyle(fontSize: 20),
              ),
              Text('My first bank', style: TextStyle(fontSize: 20)),
              Container(
                  height: 100,
                  width: 100,
                  child: Image.asset('assets/moneda.jpg'))
            ],
          )),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 45,
                  width: 350,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.blue),
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: TextFormField(
                      controller: _userCotroller,
                      textInputAction: TextInputAction.next,
                      style: TextStyle(color: Colors.black),
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        fillColor: Colors.black,
                        hoverColor: Colors.black,
                        focusColor: Colors.black,
                        icon: Icon(
                          Icons.email,
                        ),
                        hintStyle: TextStyle(color: Colors.black),
                        hintText: 'Correo electronico',
                      ),
                      onChanged: (value) {}),
                ),
                Container(
                  height: 50,
                  width: 350,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.blue),
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: TextFormField(
                    obscureText: true,
                    controller: _passwordController,
                    decoration: InputDecoration(
                        hintText: 'Password',
                        border: InputBorder.none,
                        prefixIcon: Icon(Icons.lock)),
                  ),
                ),
                Text(
                  '¿Forgot password?',
                  style: TextStyle(color: Colors.blue),
                ),
              ],
            ),
          ),
          Expanded(
              child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 80),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.red,                      
                  ),
                  child: Container(
                      alignment: Alignment.center,
                      height: 50,
                      width: 300,
                      child: Text('Sign in',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18))),                  
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=> HomePage()), (route) => false);
                  }),
            ),
          ))
        ],
      ),
    );
  }
}
