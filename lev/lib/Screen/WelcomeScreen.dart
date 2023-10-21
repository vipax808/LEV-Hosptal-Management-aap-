import 'package:flutter/material.dart';
import 'package:lev/Screen/LoginScreen.dart';
import 'package:lev/utils/colourTheme.dart';
import 'package:lev/widgets/Navbar.dart';
import 'package:lev/Screen/SignUp.dart';
import 'package:lottie/lottie.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: BackgroundColor5,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            SizedBox(
              height: 15,
            ),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Navbar()));
                },
                child: Text(
                  "SKIP",
                  style: TextStyle(color: BackgroundColor3, fontSize: 20),
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Lottie.asset('assets/images/ani1.json'),
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              'Doctors Appointment',
              style: TextStyle(
                  color: BackgroundColor3,
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1,
                  wordSpacing: 2),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Appoint Your Doctor',
              style: TextStyle(
                color: Colors.black54,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 60,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Material(
                  color: BackgroundColor4,
                  borderRadius: BorderRadius.circular(10),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LoginScreen()));
                    },
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                      child: Text(
                        "Log In",
                        style: TextStyle(
                            color: BackgroundColor2,
                            fontSize: 22,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                Material(
                  color: BackgroundColor3,
                  borderRadius: BorderRadius.circular(10),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => SignUp()));
                    },
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
