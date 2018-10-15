import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {

  MainDrawer();

  Future<Null> _confirmLogout(context) async {
    return showDialog<Null>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Confirm logout?'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text('This will log you out into the Performance wave app.')
              ],
            )
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('Cancel'),
              onPressed: () {
                Navigator.of(context).pop();
              }
            ),
            FlatButton(
              child: Text('Logout', style: TextStyle(color: Colors.red),),
              onPressed: () {
                Navigator.of(context).pop();
              }
            )
          ]
        );
      }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: const EdgeInsets.all(0.0),
        children: <Widget>[
          Container(
            color: Theme.of(context).primaryColor,
            child: Column(
              children: <Widget>[
                SizedBox(height: 25.0),
                ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                      'https://instagram.fmnl7-1.fna.fbcdn.net/vp/40d89e25dd73e33fe1fa1310752dd7a4/5C3D1034/t51.2885-19/s150x150/41345116_756398848036768_6670657129260515328_n.jpg',
                    ),
                  ),
                  title: Text('Rosemale-John II Villacorta'),
                  subtitle: Text('Web Developer')
                ),
              ],
            )
          ),
          ListTile(
            leading: Icon(Icons.dashboard),
            title: Text('Dashboard'),
            onTap: () {
              Navigator.pushNamed(context, '/');
            }
          ),
          ListTile(
            leading: Icon(Icons.face),
            title: Text('Profile'),
            onTap: () {
              Navigator.pushNamed(context, '/profile');
            }
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text('PERFORMANCE REVIEW', style: TextStyle(
              fontWeight: FontWeight.bold
            ))
          ),
          ListTile(
            leading: Icon(Icons.edit),
            title: Text('Set up your next review'),
            onTap: () {
              Navigator.pushNamed(context, '/setup-review');
            }
          ),
          ListTile(
            leading: Icon(Icons.assignment_turned_in),
            title: Text('Due review list'),
            onTap: () {

            }
          ),
          ListTile(
              leading: Icon(Icons.format_list_numbered),
              title: Text('View review setup'),
              onTap: () {

              }
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text('YOUR PEOPLEWAVE', style: TextStyle(
              fontWeight: FontWeight.bold
            ))
          ),
          ListTile(
            leading: Icon(Icons.trending_up),
            title: Text('Your stats'),
            onTap: () {

            }
          ),
          ListTile(
            leading: Icon(Icons.timeline),
            title: Text('Team stats'),
            onTap: () {

            }
          ),
          ListTile(
            leading: Icon(Icons.format_list_numbered),
            title: Text('Ranking'),
            onTap: () {

            }
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.lock_open),
            title: Text('Change Password'),
            onTap: () {

            }
          ),
          ListTile(
            leading: Icon(Icons.settings_power),
            title: Text('Log out of Performance Wave', style: TextStyle(color: Colors.red)),
            onTap: () {
              _confirmLogout(context);
            }
          ),
        ]
      )
    );
  }
}