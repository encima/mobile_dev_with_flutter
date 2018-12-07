import 'package:flutter/material.dart';
import 'dart:math';

import 'member_model.dart';

void main() {
  runApp(new MembersApp());
}



class MembersApp extends StatelessWidget {
	
	final String _title = 'Women++';

	Widget build(context) {
		// Pass the text down to another widget
		return new MaterialApp(
      title: _title,
      theme: ThemeData.light(),
      home: BasicHomePage(title: _title)
		);
	}
}

class BasicHomePage extends StatefulWidget {
  final String title;
  BasicHomePage({Key key, this.title}) : super(key: key);

  @override
  BasicHomePageState createState() => BasicHomePageState();
}

class BasicHomePageState extends State<BasicHomePage> {
  
    final List names = []
      ..add(Member('Patrice', 'Livin life and takin name', 'https://instagram.com/i_hate_instagram', []));
    String currentName = '';
    final rng = new Random();
    
    @override
    void initState() {
      super.initState();
    }

    Widget build(context) {
      return Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('We are gonna add some peeps!'),
              MemberInfoCard(member: names[0])
            ]
          )
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              currentName = names[rng.nextInt(names.length - 1)];              
            });
          },
          tooltip: 'New Name',
          child: Icon(Icons.new_releases)
        )
      );
      
    }

}

class MemberInfoCard extends StatefulWidget {
  final Member member;
  
 
  MemberInfoCard({Key key, this.member}) : super(key: key);

  @override
  MemberInfoState createState() => MemberInfoState();
}

class MemberInfoState extends State<MemberInfoCard> {

  @override
  void initState() {
    super.initState();
  }

  
  Widget build(context) {
    // We use the widget variable to access the parent widget that owns the state
    return Text(widget.member.name);
  }
}