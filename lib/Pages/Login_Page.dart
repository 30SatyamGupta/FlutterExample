import 'package:flutter/material.dart';
import 'package:flutter_demo/utils/routes.dart';

class LoginPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
              child: Column(
                  children:[
                  Image.asset(
                    "assets/img/login_img.png" ,
                    fit: BoxFit.cover,
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Text(
                      "Welcome",
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(18.3),
                      child: Column(
                        children: <Widget>[
                          TextFormField(
                            decoration: InputDecoration(
                              hintText: "Enter UserName", 
                              labelText: "Username"),
                              ),
                            TextFormField(
                              obscureText: true,
                            decoration: InputDecoration(
                              hintText: "Enter Password", 
                              labelText: "Password"),
                              ),
                            SizedBox(
                                height: 20.0,
                              ),
                              ElevatedButton(child: Text("Login"),
                                style: TextButton.styleFrom(minimumSize: Size(140, 40)),
                                onPressed: (){
                                  Navigator.pushNamed(context, MyRoutes.homePage);
                                },)
                              // RaisedButton(
                              //   child: Text("Login"),
                              //   textColor: Colors.white,
                              //   // padding: const EdgeInsets.all(45),
                              //   color: Colors.deepPurple,
                              //   onPressed: (){
                              //     Navigator.pushNamed(context, MyRoutes.homePage);
                              //   },
                              // ),
                        ],
               ),
             )
        ],
        
        ),
      )
    );
  }
}