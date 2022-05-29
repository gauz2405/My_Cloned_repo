import 'package:flutter/material.dart';
import 'tel.dart';

class Calls extends StatefulWidget {
  @override
  CallsState createState() => new CallsState();
}

class CallsState extends State<Calls> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.only(top: 10),
      child: ListView.builder(
        itemCount: tel.length,
        itemBuilder: (context, index) {
          return ListTile(
              title: Text(
                tel[index]['name'].toString(),
                style: const TextStyle(fontSize: 15),
              ),
              /* subtitle: Padding(
                padding: const EdgeInsets.only(top: 6),
                child: Text(
                  data[index]['message'].toString(),
                  style: const TextStyle(fontSize: 15),
                ),
              ),*/
              trailing: Text(tel[index]['time'].toString()),
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                  tel[index]['profile'].toString(),
                ),
              ));
        },
      ),
    ));
  }
}
