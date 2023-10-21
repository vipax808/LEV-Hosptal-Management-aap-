import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lev/utils/colourTheme.dart';

class SettingScrenn extends StatelessWidget {
  const SettingScrenn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BackgroundColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 50, left: 20, right: 20),
          child: Column(
            children: [
              Text(
                "Settings",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 30,
              ),
              ListTile(
                leading: CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage('assets/images/doctor1.jpg'),
                ),
                title: Text(
                  "Dr. Doctor Name",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 25,
                  ),
                ),
                subtitle: Text("Profile"),
              ),
              Divider(
                height: 50,
              ),
              ListTile(
                onTap: () {},
                leading: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.blue.shade100,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    CupertinoIcons.person,
                    color: Colors.blue,
                    size: 35,
                  ),
                ),
                title: Text(
                  "Profile",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                  ),
                ),
                trailing: Icon(Icons.arrow_forward_ios_rounded),
              ),
              SizedBox(
                height: 20,
              ),
              ListTile(
                onTap: () {},
                leading: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.deepPurple.shade100,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.notification_add_outlined,
                    color: Colors.deepPurple,
                    size: 35,
                  ),
                ),
                title: Text(
                  "Notification",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                  ),
                ),
                trailing: Icon(Icons.arrow_forward_ios_rounded),
              ),
              SizedBox(
                height: 20,
              ),
              ListTile(
                onTap: () {},
                leading: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.indigo.shade100,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.privacy_tip_outlined,
                    color: Colors.indigo,
                    size: 35,
                  ),
                ),
                title: Text(
                  "Privacy",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                  ),
                ),
                trailing: Icon(Icons.arrow_forward_ios_rounded),
              ),
              SizedBox(
                height: 20,
              ),
              ListTile(
                onTap: () {},
                leading: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.green.shade100,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.settings_suggest_outlined,
                    color: Colors.green,
                    size: 35,
                  ),
                ),
                title: Text(
                  "General",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                  ),
                ),
                trailing: Icon(Icons.arrow_forward_ios_rounded),
              ),
              SizedBox(
                height: 20,
              ),
              ListTile(
                onTap: () {},
                leading: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.orange.shade100,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.info_outline_rounded,
                    color: Colors.orange,
                    size: 35,
                  ),
                ),
                title: Text(
                  "About Us",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                  ),
                ),
                trailing: Icon(Icons.arrow_forward_ios_rounded),
              ),
              SizedBox(height: 20,),
              Divider(
      thickness: 1,
      
              ),
                        SizedBox(height: 20,),
              ListTile(
                onTap: () {},
                leading: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.redAccent.shade100,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.logout,
                    color: Colors.redAccent,
                    size: 35,
                  ),
                ),
                title: Text(
                  "log Out",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                  ),
                ),
                trailing: Icon(Icons.arrow_forward_ios_rounded),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
