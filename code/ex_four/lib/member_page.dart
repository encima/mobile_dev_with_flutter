import 'package:flutter/material.dart';
import 'dart:math';

import 'member_model.dart';

class MemberPage extends StatefulWidget {
  final Member m;

  MemberPage(this.m);

  @override
  MemberState createState() => MemberState();
}

class MemberState extends State<MemberPage> {
  Widget build(context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: Text('Meet ${widget.m.name}'),
      ),
    );
  }
}
