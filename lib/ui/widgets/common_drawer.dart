import 'package:ez/utils/uidata.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CommonDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text(
              "Aizat Rafee",
            ),
            accountEmail: Text("019-6009195"),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage(UIData.avatar_path),
            ),
          ),
          ListTile(
            title: Text(
              "Me",
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18.0),
            ),
            leading: Icon(
              Icons.person_outline,
              color: Colors.blue,
            ),
          ),
          ListTile(
            title: Text(
              "Promotion",
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18.0),
            ),
            leading: Icon(
              Icons.lightbulb_outline,
              color: Colors.green,
            ),
          ),
          ListTile(
            title: Text(
              "Mail",
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18.0),
            ),
            leading: Icon(
              Icons.mail_outline,
              color: Colors.orange,
            ),
          ),
          Divider(),
          ListTile(
            title: Text(
              "Settings",
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18.0),
            ),
            leading: Icon(
              Icons.settings,
              color: Colors.brown,
            ),
          ),
        ],
      ),
    );
  }
}
