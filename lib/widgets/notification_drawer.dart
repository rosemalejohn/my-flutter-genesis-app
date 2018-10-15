import 'package:flutter/material.dart';

class NotificationDrawer extends StatelessWidget {

  NotificationDrawer();

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              border: Border(bottom: BorderSide(style: BorderStyle.solid, color: Color(0xffe4e4e4))),
            ),
            child: AppBar(
              title: Text('Notifications'),
              actions: <Widget>[
                IconButton(
                  icon: Icon(Icons.done_all),
                  onPressed: () {
                    Scaffold.of(context).openEndDrawer();
                  },
                )
              ],
              automaticallyImplyLeading: false,
              backgroundColor: Colors.white,
            )
          ),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(0.0),
              shrinkWrap: true,
              children: <Widget>[
                SizedBox(height: 10.0),
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
                Divider(),
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
                Divider(),
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
                Divider(),
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
                Divider(),
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
                Divider(),
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
                Divider(),
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
                Divider(),
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
                Divider(),
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
                Divider(),
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
                Divider(),
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
                Divider(),
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
                Divider(),
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
                Divider(),
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
            ),
          ),
        ],
      )
    );
  }
}