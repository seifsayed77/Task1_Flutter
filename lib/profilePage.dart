import 'package:flutter/material.dart';
import 'Status.dart';

class ProfilePage extends StatelessWidget {
  final String name;
  final int score;
  final Status status;
  const ProfilePage(
      {super.key,
      required this.name,
      required this.score,
      required this.status});
  @override
  Widget build(BuildContext context) {
    Color appBarColor;
    Color containerColor;
    switch (status) {
      case Status.Active:
        appBarColor = Colors.green;
        containerColor = Colors.green;
        break;
      case Status.Pending:
        appBarColor = Colors.orange;
        containerColor = Colors.orange;
        break;
      case Status.Blocked:
        appBarColor = Colors.red;
        containerColor = Colors.red;
        break;
    }
    return Scaffold(
        appBar: AppBar(
          title: Text(name),
          backgroundColor: appBarColor,
        ),
        body: Center(
          child: Container(
            width: 250,
            height: 250,
            color: containerColor,
            child: Center(
              child: Text(
                'Score : $score',
                style: TextStyle(fontSize: 24),
              ),
            ),
          ),
        ));
  }
}

class MyApp extends StatelessWidget {
  const MyApp();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProfilePage(name: 'seif sayed', score: 99, status: Status.Active),
    );
  }
}
