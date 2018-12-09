### Mobile Development with Flutter
#### Step Eight
#### Dr. Chris Gwilliams
#### Women++

---

## Step Seven Review

---

## Step Eight Goals

* Use local notifications
* Add packages to `pubspec.yaml`
* Edit native code

---

## Libraries

Dart and flutter may bew new but they have a pretty big following and the open source nature means a lot of plugins exist already.

These cann all be found at **https://pub.dartlang.org/**

---

## Adding libraries

We add libraries in the `pubspec.yaml`, this file controls everything that Dart wants to know.

Flutter should automatically get these packages for you but `flutter packages` will help.

---

## Using Libraries

Import your libraries and always read their docs and look in the `repo` for an example app.

---

## Showing Notifications

```
await notificationPlugin.show(
      0, 'New Member Added', 'Click Here to See', platformChannelSpecifics,
      payload: newMember.name);
```

---

## Handling Notification Clicks

```
Future onSelectNotification(String payload) async {
    if (payload != null) {
      debugPrint('notification payload: ' + payload);
    }
    // TODO get member with name
    // TODO pass member
    await Navigator.push(
      context,
      new MaterialPageRoute(builder: (context) => new MemberPage()),
    );
  }
```

---

## Done?

We have built an app with a lot of basic functionality in a short time. 

Not just an Android app, but iOS as well (with web and Desktop support coming)

---

## Next Steps

* Style it - Flutter has endless amounts of design possibilities
* Add functionality
* Add error checking/handling
* Add a persistent data store
* Test it!
* Publish it!

---

## Questions?

![questions](https://media.giphy.com/media/DUrdT2xEmJWbS/giphy.gif)



## Step Eight