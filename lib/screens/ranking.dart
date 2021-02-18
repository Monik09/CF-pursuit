import 'package:flutter/material.dart';

class Ranking extends StatelessWidget {
  final  data = [
    {
      'name':[
        'c1 rank','c2 rank','c3 rank',
      ],

    }

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Column(
        children: [
          Row(
            children: [
            FlatButton(onPressed: null,
           child: Text('valiant_vidit')
            ),
            ],
          ),
            Text('heyy beauty!!!'), 
        
         //  ),
        ],
      ),
    );
  }
}
