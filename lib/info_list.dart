import 'package:flutter/material.dart';
import 'info.dart';

class Infolist extends StatefulWidget {
  @override
  InfolistState createState() => new InfolistState();
}

class InfolistState extends State<Infolist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.only(top: 10),
      child: ListView.builder(
        itemCount: info.length,
        itemBuilder: (context, index) {
          return ListTile(
              title: Text(
                info[index]['name'].toString(),
                style: const TextStyle(fontSize: 15),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 6),
                child: Text(
                  info[index]['message'].toString(),
                  style: const TextStyle(fontSize: 15),
                ),
              ),
              trailing: Text(info[index]['time'].toString()),
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                  info[index]['profile'].toString(),
                ),
              ));
        },
      ),
    ));
  }
}
