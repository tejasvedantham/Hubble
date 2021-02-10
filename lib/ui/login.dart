import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class LoginWidget extends StatelessWidget {

  void signUpUser(String email, String password) {
    // TODO: Sign up user
    return null;
  }

  void loginUser (String email, String password) {
    // TODO: Login user
    return null;
  }

  void recoverPassword (String email) {
    // TODO: Recover password
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[400],
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("Hubble", style: TextStyle(color: Colors.white, fontSize: 48)),
                Image.asset('assets/logo.png'),
                TextField(
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    hintText: 'Email',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)
                    )
                  ),
                ),
                TextField(
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    hintText: 'Password',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)
                    )
                  ),
                ),
                ButtonTheme(
                  minWidth: 150,
                  height: 50,
                  child: RaisedButton(
                    elevation: 10,
                    color: Colors.white,
                    padding: EdgeInsets.all(10),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)
                    ),
                    onPressed: () {},
                    child: Text("Login", style: TextStyle(color: Colors.black, fontSize: 18)),
                  )
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              child: FlatButton(
                onPressed: () {},
                color: Colors.blue[300],
                padding: EdgeInsets.all(10),
                child: Text("Don't have an account? Sign up", style: TextStyle(color: Colors.black, fontSize: 18)),
              ),
            ),
          )
        ],
      ),
    );
  }
}