import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatScreenn extends StatelessWidget {
  const ChatScreenn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: AppBar(
          backgroundColor: Color(0xFF7165D6),
          leadingWidth: 30,
          
          title: Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Row(children: [
              CircleAvatar(
                radius: 25,
                backgroundImage: AssetImage('assets/images/doctor1.jpg'),
              ),
              Padding(
                padding: EdgeInsets.only(left: 10),
                child: Text(
                  "Dr. Doctor Name"
                ),
              )
            ]),
          ),
          actions: [
            Padding(padding: EdgeInsets.only(top: 8,right: 20),
            child: Icon(Icons.call,
            color: Colors.white,
            size: 26,
            ),
            
            ),
            Padding(padding: EdgeInsets.only(top: 8,right: 20),
            child: Icon(Icons.video_call,
            color: Colors.white,
            size: 26,
            ),
            
            ),
            Padding(padding: EdgeInsets.only(top: 8,right: 20),
            child: Icon(Icons.more_vert,
            color: Colors.white,
            size: 26,
            ),
            
            ),
          ],
        ),
      ),
        body: ListView.builder(
          padding: EdgeInsets.only(top: 20,left: 15,right: 15,bottom: 80),
          itemBuilder: (context,index) => ChatScreenn(),
        ),
    );
  }
}
