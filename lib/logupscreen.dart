import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'profile_page.dart';

class LogupScreen extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => _LogupScreenState();
}

class _LogupScreenState extends State<LogupScreen> {
  Widget buildUserName() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'User Name',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 10),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                    color: Colors.black26, blurRadius: 6, offset: Offset(0, 2))
              ]),
          height: 60,
          child: TextField(
            keyboardType: TextInputType.name,
            style: TextStyle(
              color: Colors.black87,
            ),
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 14),
                prefixIcon: Icon(
                  Icons.account_circle_outlined,
                  color: Color(0xffe83e20),
                ),
                hintText: 'User Name...',
                hintStyle: TextStyle(color: Colors.black38)),
          ),
        )
      ],
    );
  }

  Widget buildEmail() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Email',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 10),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                    color: Colors.black26, blurRadius: 6, offset: Offset(0, 2))
              ]),
          height: 60,
          child: TextField(
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(
              color: Colors.black87,
            ),
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 14),
                prefixIcon: Icon(
                  Icons.email,
                  color: Color(0xffe83e20),
                ),
                hintText: 'Email',
                hintStyle: TextStyle(color: Colors.black38)),
          ),
        )
      ],
    );
  }

  Widget buildpassword() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'password',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 10),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                    color: Colors.black26, blurRadius: 6, offset: Offset(0, 2))
              ]),
          height: 60,
          child: TextField(
            obscureText: true,
            style: TextStyle(
              color: Colors.black87,
            ),
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 14),
                prefixIcon: Icon(
                  Icons.lock,
                  color: Color(0xffe83e20),
                ),
                hintText: 'password',
                hintStyle: TextStyle(color: Colors.black38)),
          ),
        )
      ],
    );
  }

  Widget confirmpassword() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Confirm The password',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 10),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                    color: Colors.black26, blurRadius: 6, offset: Offset(0, 2))
              ]),
          height: 60,
          child: TextField(
            obscureText: true,
            style: TextStyle(
              color: Colors.black87,
            ),
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 14),
                prefixIcon: Icon(
                  Icons.lock,
                  color: Color(0xffe83e20),
                ),
                hintText: 'Confirm password',
                hintStyle: TextStyle(color: Colors.black38)),
          ),
        )
      ],
    );
  }

  Widget buildRegisterBtn() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 25),
      width: double.infinity,
      child: RawMaterialButton(
        elevation: 5,
        
        onPressed: () {
          //  Navigator.of(context).push(
          //  MaterialPageRoute(builder: (v){   //v كناية عن محتوى الصفحة الي هروحلها
          //     return Profile_page(email.text,password.text);
          // })
          // );
        },
        
        padding: EdgeInsets.all(15),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        fillColor: Colors.blueAccent,
        child: Text(
          'REGISTER',
          style: TextStyle(
              color: Color(0xffe83e20),
              fontSize: 18,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  Widget buildLogInBtn() {
    return GestureDetector(
      onTap: () => print('Sign In Pressed'),
      child: RichText(
        text: TextSpan(children: [
          TextSpan(
              text: 'Already have an Account?',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w500)),
          TextSpan(
              text: ' Login',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold))
        ]),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
          value: SystemUiOverlayStyle.light,
          child: GestureDetector(
            child: Stack(
              children: <Widget>[
                Container(
                  height: double.infinity,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                        Color(0x66e83e20),
                        Color(0x99e83e20),
                        Color(0xcce83e20),
                        Color(0xffe83e20),
                      ])),
                  child: SingleChildScrollView(
                    physics: AlwaysScrollableScrollPhysics(),
                    padding: EdgeInsets.symmetric(horizontal: 25, vertical: 80),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Sign Up',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 40,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 50),
                        buildUserName(),
                        SizedBox(height: 10),
                        buildEmail(),
                        SizedBox(height: 10),
                        buildpassword(),
                        SizedBox(height: 10),
                        confirmpassword(),
                        buildRegisterBtn(),
                        buildLogInBtn(),
                      ],
                    ),
                  ),
                )
              ],
            ),
          )),
    );
  }
}
