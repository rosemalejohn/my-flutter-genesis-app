import 'package:flutter/material.dart';
import 'package:performancewave/layouts/singlepage.dart';
import 'package:performancewave/widgets/avatar.dart';
import 'package:performancewave/widgets/stat_filter.dart';

class Rankings extends StatelessWidget {

  Rankings();

  @override
  Widget build(BuildContext context) {
    return SinglePage(
      title: Text('Rankings'),
      body: ListView(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: <Widget>[
                WaveStatFilter(),
                Center(
                  child: Text('89.0%', style: TextStyle(fontSize: 70.0))
                ),
                Divider(),
                SizedBox(height: 10.0),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: _topRank.map((employee) => WaveTopRank(employee: employee)).toList(),
                ),
                SizedBox(height: 10.0),
                Divider(),
                Column(
                  children: _bottomRank.map((employee) => WaveRank(employee: employee,)).toList(),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class WaveTopRank extends StatelessWidget {

  final Employee employee;

  WaveTopRank({ this.employee });

  String _getCrownImage(int rank) {
    String _crownImage;

    switch (rank) {
      case 1:
        _crownImage = 'assets/images/gold-rank.png';
        break;
      case 2:
        _crownImage = 'assets/images/silver-rank.png';
        break;
      case 3:
        _crownImage = 'assets/images/bronze-rank.png';
        break;
    }

    return _crownImage;
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 30.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(_getCrownImage(employee.rank)),
                )
              ),
            ),
            SizedBox(height: 5.0),
            WaveAvatar(height: 90.0, width: 90.0, url: employee.avatar,),
            SizedBox(height: 30.0,),
            Text(
              employee.name, 
              style: TextStyle(fontSize: 18.0),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 10.0,),
            Text(
              employee.rating.toString() + '%',
              style: TextStyle(
                fontSize: 18.0,
                color: Theme.of(context).primaryColor
              ),
            ),
            SizedBox(height: 10.0),
            Row(
              children: <Widget>[
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Icon(Icons.person, color: Color(0xffA9A9A9),),
                      Text('8', style: TextStyle(color: Color(0xffA9A9A9), fontSize: 18.0))
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.grade, color: Theme.of(context).primaryColor),
                      Text('2', style: TextStyle(color: Theme.of(context).primaryColor, fontSize: 18.0))
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      )
    );
  }
}

class WaveRank extends StatelessWidget {

  final Employee employee;

  WaveRank({this.employee});

  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(width: 30.0, child: Text(employee.rank.toString(), style: TextStyle(fontSize: 18.0))),
            WaveAvatar(height: 70.0, width: 70.0, url: employee.avatar),
            SizedBox(width: 20.0,),
            Expanded(
              child: Text(
                employee.name,
                style: TextStyle(fontSize: 18.0)
              ),
            ),
            Expanded(
              child: Text(
                employee.rating.toString() + '%',
                style: TextStyle(fontSize: 18.0, color: Theme.of(context).primaryColor)
              ),
            ),
            Expanded(
              child: Row(
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: Row(
                      children: <Widget>[
                        Icon(Icons.person, color: Color(0xffA9A9A9),),
                        Text('8', style: TextStyle(color: Color(0xffA9A9A9), fontSize: 18.0))
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: <Widget>[
                        Icon(Icons.grade, color: Theme.of(context).primaryColor),
                        Text('2', style: TextStyle(color: Theme.of(context).primaryColor, fontSize: 18.0))
                      ],
                    ),
                  ),
                ],
              )
            )
          ],
        ),
        Divider()
      ],
    );
  }
}

class Employee {
  final String name;
  final String position;
  final String avatar;
  final String due;
  final double rating;
  final int rank;

  Employee({this.name, this.position, this.avatar, this.due, this.rating, this.rank});
}

List<Employee> _topRank = <Employee>[
  Employee(
    name: 'Rosemale-John II Villacorta',
    position: 'Marketing Director',
    avatar: 'https://cdn.filestackcontent.com/X94WAg2TG2jWtWpdkZar',
    rating: 91.6,
    rank: 1
  ),
  Employee(
    name: 'Yeng Wai Leong',
    position: 'Marketing Director',
    avatar: 'https://cdn.filestackcontent.com/41sbFkPSneEIDloibmSa',
    rating: 89.9,
    rank: 2
  ),
  Employee(
    name: 'Micky Lin',
    position: 'Marketing Director',
    avatar: 'https://cdn.filestackcontent.com/Mk4EoD8KTeGSKGLejtYB',
    rating: 89.8,
    rank: 3
  ),
];

List<Employee> _bottomRank = <Employee>[
  Employee(
    name: 'Francis Claide Magallen',
    position: 'Marketing Director',
    avatar: 'https://cdn.filestackcontent.com/VOPdTIEZRtCvw2tDB7yg',
    rating: 89.8,
    rank: 4
  ),
  Employee(
    name: 'Damien Cummings',
    position: 'Marketing Director',
    avatar: 'https://cdn.filestackcontent.com/W3LcbAJ9QWe4MRupGNLe',
    rating: 89.3,
    rank: 5
  ),
  Employee(
    name: 'Kszyr Ver Cobrador',
    position: 'Marketing Director',
    avatar: 'https://cdn.filestackcontent.com/zd7iEvqTIC7uG0ux0fGW',
    rating: 88.8,
    rank: 6
  ),
  Employee(
    name: 'Aurelia Jessica',
    position: 'Marketing Director',
    avatar: 'https://cdn.filestackcontent.com/zd7iEvqTIC7uG0ux0fGW',
    rating: 89.8,
    rank: 4
  ),
  Employee(
    name: 'Arthur Yap',
    position: 'Marketing Director',
    avatar: 'https://cdn.filestackcontent.com/i8PzI80PSg2RMwPVjMpg',
    rating: 89.3,
    rank: 5
  ),
  Employee(
    name: 'Norbert Feria',
    position: 'Marketing Director',
    avatar: 'https://cdn.filestackcontent.com/uMxjSREQvaml1PnjxY1q',
    rating: 88.8,
    rank: 6
  ),
];