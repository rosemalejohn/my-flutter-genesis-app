import 'package:flutter/material.dart';
import 'package:performancewave/models/notification.dart';
import 'package:performancewave/store/notification.dart';
import 'package:scoped_model/scoped_model.dart';

class NotificationDrawer extends StatefulWidget {

  NotificationDrawer();

  @override
  NotificationDrawerState createState() {
    return new NotificationDrawerState();
  }
}

class NotificationDrawerState extends State<NotificationDrawer> {

  NotificationModel _model;

  @override
  void initState() {
    super.initState();
    _model = NotificationModel();
    _model.getNotification();
  }

  Widget _buildOtherNotifications() {
    if (_model.others == null) {
      return Container();
    } else {
      return Column(
        children: <Widget>[
          _NotificationBoxTitle(title: 'past days',),
          Column(
            children: _model.others.toList().map((notification) => NotificationBox(notification: notification,)).toList()
          ),
        ],
      );
    }
  }

  Widget _buildYesterdayNotifications() {
    if (_model.yesterday == null) {
      return Container();
    } else {
      return Column(
        children: <Widget>[
          _NotificationBoxTitle(title: 'yesterday',),
          Column(
            children: _model.others.toList().map((notification) => NotificationBox(notification: notification,)).toList()
          ),
        ],
      );
    }
  }

  Widget _buildTodayNotifications() {
    if (_model.today == null) {
      return Container();
    } else {
      return Column(
        children: <Widget>[
          _NotificationBoxTitle(title: 'today',),
          Column(
            children: _model.others.toList().map((notification) => NotificationBox(notification: notification,)).toList()
          ),
        ],
      );
    }
  }

  @override
  Widget build(BuildContext context) {  
    return ScopedModel<NotificationModel>(
      model: _model,
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
                      _buildTodayNotifications(),
                      _buildYesterdayNotifications(),
                      _buildOtherNotifications(),
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