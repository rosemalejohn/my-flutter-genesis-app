import 'package:flutter/material.dart';
import 'package:performancewave/screens/dashboard/index.dart';
import 'package:performancewave/store/app.dart';
import 'package:scoped_model/scoped_model.dart';

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
    return ScopedModelDescendant<AppModel>(
      builder: (BuildContext context, child, model) {
        return Drawer(
          child: Column(
            children: <Widget>[
              Container(
                color: Theme.of(context).primaryColor,
                child: Column(
                  children: <Widget>[
                    SizedBox(height: 25.0),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                          model.authProfile.photoUrl
                        ),
                      ),
                      title: Text(model.authProfile.fullName, style: TextStyle(color: Colors.white),),
                      subtitle: Text(model.authProfile.title, style: TextStyle(color: Colors.white))
                    ),
                  ],
                )
              ),
              Expanded(
                child: ListView(
                  children: <Widget>[
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
                        Navigator.pushNamed(context, '/setup-review/start');
                      }
                    ),
                    ListTile(
                      leading: Icon(Icons.assignment_turned_in),
                      title: Text('Due review list'),
                      onTap: () {
                        Navigator.pushNamed(context, '/');
                      }
                    ),
                    ListTile(
                        leading: Icon(Icons.format_list_numbered),
                        title: Text('View review setup'),
                        onTap: () {
                          Navigator.pushNamed(context, '/review-setup');
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
                        Navigator.push(context, MaterialPageRoute(
                          builder: (BuildContext context) => Dashboard(tabIndex: 1)
                        ));
                      }
                    ),
                    ListTile(
                      leading: Icon(Icons.timeline),
                      title: Text('Team stats'),
                      onTap: () {
                        Navigator.pushNamed(context, '/team-stats');
                      }
                    ),
                    ListTile(
                      leading: Icon(Icons.format_list_numbered),
                      title: Text('Ranking'),
                      onTap: () {
                        Navigator.pushNamed(context, '/rankings');
                      }
                    ),
                    Divider(),
                    ListTile(
                      leading: Icon(Icons.lock_open),
                      title: Text('Change Password'),
                      onTap: () {
                        Navigator.pushNamed(context, '/change-password');
                      }
                    ),
                  ],
                ),
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.settings_power),
                title: Text('Log out of Performance Wave', style: TextStyle(color: Colors.red)),
                onTap: () {
                  _confirmLogout(context);
                  Navigator.pushNamed(context, '/login');
                }
              ),
            ]
          )
        );
      }
    );
  }
}