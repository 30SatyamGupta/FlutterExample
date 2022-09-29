import 'package:flutter/material.dart';
import 'package:flutter_demo/utils/routes.dart';

class LoginPage extends StatefulWidget {

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name ="";
  bool changeButton = false;
  final _formKey = GlobalKey<FormState>();

  moveToHome(BuildContext context)async{
    if(_formKey.currentState.validate())
    {
      setState(() {
        changeButton = true;
      });

      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
      changeButton = false;
      });
    }

  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
              child: Form(
                key: _formKey,
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
                        "Welcome $name ",
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
                                validator: (value) {
                                  if(value.isEmpty)
                                  {
                                    return "UserName can not be Empty";
                                  }
                                  return null;
                                },
                                onChanged: (value){
                                  name = value;
                                  setState((){});
                                },
                                
                                ),
                              TextFormField(
                                obscureText: true,
                              decoration: InputDecoration(
                                hintText: "Enter Password", 
                                labelText: "Password"),
                                validator: (value) {
                                  if(value.isEmpty)
                                  {
                                    return "Password can not be Empty";
                                  }
                                  else if(value.length < 6)
                                  {
                                    return "Password length should be atleast 6";
                                  }
                                  return null;
                                },
                                ),
                              SizedBox(
                                  height: 20.0,
                                ),
                                Material(
                                  
                                 color: Colors.deepPurple,
                                 borderRadius: 
                                      BorderRadius.circular(changeButton ? 50 : 8),
                                       
                                  child: InkWell(
                                    onTap: () => moveToHome(context),
                                    child: AnimatedContainer(
                                      // color: Colors.deepPurple,
                                      duration: Duration(seconds: 1),
                                      width: changeButton ? 50 : 150,
                                      height: 50,
                                      alignment: Alignment.center,
                                      child: changeButton ?   Icon(Icons.done, color: Colors.white,) :  Text("Login", style: TextStyle(
                                         color: Colors.white,
                                         fontWeight: FontWeight.bold,
                                         fontSize: 16,
                                       ),
                                      ),
                                      
                                    ),
                                  ),
                                )
                                
                          ],
                      ),
                           )
                    ],
                      
                  ),
              ),
      )
    );
  }
}