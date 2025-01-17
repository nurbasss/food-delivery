import 'package:delivery_app/screens/forgot_password.dart';
import 'package:delivery_app/screens/forgot_password_verification.dart';
import 'package:delivery_app/screens/home_screen.dart';
import 'package:delivery_app/screens/sign_in.dart';
import 'package:delivery_app/screens/sign_up.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:delivery_app/components/header_widget.dart';

class UserProfile extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
     return _ProfilePageState();
  }
}

class _ProfilePageState extends State<UserProfile>{

  double  _drawerIconSize = 24;
  double _drawerFontSize = 17;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile",
          style: TextStyle(color: Colors.white),
        ),
        elevation: 0.5,
        iconTheme: IconThemeData(color: Colors.white),
        flexibleSpace:Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: <Color>[Theme.of(context).primaryColor, Theme.of(context).accentColor,]
              )
          ),
        ),
        actions: [
          Container(
            margin: EdgeInsets.only( top: 16, right: 16,),
            child: Stack(
              children: <Widget>[
                Icon(Icons.shopping_cart),
                GestureDetector(
                  onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()),);
                  }, 
                  child: Positioned(
                  right: 0,
                  child: Container(
                    padding: EdgeInsets.all(1),
                    decoration: BoxDecoration( color: Colors.red, borderRadius: BorderRadius.circular(6),),
                    constraints: BoxConstraints( minWidth: 12, minHeight: 12, ),
                    child: Text( '1', style: TextStyle(color: Colors.white, fontSize: 8,), textAlign: TextAlign.center,),
                  ),
                ),)
                
              ],
            ),
          )
        ],
      ),
      drawer: Drawer(
        child: Container(
          decoration:BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: [0.0, 1.0],
                  colors: [
                    Theme.of(context).primaryColor.withOpacity(0.2),
                    Theme.of(context).accentColor.withOpacity(0.5),
                  ]
              )
          ) ,
          child: ListView(
            children: [
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    stops: [0.0, 1.0],
                    colors: [ Theme.of(context).primaryColor,Theme.of(context).accentColor,],
                  ),
                ),
                child: Container(
                  alignment: Alignment.bottomLeft,
                  child: Text('Food Delivery',
                    style: TextStyle(fontSize: 25,color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
               ListTile(
                leading: Icon(Icons.shopping_bag_rounded ,size: _drawerIconSize,color: Colors.grey.shade800),
                title: Text('Food List', style: TextStyle(fontSize: _drawerFontSize, color: Colors.grey.shade800),
                ),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()),);
                },
              ),
              ListTile(
                leading: Icon(Icons.login_rounded,size: _drawerIconSize,color: Colors.grey.shade800),
                title: Text('Login Page', style: TextStyle(fontSize: _drawerFontSize, color: Colors.grey.shade800),
                ),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => SignIn()),);
                },
              ),
              ListTile(
                leading: Icon(Icons.person_add_alt_1, size: _drawerIconSize,color: Colors.grey.shade800),
                title: Text('Registration Page',style: TextStyle(fontSize: _drawerFontSize,color: Colors.grey.shade800),),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) =>SignUp()),);
                },
              ),
              ListTile(
                leading: Icon(Icons.password_rounded, size: _drawerIconSize,color: Colors.grey.shade800,),
                title: Text('Forgot Password Page',style: TextStyle(fontSize: _drawerFontSize,color: Colors.grey.shade800),),
                onTap: () {
                  Navigator.push( context, MaterialPageRoute(builder: (context) => ForgotPassword()),);
                },
              ),
              ListTile(
                leading: Icon(Icons.verified_user_sharp, size: _drawerIconSize,color: Colors.grey.shade800,),
                title: Text('Verification Page',style: TextStyle(fontSize: _drawerFontSize,color: Colors.grey.shade800),),
                onTap: () {
                  Navigator.push( context, MaterialPageRoute(builder: (context) => ForgotPasswordVerification()), );
                },
              ),
              ListTile(
                leading: Icon(Icons.logout_rounded, size: _drawerIconSize,color: Colors.grey.shade800,),
                title: Text('Logout',style: TextStyle(fontSize: _drawerFontSize,color: Colors.grey.shade800),),
                onTap: () {
                 // SystemNavigator.pop();
                },
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(height: 100, child: HeaderWidget(100,false,Icons.house_rounded),),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.fromLTRB(25, 10, 25, 10),
              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(width: 5, color: Colors.white),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(color: Colors.black12, blurRadius: 20, offset: const Offset(5, 5),),
                      ],
                    ),
                    child: Icon(Icons.person, size: 80, color: Colors.grey.shade300,),
                  ),
                  SizedBox(height: 20,),
                  Text('Username', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
                  SizedBox(height: 20,),
                  Text('User', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                  SizedBox(height: 10,),
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      children: <Widget>[
                        Card(
                          child: Container(
                            alignment: Alignment.topLeft,
                            padding: EdgeInsets.all(15),
                            child: Column(
                              children: <Widget>[
                                Column(
                                  children: <Widget>[
                                    ...ListTile.divideTiles(
                                      color: Colors.grey,
                                      tiles: [
                                        ListTile(
                                          contentPadding: EdgeInsets.symmetric(
                                              horizontal: 12, vertical: 4),
                                          leading: Icon(Icons.my_location),
                                          title: Text("Location"),
                                          subtitle: Text("KZ"),
                                        ),
                                        ListTile(
                                          leading: Icon(Icons.email),
                                          title: Text("Email"),
                                          subtitle: Text("donaldtrump@gmail.com"),
                                        ),
                                        ListTile(
                                          leading: Icon(Icons.phone),
                                          title: Text("Phone"),
                                          subtitle: Text("8 777 777 77 77"),
                                        ),
                                      ],
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

}