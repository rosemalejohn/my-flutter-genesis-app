import 'package:flutter/material.dart';
import 'package:performancewave/models/team.dart';
import 'package:performancewave/models/user.dart';
import 'package:performancewave/screens/profile/contact.dart';
import 'package:performancewave/screens/profile/work.dart';
import 'package:performancewave/store/app.dart';
import 'package:performancewave/widgets/avatar.dart';
import 'package:scoped_model/scoped_model.dart';

class Profile extends StatefulWidget {

  Profile();

  @override
  ProfileState createState() => ProfileState();
}

class ProfileState extends State<Profile> {

  ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
  }

  @override
  Widget build(BuildContext context) {
    return ScopedModelDescendant<AppModel>(
      builder: (context, child, model) {
        User _authProfile = model.authProfile;
        Team _company = model.company;
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
                    pinned: true,
                    title: _ProfileTitle(scrollController: _scrollController,),
                    actions: <Widget>[
                      PopupMenuButton(
                        icon: Icon(Icons.more_vert),
                        itemBuilder: (BuildContext context) {
                          return [
                            PopupMenuItem(
                              child: FlatButton(
                                child: Text('Change password'),
                                onPressed: () {
                                  Navigator.pushNamed(context, '/change-password');
                                },
                              )
                            ),
                            PopupMenuItem(
                              child: FlatButton(
                                child: Text('Edit profile'),
                                onPressed: () {
                                  Navigator.pushNamed(context, '/change-password');
                                },
                              )
                            )
                          ];
                        },
                      ),
                    ],
                    flexibleSpace: FlexibleSpaceBar(
                      background: Container(
                        decoration: BoxDecoration(
                          color: Color(0xff262626),
                          image: DecorationImage(
                            image: AssetImage('assets/images/wave.png'),
                            // fit: BoxFit.cover,
                          )
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            WaveAvatar(width: 80.0, height: 80.0, url: _authProfile.photoUrl),
                            SizedBox(height: 10.0),
                            Text(_authProfile.fullName, style: TextStyle(fontSize: 20.0, color: Colors.white)),
                            Text(
                              '${_authProfile.title} @ ${_company.name}',
                              style: TextStyle(fontSize: 16.0, color: Colors.white)
                            ),
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
                          Tab(text: 'WORK'),
                          Tab(text: 'CONTACTS'),
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
    return Container(
      color: Colors.white,
      child: _tabBar,
    );
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return false;
  }
}

class _ProfileTitle extends StatefulWidget {

  final ScrollController scrollController;

  _ProfileTitle({ this.scrollController });

  @override
  _ProfileTitleState createState() {
    return new _ProfileTitleState();
  }
}

class _ProfileTitleState extends State<_ProfileTitle> {

  bool _showTitle = false;

  @override
  void initState() {
    super.initState();
    widget.scrollController.addListener(_handleScrollListener);
  }

  void _handleScrollListener() {
    if (widget.scrollController.offset > 150 && !_showTitle) {
      setState(() {
        _showTitle = true;
      });
    } else if(_showTitle && widget.scrollController.offset < 150) {
      setState(() {
        _showTitle = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return _showTitle ? Text('Damien Cummings', style: TextStyle(color: Colors.white)) : Container();
  }
}