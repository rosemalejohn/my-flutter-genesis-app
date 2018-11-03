import 'package:flutter/material.dart';
import 'package:performancewave/models/user.dart';
import 'package:performancewave/store/review_setup.dart';
import 'package:performancewave/widgets/avatar.dart';
import 'package:performancewave/widgets/button.dart';
import 'package:performancewave/widgets/role_purpose.dart';
import 'package:scoped_model/scoped_model.dart';

class ReviewSetupView extends StatefulWidget {

  final int userId;

  ReviewSetupView({this.userId});

  @override
  ReviewSetupViewState createState() {
    return new ReviewSetupViewState();
  }
}

class ReviewSetupViewState extends State<ReviewSetupView> {

  ReviewSetupModel _model;

  @override
  void initState() {
    super.initState();
    _model = ReviewSetupModel();
    
  }

  @override
  Widget build(BuildContext context) {
    _model.getReviewSetup(widget.userId);

    return ScopedModel<ReviewSetupModel>(
      model: _model,
      child: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: ScopedModelDescendant<ReviewSetupModel>(
              builder: (BuildContext context, child, model) {
                if (model.setup == null) {
                  return Center(child: CircularProgressIndicator(),);
                } else {
                  final User employee = model.setup.reviewee;

                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      ListTile(
                        contentPadding: const EdgeInsets.all(0.0),
                        leading: WaveAvatar(
                          url: employee.photoUrl,
                          height: 60.0,
                          width: 60.0
                        ),
                        title: Text(
                          employee.fullName,
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.w500
                          )
                        ),
                        subtitle: Text(
                          employee.title,
                          style: TextStyle(
                            fontSize: 16.0
                          )
                        )
                      ),
                      Divider(),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Expanded(
                                  child: Text(
                                    'Review Period',
                                    style: TextStyle(fontSize: 16.0)
                                  )
                                ),
                                Expanded(
                                  child: Text(
                                    '${model.setup.month} ${model.setup.year}',
                                    style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500)
                                  )
                                )
                              ],
                            ),
                            SizedBox(height: 10.0),
                            Row(
                              children: <Widget>[
                                Expanded(
                                  child: Text(
                                    'Status',
                                    style: TextStyle(fontSize: 16.0)
                                  )
                                ),
                                Expanded(
                                  child: Text(
                                    model.setup.setupStatus,
                                    style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500, color: Color(0xff417505))
                                  )
                                )
                              ],
                            ),
                            SizedBox(height: 10.0),
                            Row(
                              children: <Widget>[
                                Expanded(
                                  child: Text(
                                    'Deadline',
                                    style: TextStyle(fontSize: 16.0)
                                  )
                                ),
                                Expanded(
                                  child: Text(
                                    model.setup.deadline,
                                    style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500)
                                  )
                                )
                              ],
                            ),
                            SizedBox(height: 10.0),
                            _buildManager(model.setup.teamLeader)
                          ],
                        ),
                      ),
                      Divider(),
                      SizedBox(height: 10.0,),
                      Text('REVIEW SETUP', style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500)),
                      SizedBox(height: 10.0,),
                      Text('Last updated ${model.setup.updatedAt}', style: TextStyle(fontSize: 16.0, color: Color(0xffaaaaaa))),
                      Divider(),
                      SizedBox(height: 10.0,),
                      WaveRolePurpose(purpose: model.setup.rolePurpose,),
                      Divider(),
                      SizedBox(height: 10.0,),
                      Text('HARD SKILLS', style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500)),
                      SizedBox(height: 10.0,),
                      // HARD SKILLS
                      Column(
                        children: model.setup.hardSkills.map((skill) {
                          return Column(
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Expanded(
                                    child: WaveAvatar(
                                      height: 70.0, 
                                      width: 70.0, 
                                      url: '', 
                                      backgroundColor: Theme.of(context).primaryColor,
                                    )
                                  ),
                                  Expanded(
                                    child: Text(skill.title, style: TextStyle(fontSize: 16.0))
                                  ),
                                ],
                              ),
                              SizedBox(height: 10.0,),
                            ],
                          );
                        }).toList(),
                      ),
                      Divider(),
                      SizedBox(height: 10.0,),
                      Text('YOUR REVIEWERS', style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500)),
                      SizedBox(height: 10.0,),
                      Divider(),
                      SizedBox(height: 10.0),
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: WaveButton(
                              text: 'Approve',
                              onPressed: () {
                                
                              }
                            ),
                          ),
                          SizedBox(width: 10.0),
                          Expanded(
                            child: WaveButton(
                              text: 'Reject',
                              color: Theme.of(context).errorColor,
                              onPressed: () {
                                
                              }
                            ),
                          ),
                        ],
                      )
                    ],
                  );
                }
              },
            ),
          )
        ],
      ),
    );
  }

  Widget _buildManager(User manager) {
    if (manager == null) {
      return Container();
    }
    return Row(
      children: <Widget>[
        Expanded(
          child: Text(
            'Manager',
            style: TextStyle(fontSize: 16.0)
          )
        ),
        Expanded(
          child: Text(
            manager.fullName,
            style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500)
          )
        )
      ],
    );
  }
}