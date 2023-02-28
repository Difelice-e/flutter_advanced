import 'package:flutter/material.dart';
import 'package:flutter_advanced/models/mail.dart';

class DetailPageArgs {
  DetailPageArgs({
    required this.mail,
    required this.color,
  });

  final MailModel mail;
  final Color color;
}

class DetailPage extends StatelessWidget {
  final DetailPageArgs args;
  static String routeName = '/mail/detail';

  DetailPage({required this.args, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final DetailPageArgs args = ModalRoute.of<DetailPageArgs>(context).settings.arguments;
    final MailModel mail = args.mail;
    final Color color = args.color;

    return Scaffold(
      appBar: AppBar(
        title: Text(mail.title),
        backgroundColor: color,
        centerTitle: true,
        leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: Icon(Icons.arrow_back)),
      ),
      body: Column(children: <Widget>[
        ListTile(
          leading: CircleAvatar(
              backgroundColor: color,
              radius: 25,
              child: Text(mail.title.substring(0, 2).toUpperCase(),
                  style: TextStyle(color: Colors.white))),
          title: Text(mail.title),
          subtitle: Text(
            mail.content,
            overflow: TextOverflow.ellipsis,
          ),
          trailing: IconButton(
            icon: Icon(Icons.reply),
            onPressed: () {},
          ),
        ),
        Divider(
          thickness: 1,
        ),
        Padding(
            padding: EdgeInsets.all(16),
            child: Text(mail.content, style: TextStyle(height: 1.4))),
      ]),
    );
  }
}
