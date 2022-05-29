import 'package:flutter/material.dart';
import 'data.dart';

class List extends StatefulWidget {
  @override
  ListState createState() => new ListState();
}

class ListState extends State<List> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.only(top: 10),
      child: ListView.builder(
        itemCount: data.length,
        itemBuilder: (context, index) {
          return ListTile(
              title: Text(
                data[index]['name'].toString(),
                style: const TextStyle(fontSize: 15),
              ),
              /* subtitle: Padding(
                padding: const EdgeInsets.only(top: 6),
                child: Text(
                  data[index]['message'].toString(),
                  style: const TextStyle(fontSize: 15),
                ),
              ),*/
              trailing: Text(data[index]['time'].toString()),
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                  data[index]['profile'].toString(),
                ),
              ));
        },
      ),
    ));
  }
}
