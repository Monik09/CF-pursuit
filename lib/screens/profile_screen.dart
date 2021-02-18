import 'package:cf_pursuit/screens/landing_screen.dart';
import 'package:cf_pursuit/utils/user_data.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProfileScreen extends StatefulWidget {
  static const routeName = '/profileScreen';
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  UserData user = UserData();
  Future<dynamic> userData;
 
  @override
  void initState() {
    userData = user.getUserData();
    // WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      
    // });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
  //  final data= Provider.of<LandingScreenMobile>(context, listen: false);
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: LandingScreenMobile()),
      ],
      child: Consumer<LandingScreenMobile>(
          builder: (context, data, _) => Scaffold(
                body: FutureBuilder(
                  future: userData,
                  builder: (context, userData) => Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        child: Text("name->" + LandingScreenMobile.name),
                      ),
                      Container(
                        child: Text(
                          userData.toString(),
                        ),
                      ),
                    ],
                  ),
                ),
              )),
    );
  }
}
