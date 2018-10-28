import 'package:flutter/material.dart';
import 'package:performancewave/models/notification.dart';
import 'package:performancewave/store/notification.dart';
import 'package:scoped_model/scoped_model.dart';

class NotificationDrawer extends StatelessWidget {

  NotificationDrawer();

  Widget _buildOtherNotifications(NotificationModel model) {
    if (model.others == null) {
      return Container();
    } else {
      return Column(
        children: <Widget>[
          _NotificationBoxTitle(title: 'past days',),
          Column(
            children: model.others.toList().map((notification) => NotificationBox(notification: notification,)).toList()
          ),
        ],
      );
    }
  }

  Widget _buildYesterdayNotifications(NotificationModel model) {
    if (model.yesterday == null) {
      return Container();
    } else {
      return Column(
        children: <Widget>[
          _NotificationBoxTitle(title: 'yesterday',),
          Column(
            children: model.others.toList().map((notification) => NotificationBox(notification: notification,)).toList()
          ),
        ],
      );
    }
  }

  Widget _buildTodayNotifications(NotificationModel model) {
    if (model.today == null) {
      return Container();
    } else {
      return Column(
        children: <Widget>[
          _NotificationBoxTitle(title: 'today',),
          Column(
            children: model.others.toList().map((notification) => NotificationBox(notification: notification,)).toList()
          ),
        ],
      );
    }
  }

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
                      color: Colors.black,
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
                      _buildTodayNotifications(model),
                      _buildYesterdayNotifications(model),
                      _buildOtherNotifications(model),
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
            child: notification.read ? Icon(Icons.notifications_off) : Icon(Icons.notifications_active),
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

class _NotificationBoxTitle extends StatelessWidget {

  final String title;

  _NotificationBoxTitle({this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.0,
      color: Color(0xffe3e3e3),
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        children: <Widget>[
          Text(title, style: TextStyle(fontWeight: FontWeight.w500))
        ],
      ),
    );
  }
}