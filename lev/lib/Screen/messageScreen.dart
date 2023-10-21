import 'package:flutter/material.dart';
import 'package:lev/Screen/ChatScreen.dart';
import 'package:lev/utils/colourTheme.dart';

class MessageScreen extends StatelessWidget {
  final List<String> imgs = [
    "doctor1.jpg",
    "doctor2.jpg",
    "doctor3.jpg",
    "doctor4.jpg",
    "doctor1.jpg",
    "doctor2.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 227, 241, 241),
      appBar: AppBar(
        backgroundColor: BackgroundColor2,
        title: Text("Messages"),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "Messages",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 15),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 10,
                      spreadRadius: 2,
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: "Search",
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                    Icon(
                      Icons.search,
                      color: Color(0xFF7165D6),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            SizedBox(
              height: 90,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: imgs.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.symmetric(horizontal: 12),
                    width: 65,
                    height: 65,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(spreadRadius: 2, blurRadius: 10),
                      ],
                    ),
                    child: Stack(
                      textDirection: TextDirection.rtl,
                      children: [
                        Center(
                          child: Container(
                            height: 65,
                            width: 65,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(30),
                              child: Image.asset(
                                "assets/images/${imgs[index]}",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(2),
                          padding: EdgeInsets.all(3),
                          height: 20,
                          width: 20,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                          ),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.green,
                              shape: BoxShape.circle,
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              itemCount: imgs.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: ListTile(
                    minVerticalPadding: 20,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ChatScreenn(),
                        ),
                      );
                    },
                    leading: CircleAvatar(
                      radius: 30,
                      backgroundImage:
                          AssetImage("assets/images/${imgs[index]}"),
                    ),
                    title: Text(
                      "Dr. Doctor Name",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text("Hello, Doctor, are you there?"),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
