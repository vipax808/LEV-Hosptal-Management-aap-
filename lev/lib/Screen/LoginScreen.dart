import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lev/Screen/SignUp.dart';
import 'package:lev/utils/colourTheme.dart';
import 'package:lottie/lottie.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool pastToggle = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: BackgroundColor5,
      child: Material(
        color: BackgroundColor5,
        child: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Lottie.asset(
                    'assets/images/ani2.json',
                    height: 320,
                    width: 320,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: EdgeInsets.all(12),
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        label: Text("Enter Username"),
                        prefixIcon: Icon(Icons.person)),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(12),
                  child: TextField(
                    obscureText: pastToggle ? true : false,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      label: Text("Enter Password"),
                      prefixIcon: Icon(Icons.lock),
                      suffixIcon: InkWell(
                        onTap: () {
                          if (pastToggle == true) {
                            pastToggle = false;
                          } else {
                            pastToggle = true;
                          }
                          setState(() {});
                        },
                        child: pastToggle
                            ? Icon(CupertinoIcons.eye_slash_fill)
                            : Icon(CupertinoIcons.eye_fill),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: SizedBox(
                    width: double.infinity,
                    child: Material(
                      color: BackgroundColor3,
                      borderRadius: BorderRadius.circular(10),
                      child: InkWell(
                        onTap: () {
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(
                          //     builder: (context) => LoginScreen(),
                          //   ),
                          // );
                        },
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 15, horizontal: 40),
                          child: Center(
                            child: Text(
                              'Log In',
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
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't  have any account?",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.black54),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SignUp(),
                            ),
                          );
                        },
                        child: Text(
                          "Create Account",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: BackgroundColor3,
                          ),
                        ))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
