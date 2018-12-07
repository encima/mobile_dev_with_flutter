import 'package:flutter/material.dart';
import 'dart:math';

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
  
    final List names = ['Juarez', 'Mandy', 'Bart', 'Susie', 'Pippie', 'Gavin'];
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
              Text(currentName)
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