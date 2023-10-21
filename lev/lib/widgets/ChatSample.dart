import 'package:custom_clippers/custom_clippers.dart';
import 'package:flutter/cupertino.dart';

class ChatSample extends StatelessWidget {
  const ChatSample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(right: 80),
          child: ClipPath(
            clipper: UpperNipMessageClipper(MessageType.receive),
            child: Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Color(0xFFE1E1E2),
              ),
              child: Text(
                "Hello, what can I do for you? You can book an appointment directly.",
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
