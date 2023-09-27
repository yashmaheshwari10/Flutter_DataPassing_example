import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final String Name;
  final String age;
  final String branch;
  final String year;

  HomePage({
    required this.Name,
    required this.age,
    required this.branch,
    required this.year,
  });
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          Center(),
          SizedBox(
            height: 40,
          ),
          Icon(
            Icons.supervised_user_circle,
            size: 70,
          ),
          SizedBox(
            height: 30,
          ),
          Text('Name: $Name'),
          SizedBox(
            height: 20,
          ),
          Text('Age: $age'),
          SizedBox(
            height: 20,
          ),
          Text('Year: $year'),
          SizedBox(
            height: 20,
          ),
          Text('Branch: $branch'),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
