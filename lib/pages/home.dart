import 'package:flutter/material.dart';

import 'package:flutter_advanced/models/mail.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final colors = [Colors.teal, Colors.red, Colors.indigo];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Inbox"),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.dehaze),
        ),
        actions: <Widget>[
          IconButton(onPressed: () {}, icon: Icon(Icons.search))
        ],
      ),
      body: ListView.builder(
          itemCount: mails.length,
          itemBuilder: (context, index) =>
              mailRow(context, mails[index], index)),
    );
  }

  Widget mailRow(BuildContext context, MailModel mail, int index) {
    final color = colors[index % colors.length];

    return ListTile(
      onTap: () => {},
      leading: CircleAvatar(
        radius: 25,
        backgroundColor: color,
        child: Text(mails[index].title.substring(0, 2).toUpperCase(),
            style: TextStyle(color: Colors.white)),
      ),
      title: Text(mail.title),
      subtitle: Text(
        mail.content,
        overflow: TextOverflow.ellipsis,
      ),
      trailing: Text(mail.date, style: TextStyle(color: Colors.grey.shade500)),
    );
  }
}

final mails = [
  MailModel(
      title: "American Express",
      content:
          "lorem ipsum sit amter dolr lorem ipsum sit amter dolr lorem ipsum sit amter dolr lorem ipsum sit amter dolr",
      date: "23 may"),
  MailModel(
      title: "Google",
      content:
          "lorem ipsum sit amter dolr lorem ipsum sit amter dolr lorem ipsum sit amter dolr lorem ipsum sit amter dolr",
      date: "21 may"),
  MailModel(
      title: "Facebook",
      content:
          "lorem ipsum sit amter dolr lorem ipsum sit amter dolr lorem ipsum sit amter dolr lorem ipsum sit amter dolr",
      date: "20 may"),
];
