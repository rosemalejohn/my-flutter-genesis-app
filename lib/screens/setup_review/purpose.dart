import 'package:flutter/material.dart';
import 'package:performancewave/widgets/button.dart';
import 'package:performancewave/widgets/role_purpose.dart';

class Purpose extends StatelessWidget {
  
  void _showRolePurposeDialog(context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return SimpleDialog(
          title: const Text('EDIT ROLE PURPOSE', textAlign: TextAlign.center,),
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                children: <Widget>[
                  SizedBox(height: 10.0,),
                  TextField(
                    autocorrect: true,
                    maxLines: 3,
                    decoration: InputDecoration(
                      hintText: 'Enter role purpose',
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Theme.of(context).primaryColor,
                          width: 3.0
                        )
                      )
                    ),
                    onChanged: (comment) {
                      print(comment);
                    },
                  ),
                  SizedBox(height: 20.0,),
                  Row(
                    children: <Widget>[
                      Text('1 character left'),
                      Expanded(child: Container(),),
                      WaveButton(
                        text: 'DONE',
                        onPressed: () {

                        }
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        );
      }
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Damien, your current Role Purpose is as follows:',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16.0)
              ),
              SizedBox(height: 20.0),
              WaveRolePurpose(),
              SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.edit, color: Theme.of(context).primaryColor,),
                  GestureDetector(
                    onTap: () {
                      _showRolePurposeDialog(context);
                    },
                    child: Text(
                      'edit my Role Purpose',
                      style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontWeight: FontWeight.w500
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              )
            ],
          )
        )
      ],
    );
  }
}