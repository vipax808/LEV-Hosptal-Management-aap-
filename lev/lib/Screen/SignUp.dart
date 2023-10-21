import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lev/Screen/LoginScreen.dart';
import 'package:lev/utils/colourTheme.dart';
import 'package:lottie/lottie.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool passToggle = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BackgroundColor5,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Padding(
                  padding: EdgeInsets.all(20),
                  child: Lottie.asset(
                    'assets/images/ani3.json',
                    height: 300,
                    width: 300,
                  )),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 15),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: "Full Name",
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.person),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 15),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: "Email Address",
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.email),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 15),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: "Phone number",
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.phone),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 15),
                child: TextField(
                  obscureText: passToggle,
                  decoration: InputDecoration(
                    labelText: "Password",
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.lock),
                    suffixIcon: InkWell(
                      onTap: () {
                        setState(() {
                          passToggle = !passToggle;
                        });
                      },
                      child: Icon(
                        passToggle ? Icons.visibility_off : Icons.visibility,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginScreen(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: BackgroundColor3,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(15),
                      child: Text(
                        "Create Account",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already have account?",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.black54,
                      )),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: ((context) => LoginScreen()),
                          ),
                        );
                      },
                      child: Text(
                        "Log In",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: BackgroundColor3),
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
