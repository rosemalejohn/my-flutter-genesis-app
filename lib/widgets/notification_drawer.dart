import 'package:flutter/material.dart';

class NotificationDrawer extends StatelessWidget {

  NotificationDrawer();

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.black12,
              child: Text('RJ', style: TextStyle(color: Colors.white)),
            ),
            title: Text('Review Setup'),
            subtitle: Text('Johnny setup his review for the month of October'),
            onTap: () {
              Navigator.pushNamed(context, '/');
            }
          ),
          Divider()
        ]
      )
    );
  }
}