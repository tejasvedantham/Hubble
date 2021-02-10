import 'package:flutter/material.dart';
import 'package:hubble_app/ui/settings.dart';

class DashboardWidget extends StatefulWidget {
  const DashboardWidget({Key key, this.uid}) : super(key: key);

  @override
  _DashboardWidgetState createState() => _DashboardWidgetState();

  final String uid;
}

class _DashboardWidgetState extends State<DashboardWidget> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => Future.value(false),
      child: Material(
        child: Scaffold(
            appBar: AppBar(title: Text("Hubble"), elevation: 20,
                leading: GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => SettingsWidget()));
                  },
                  child: Icon(Icons.menu_rounded),
                )
            ),
            body: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Expanded(
                  child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: 3,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        padding: EdgeInsets.all(10),
                        height: 200,
                        width: double.maxFinite,
                        child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)
                            ),
                            elevation: 10,
                            child: Row(
                              children: [
                                Image.asset('assets/logo2.png'),
                                Column(
                                  children: [
                                    Text("Hello")
                                  ],
                                )
                              ],
                            )
                        ),
                      );
                    },
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    margin: const EdgeInsets.all(30),
                    child: ButtonTheme(
                      minWidth: 250,
                      height: 40,
                      child: RaisedButton(
                        color: Colors.greenAccent[400],
                        padding: EdgeInsets.all(10),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        onPressed: () {},
                        child: Text("CREATE STORY", style: TextStyle(color: Colors.white, fontSize: 18)),
                        elevation: 7,
                      ),
                    ),
                  ),
                ),
              ],
            )
        ),
      ),
    );
  }
}
