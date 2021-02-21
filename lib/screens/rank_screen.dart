import 'package:flutter/material.dart';
import "package:collection/collection.dart";
import 'package:json_table/json_table.dart';
import 'dart:convert';

import 'package:cf_pursuit/utils/user_data.dart';

class RankScreen extends StatelessWidget {
  static const routeName = '/rankScreen';
  //var rankinfo = [];
  Map newMapp = {};
  List rankingss = [];
  //List contst = ['1478', '1486'];

//  final ab = UserData().getUserRankData('valiant_vidit', '1456');
  //#########################

  Future<dynamic> getRanks(List<String> userName) async {
    UserData.rankinfo.clear();

    UserData.getPreContestData();
    for (var i in userName) {
      print(i.toString());

      if (i == userName[userName.length - 1])
        return await UserData.getUserRankData(i, []);
      else
        await UserData.getUserRankData(i, []);
    }
    // var rr = UserData.rankinfo;
    // print("sdf3333443333333");
    // newMapp = groupBy(rr, (obj) => obj['handle']).map((k, v) => MapEntry(
    //     k,
    //     v.map((item) {
    //       item.remove('handle');
    //       return item;
    //     }).toList()));
    //   return
  }

  var data = [
    {
      'handle': 'valiant_vidit',
      'contestId': '123',
      'rank': '1',
    },
    // {
    //   'handle': 'vikrant3302',
    //   'contestId': ['1361', '1362', '1363'],
    // }
    {
      'handle': 'vikrant3302',
      'contestId': '123',
      'rank': '2',
    }
  ];
  @override
  Widget build(BuildContext context) {
    //  var newMapp = groupBy(UserData().rankinfo, (obj) => obj['handle']).map(
    //   (k, v) => MapEntry(k, v.map((item) { item.remove('handle'); return item;}).toList()));
    //  future: UserData.getUserRatingData('valiant_vidit', []);
    //  rankinfo = UserData.rankinfo;

    print("######");
    var pk = groupBy(data, (obj) => obj['contestId']).map((k, v) => MapEntry(
        k,
        v.map((item) {
          item.remove('contestId');
          return item;
        }).toList()));
    print("hellllllllllllooooooooo maoooonikkkkkkkkk");
    print(pk);
    // rankinfo.clear();
    // print(UserData.rankinfo);
    return Scaffold(
      appBar: AppBar(
        title: Text('abc'),
      ),
      body: FutureBuilder(
        future: getRanks(['valiant_vidit', 'vikrant3302']),
        builder: (context, rankinf) {
          //  rankinfo = UserData.rankinfo ;
          if (rankinf.hasData) {
            print("a12222222222");
            var rr = UserData.rankinfo;

            newMapp =
                groupBy(rr, (obj) => obj['handle']).map((k, v) => MapEntry(
                    k,
                    v.map((item) {
                      item.remove('handle');
                      return item;
                    }).toList()));
            //    rankinfo = UserData.rankinfo;
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
            //      List contst = ['1478', '1486'];
            //this should be called.
            print("ghett");
            //////////////////
            for (var cnt in UserData.contst) {
              //   print('id==>> '+cnt.toString());
              newMapp.forEach((handle, value) {
                value.forEach((element) {
                  // ignore: unrelated_type_equality_checks
                  if (element['contestId'].toString() ==
                      cnt) //here 1478 replaced by contestarray!!
                    rankingss.add({
                      'handle': handle,
                      'contestId': cnt.toString(),
                      'rank': element['rank'].toString()
                    });
                  //    print(handle.toString()+"ams "+element['contestId'].toString());
                });
              });
            }
            //final printing of things.
            print("object " + rankingss.length.toString());

            //here in rankings--> username, contestId, name
            for (var ele in rankingss) {
              print(ele.toString());
            }
            //just take care here that finally all things in a newmapk are there for multiple users.!!
////...................................\\\\\\
            //222@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
            // UserData.rankinfo.clear();

            // var newMapps = groupBy(rankingss, (obj) => obj['handle'])
            //     .map((k, v) => MapEntry(
            //         k,
            //         v.map((item) {
            //           item.remove('handle');
            //           return item;
            //         }).toList()));
            // print(newMapps['valiant_vidit']);
            var newMapps = rankingss;
            /////@@@@@@@@@///@@@@@@@///@@@@@@@@
            // return new Column(
            //   children: [
            //     for (var i in newMapp.entries)
            //       Row(
            //         // scrollDirection: Axis.horizontal,
            //         children: [
            //           Text(i.key),
            //           //   for (var j in i.value) //for rght of handles
            //           //  //   j.forEach((key, value) {
            //           //       RaisedButton(
            //           //         onPressed: null,
            //           //         child: Text(key.toString() + "kkk"),
            //           //       );
            //           //     })

            //           //   j.forEach((k, v) {
            //           //     RaisedButton(
            //           //       onPressed: null,
            //           //       child: Text('heyyy$v'),
            //           //     );
            //           //   }),
            //         ],
            //       ),
            //     //   Text('heyy beauty!!!'),

            //     //  ),
            //   ],
            // );
            ////////////////////////////////////
            return ListView.builder(
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 32, bottom: 32, left: 16, right: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            InkWell(
                              onTap: () {
                                // Navigator.push(
                                //     context,
                                //     MaterialPageRoute(
                                //         builder: (_) => Welcome()));
                              },
                              child: Text(
                                newMapps[index]['handle'],
                                //'Note Title',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 22),
                              ),
                            ),
                            Text(
                              'rank in contest with ID = ' +
                                  newMapps[index]['contestId'] +
                                  ' was  ' +
                                  newMapps[index]['rank'],
                              //'Note Text',
                              style: TextStyle(color: Colors.grey.shade600),
                            ),
                          ],
                        ),
                        //SizedBox(width: 20),
                        // Container(
                        //   height: 50,
                        //   width: 50,
                        //   child: Image.asset(newMapps[index]['img']),
                        // )
                      ],
                    ),
                  ),
                );
              },
              itemCount: newMapps == null ? 0 : newMapps.length,
            );
            //////////////////////////////////////
          }
          return CircularProgressIndicator.adaptive();
        },
      ),
    );
  }
}
