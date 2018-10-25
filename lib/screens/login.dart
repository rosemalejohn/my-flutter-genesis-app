import 'package:flutter/material.dart';
import 'package:performancewave/widgets/button.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: <Widget>[
            Container(
              height: 300.0,
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  alignment: Alignment.center,
                  image: NetworkImage('https://peoplewave.co/wp-content/uploads/2017/11/Product-header2.png'),
                )
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: 50.0,),
                  Text('Welcome back!', style: TextStyle(color: Colors.white, fontSize: 22.0, fontWeight: FontWeight.w500)),
                  SizedBox(height: 50.0),
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Column(
                        children: <Widget>[
                          TextFormField(
                            decoration: InputDecoration(
                              labelText: 'Work email'
                            ),
                          ),
                          SizedBox(height: 20.0,),
                          TextFormField(
                            decoration: InputDecoration(
                              labelText: 'Password'
                            ),
                          ),
                          SizedBox(height: 20.0,),
                          Row(
                            children: <Widget>[
                              Expanded(
                                child: WaveButton(
                                  text: 'Login',
                                  onPressed: () {
                                    Navigator.pushNamed(context, '/');
                                  },
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 20.0),
                          Text('Forgot password?', style: TextStyle(fontWeight: FontWeight.w500), textAlign: TextAlign.center,)
                        ],
                      ),
                    ),
                  ),
                  Expanded(child: SizedBox(),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('Don\'t have an account?'),
                      SizedBox(width: 3.0,),
                      Text('SIGN UP', style: TextStyle(fontWeight: FontWeight.w500)),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}