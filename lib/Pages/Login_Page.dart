import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
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
              fontSize: 24,
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
                    RaisedButton(
                      child: Text("Login"),
                      textColor: Colors.white,
                      color: Colors.deepPurple,
                      onPressed: (){
                        print("Hi Satyam");
                      },
                      ),
               ],
             ),
           )
      ],
      
      )
    );
  }
}