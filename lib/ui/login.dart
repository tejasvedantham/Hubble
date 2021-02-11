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
          Expanded(
            child: Container(
              margin: EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("Hubble", style: TextStyle(color: Colors.white, fontSize: 48)),
                  Image.asset('assets/logo.png'),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
                    child: Opacity(
                      opacity: 0.4,
                      child: TextField(
                        decoration: InputDecoration(
                          fillColor: Colors.grey[100],
                          filled: true,
                          hintText: 'Email',
                          hintStyle: TextStyle(color: Colors.grey[800]),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: BorderSide.none
                          )
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                    child: Opacity(
                      opacity: 0.4,
                      child: TextField(
                        decoration: InputDecoration(
                          fillColor: Colors.grey[100],
                          filled: true,
                          hintText: 'Password',
                            hintStyle: TextStyle(color: Colors.grey[800]),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: BorderSide.none
                          )
                        ),
                      ),
                    ),
                  ),
                  ButtonTheme(
                    minWidth: MediaQuery.of(context).size.width,
                    height: 50,
                    child: RaisedButton(
                      elevation: 10,
                      color: Colors.white,
                      padding: EdgeInsets.all(10),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)
                      ),
                      onPressed: () {},
                      child: Text("LOGIN", style: TextStyle(color: Colors.grey[800], fontSize: 18)),
                    )
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                    child: FlatButton(
                      onPressed: () {},
                      child: RichText(
                        text: new TextSpan(
                          // Note: Styles for TextSpans must be explicitly defined.
                          // Child text spans will inherit styles from parent
                          style: new TextStyle(
                            fontSize: 15.0,
                            color: Colors.grey[800],
                          ),
                          children: <TextSpan>[
                            new TextSpan(text: "Forgot Password? "),
                            new TextSpan(text: 'Reset it here', style: new TextStyle(fontWeight: FontWeight.bold)),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              child: Opacity(
                opacity: 0.5,
                child: FlatButton(
                  minWidth: MediaQuery.of(context).size.width,
                  height: 65,
                  onPressed: () {},
                  color: Colors.blue[200],
                  padding: EdgeInsets.all(10),
                  child: RichText(
                    text: new TextSpan(
                      // Note: Styles for TextSpans must be explicitly defined.
                      // Child text spans will inherit styles from parent
                      style: new TextStyle(
                        fontSize: 18.0,
                        color: Colors.black,
                      ),
                      children: <TextSpan>[
                        new TextSpan(text: "Don't have an account? "),
                        new TextSpan(text: 'Sign up', style: new TextStyle(fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}