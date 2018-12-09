import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'dart:math';


import 'member_model.dart';
import 'member_page.dart';
import 'member_add.dart';

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
        home: BasicHomePage(title: _title));
  }
}

class BasicHomePage extends StatefulWidget {
  final String title;
  BasicHomePage({Key key, this.title}) : super(key: key);

  @override
  BasicHomePageState createState() => BasicHomePageState();
}

class BasicHomePageState extends State<BasicHomePage> {
  FlutterLocalNotificationsPlugin lnp;

  final List<Member> names = []
    ..add(Member('Patrice', 'Livin life and takin name',
        'https://instagram.com/i_hate_instagram', []))
    ..add(Member(
        'Gabby', 'Sup peeps', 'https://instagram.com/i_hate_instagram', []))
    ..add(Member('Malcom', 'Not Always in the Middle',
        'https://instagram.com/i_hate_instagram', []))
    ..add(Member('Emmenthal', 'No Cheesy Lines',
        'https://instagram.com/i_hate_instagram', []));
  String currentName = '';
  final rng = new Random();

  @override
  void initState() {
    super.initState();

    lnp = new FlutterLocalNotificationsPlugin();
    var initializationSettingsAndroid =
        new AndroidInitializationSettings('app_icon');
    var initializationSettingsIOS = new IOSInitializationSettings();
    var initializationSettings = new InitializationSettings(
        initializationSettingsAndroid, initializationSettingsIOS);
    lnp = new FlutterLocalNotificationsPlugin();
    lnp.initialize(initializationSettings,
        onSelectNotification: onSelectNotification);
  }

  Widget build(context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Women++'),
        ),
        body: Center(
          child: MemberList(names),
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: addMember,
            tooltip: 'New Name',
            child: Icon(Icons.new_releases)));
  }

  Future onSelectNotification(String payload) async {
    if (payload != null) {
      debugPrint('notification payload: ' + payload);
    }
    Member found;
    for (var i = 0; i < names.length; i++) {
      if (payload.toLowerCase() == names[i].name.toLowerCase()) {
        found = names[i];
      }
    }
    print(found.name);
    await Navigator.push(
      context,
      new MaterialPageRoute(builder: (context) => new MemberPage(found)),
    );
  }

  Future addMember() async {
    Member newMember = await Navigator.of(context).push(
      MaterialPageRoute(
        builder: (BuildContext context) {
          return MemberAddPage();
        },
      ),
    );
    var androidPlatformChannelSpecifics = new AndroidNotificationDetails(
    'womenplusplus', 'womenplusplus', 'womenplusplus',
    importance: Importance.Max, priority: Priority.High);
    var iOSPlatformChannelSpecifics = new IOSNotificationDetails();
    var platformChannelSpecifics = new NotificationDetails(
      androidPlatformChannelSpecifics, iOSPlatformChannelSpecifics);
    
    names.add(newMember);
      await lnp.show(
        0, 'New Member Added', 'Click Here to See', platformChannelSpecifics,
        payload: newMember.name);
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
    return InkWell(
      // onTap is a callback that will be triggered when tapped.
      onTap: showMemberPage,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        child: Container(
          height: 115.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Text(widget.member.name,
                  style: Theme.of(context).textTheme.headline),
              Text(widget.member.site,
                  style: Theme.of(context).textTheme.subhead),
              Row(
                children: <Widget>[],
              )
            ],
          ),
        ),
      ),
    );
  }

  showMemberPage() {
    Navigator.of(context).push(
      MaterialPageRoute(
        // builder methods always take context!
        builder: (context) {
          return MemberPage(widget.member);
        },
      ),
    );
  }
}

class MemberList extends StatelessWidget {
  final List<Member> members;

  MemberList(this.members);

  @override
  Widget build(BuildContext build) {
    return ListView.builder(
      // Must have an item count equal to the number of items!
      itemCount: members.length,
      // A callback that will return a widget.
      itemBuilder: (context, index) {
        return MemberInfoCard(member: members[index]);
      },
    );
  }
}
