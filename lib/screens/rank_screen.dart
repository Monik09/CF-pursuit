import 'package:flutter/material.dart';
import "package:collection/collection.dart";
import 'dart:convert';

import 'package:cf_pursuit/utils/user_data.dart';

class RankScreen extends StatelessWidget {
  static const routeName = '/rankScreen';
  var rankinfo = [];
//  final ab = UserData().getUserRankData('valiant_vidit', '1456');

  //#########################

  var data = [
    {
      'handle': 'valiant_vidit',
      'contestId': [
        '1360',
        '1361',
        '1362',
      ],
    },
    {
      'handle': 'vikrant3302',
      'contestId': ['1361', '1362', '1363'],
    }
  ];
  @override
  Widget build(BuildContext context) {
    //  var newMapp = groupBy(UserData().rankinfo, (obj) => obj['handle']).map(
    //   (k, v) => MapEntry(k, v.map((item) { item.remove('handle'); return item;}).toList()));
    //  future: UserData.getUserRatingData('valiant_vidit', []);
    //  rankinfo = UserData.rankinfo;

    print("######");
    rankinfo.clear();
    // print(UserData.rankinfo);
    return Scaffold(
      appBar: AppBar(
        title: Text('abc'),
      ),
      body: FutureBuilder(
        future: UserData.getUserRatingData('valiant_vidit', []),
        builder: (context, rankinf) {
          //  rankinfo = UserData.rankinfo ;
          if (rankinf.hasData) {
            print("a12222222222");
            var rr = UserData.rankinfo;

            var newMapp =
                groupBy(rr, (obj) => obj['handle']).map((k, v) => MapEntry(
                    k,
                    v.map((item) {
                      item.remove('handle');
                      return item;
                    }).toList()));
            //  rankinfo = UserData.rankinfo;
            print(newMapp);

            //#####>>>>>>>>>>>>>>>>>>>>>>>!!!!!!!!!!!! final map just above
            /*
            {
              valiant_vidit: 
             [
             {contestId: 1473, rank: 9117}, {contestId: 1474, rank: 6339},                      
             {contestId: 1478, rank: 9134}, {contestId: 1476, rank: 2521}, 
             {contestId: 1481, rank: 2741}, {contestId: 1480, rank: 5225},
             {contestId: 1485, rank: 1577}, {contestId: 1487, rank: 2851}, 
             {contestId: 1490, rank: 1085}, {contestId: 1486, rank: 3771}
             ]

              valiant_vidit: 
             [
             {contestId: 1473, rank: 9117}, {contestId: 1474, rank: 6339},                      
             {contestId: 1478, rank: 9134}, {contestId: 1476, rank: 2521}, 
             {contestId: 1481, rank: 2741}, {contestId: 1480, rank: 5225},
             {contestId: 1485, rank: 1577}, {contestId: 1487, rank: 2851}, 
             {contestId: 1490, rank: 1085}, {contestId: 1486, rank: 3771}
             ]
             
             }
            */
            ///...............................................\\\\
            List rankingss = [];
            print("ghett");
            newMapp.forEach((handle, value) {
              value.forEach((element) {
                if (element['contestId'].toString() ==
                    '1478') //here 1478 replaced by contestarray!!
                  rankingss.add({handle,element['rank'].toString()});
                //    print(handle.toString()+"ams "+element['contestId'].toString());
              });
            });
            print("object " + rankingss.length.toString());
            for (var ele in rankingss) {
              print(ele.toString());

            }
            //just take care here that finally all things in a newmapk are there for multiple users.!!
////...................................\\\\\\
            //222@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
            // UserData.rankinfo.clear();
            return new Column(
              children: [
                for (var i in newMapp.entries)
                  Row(
                    // scrollDirection: Axis.horizontal,
                    children: [
                      Text(i.key),
                      //   for (var j in i.value) //for rght of handles
                      //  //   j.forEach((key, value) {
                      //       RaisedButton(
                      //         onPressed: null,
                      //         child: Text(key.toString() + "kkk"),
                      //       );
                      //     })

                      //   j.forEach((k, v) {
                      //     RaisedButton(
                      //       onPressed: null,
                      //       child: Text('heyyy$v'),
                      //     );
                      //   }),
                    ],
                  ),
                //   Text('heyy beauty!!!'),

                //  ),
              ],
            );
          }
          return CircularProgressIndicator.adaptive();
        },
      ),
    );
  }
}
