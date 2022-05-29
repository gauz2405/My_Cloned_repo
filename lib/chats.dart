import 'package:flutter/material.dart';
//import 'package:clone/list.dart';

class Chat extends StatefulWidget {
  const Chat({Key? key}) : super(key: key);
  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.teal,
        child: const Icon(Icons.chat),
      ),
    );
  }
}
