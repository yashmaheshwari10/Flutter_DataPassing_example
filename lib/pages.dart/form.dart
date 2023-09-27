import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages.dart/home.dart';

class FormPage extends StatefulWidget {
  const FormPage({super.key});

  @override
  State<FormPage> createState() => FormPageState();
}

class FormPageState extends State<FormPage> {
  final _namecontroller = TextEditingController();
  final _agecontroller = TextEditingController();
  final _yearcontroller = TextEditingController();
  final _branchcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(children: [
        AppBar(
          title: Text('Fill form'),
          centerTitle: true,
        ),
        Center(),
        SizedBox(
          height: 30,
        ),
        Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                Center(),
                TextFormField(
                  controller: _namecontroller,
                  decoration: InputDecoration(
                      hintText: 'Name',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: _agecontroller,
                  decoration: InputDecoration(
                      hintText: 'Age',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: _yearcontroller,
                  decoration: InputDecoration(
                      hintText: 'Year',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: _branchcontroller,
                  decoration: InputDecoration(
                      hintText: 'Branch',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                ),
                SizedBox(
                  height: 40,
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HomePage(
                                  Name: _namecontroller.text,
                                  age: _agecontroller.text,
                                  branch: _branchcontroller.text,
                                  year: _yearcontroller.text)));
                    },
                    child: Text('Submit'))
              ],
            ))
      ]),
    );
  }
}
