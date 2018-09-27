import 'package:flutter/material.dart';

const List reviews = [

];

final Container reviewTabContent = Container(
  padding: const EdgeInsets.all(10.0),
  child: ListView(
    children: <Widget>[
      ReviewCard()
    ],
  ),
);

class ReviewCard extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: <Widget>[
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                'https://instagram.fmnl7-1.fna.fbcdn.net/vp/40d89e25dd73e33fe1fa1310752dd7a4/5C3D1034/t51.2885-19/s150x150/41345116_756398848036768_6670657129260515328_n.jpg',
              ),
            ),
            title: Text('John Delaney'),
            subtitle: Text('Marketing Director')
          ),
          ButtonTheme.bar(
            child: ButtonBar(
              children: <Widget>[
                FlatButton(
                  child: Text('Review'),
                  onPressed: () {

                  }
                )
              ],
            )
          )
        ],
      )
    );
  }
}