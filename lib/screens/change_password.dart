import 'package:flutter/material.dart';
import 'package:performancewave/widgets/button.dart';

class ChangePassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Change Password')
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: <Widget>[
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Old password'
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: Divider(),
                ),
                Text(
                  'Password has to be at least 8 characters long, and it must contain at least one uppercase letter, one lowercase letter, one digit and one special character ',
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'New password'
                  ),
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Re-enter password'
                  ),
                ),
                SizedBox(height: 20.0,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    WaveButton(
                      text: 'Update',
                      onPressed: () {

                      }
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
