import 'package:flutter/material.dart';

import 'member_model.dart';

class MemberAddPage extends StatefulWidget {
  @override
  MemberAddState createState() => MemberAddState();
}

class MemberAddState extends State<MemberAddPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController bioController = TextEditingController();
  TextEditingController siteController = TextEditingController();

  @override
  Widget build(context) {
    return Scaffold(
        appBar: AppBar(title: Text('Add a new Member')),
        body: Container(
            child: Column(children: [
          TextField(decoration: InputDecoration(labelText: 'Member Name')),
          TextField(decoration: InputDecoration(labelText: 'Member Bio')),
          TextField(decoration: InputDecoration(labelText: 'Member Website'))
        ])));
  }

  void addMember() {
    //TODO check there have been details entered
    var m = Member(nameController.text, bioController.text, siteController.text, []);
    Navigator.of(context).pop(m);
  }
}
