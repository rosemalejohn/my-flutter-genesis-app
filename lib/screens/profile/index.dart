import 'package:flutter/material.dart';
import 'package:performancewave/screens/profile/contact.dart';
import 'package:performancewave/screens/profile/work.dart';
import 'package:performancewave/widgets/avatar.dart';

class Profile extends StatefulWidget {

  Profile();

  @override
  ProfileState createState() => ProfileState();
}

class ProfileState extends State<Profile> {

  ScrollController _scrollController;

  bool _showTitle = false;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _scrollController.addListener(_handleScrollListener);
  }

  void _handleScrollListener() {
    if (_scrollController.offset > 150) {
      setState(() {
        _showTitle = true;
      });
    } else {
      setState(() {
        _showTitle = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 2,
        child: NestedScrollView(
          controller: _scrollController,
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                centerTitle: true,
                expandedHeight: 200.0,
                floating: false,
                pinned: true,
                flexibleSpace: FlexibleSpaceBar(
                  centerTitle: true,
                  title: _showTitle ? Text('Damien Cummings', style: TextStyle(color: Colors.white)) : null,
                  background: Container(
                    color: Color(0xff262626),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        WaveAvatar(width: 80.0, height: 80.0, url: 'https://avatars0.githubusercontent.com/u/7259036?s=460&v=4'),
                        SizedBox(height: 10.0),
                        Text('Damien Cummings', style: TextStyle(fontSize: 20.0, color: Colors.white)),
                        Text('Chief Executive Officer @ Peoplewave', style: TextStyle(fontSize: 16.0, color: Colors.white)),
                      ],
                    ),
                  ),
                ),
              ),
              SliverPersistentHeader(
                delegate: _SliverAppBarDelegate(
                  TabBar(
                    indicatorColor: Theme.of(context).primaryColor,
                    labelColor: Theme.of(context).primaryColor,
                    unselectedLabelColor: Colors.grey,
                    tabs: [
                      Tab(text: 'Work'),
                      Tab(text: 'Contacts'),
                    ],
                  ),
                ),
                pinned: true,
              ),
            ];
          },
          body: TabBarView(
            children: <Widget>[
              ProfileWork(),
              ProfileContact(),
            ],
          ),
        ),
      ),
    );  
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  _SliverAppBarDelegate(this._tabBar);

  final TabBar _tabBar;

  @override
  double get minExtent => _tabBar.preferredSize.height;
  @override
  double get maxExtent => _tabBar.preferredSize.height;

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return new Material(
      color: Colors.white,
      child: _tabBar,
    );
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return false;
  }
}