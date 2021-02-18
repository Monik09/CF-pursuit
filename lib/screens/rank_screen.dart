import 'package:flutter/material.dart';
import 'dart:convert';

import 'package:cf_pursuit/utils/user_data.dart';

class RankScreen extends StatelessWidget {
  static const routeName = '/rankScreen';
  final ab = UserData().getUserRankData('valiant_vidit', '1456');
  var data = [
    {
      'handle':'valiant_vidit',
      'contestId':['1360','1361','1362','1363',],

    },
    {
      'handle':'vikrant3302',
      'contestId':['1361','1362','1363'],
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Column(
        children: [
             for(var i in data)
          Row(
            children: [
              Text(i['handle']),
              for(var j in i['contestId'])

              RaisedButton(
                onPressed: null,
                child: Center(
                  child: Text(j),
                ),

              ),

            ],
          ),
       //   Text('heyy beauty!!!'),

          //  ),
        ],
      ),
    );
  }
}
