import 'package:flutter/material.dart';
import 'package:performancewave/models/notification.dart';
import 'package:performancewave/store/notification.dart';
import 'package:scoped_model/scoped_model.dart';

class NotificationDrawer extends StatelessWidget {

  NotificationDrawer();

  @override
  Widget build(BuildContext context) {
    NotificationModel model = NotificationModel();
    model.getNotification();

    return ScopedModel<NotificationModel>(
      model: model,
      child: Drawer(
        child: ScopedModelDescendant<NotificationModel>(
          builder: (BuildContext context, child, model) {
            return Column(
              children: <Widget>[
                AppBar(
                  title: Text('Notifications', style: TextStyle(color: Colors.black)),
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
                ),
                Expanded(
                  child: ListView(
                    padding: const EdgeInsets.all(0.0),
                    shrinkWrap: true,
                    children: <Widget>[
                      SizedBox(height: 10.0),
                      Column(
                        children: model.others.toList().map((notification) => NotificationBox(notification: notification,)).toList()
                      )
                    ]
                  ),
                ),
              ],
            );
          },
        )
      ),
    );
  }
}

class NotificationBox extends StatelessWidget {

  final NotificationInfo notification;

  NotificationBox({
    this.notification
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.black12,
            child: Text('RJ', style: TextStyle(color: Colors.white)),
          ),
          title: Text(notification.body),
          subtitle: Text(notification.createdAgo),
          onTap: () {
            Navigator.pushNamed(context, '/');
          }
        ),
        Divider(),
      ],
    );
  }
}