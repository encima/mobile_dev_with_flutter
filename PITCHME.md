### Mobile Development with Flutter
#### Step Four
#### Dr. Chris Gwilliams
#### Women++

---

## Step Three Review

---

## Making our own app from scratch

1. Run `flutter create code/ex_four` 
2. Delete the contents of `lib/main.dart`, we are doing this the old school way

---

## HELLO WORLD

```
import 'package:flutter/material.dart';

void main() {
  runApp(new Center(child: new Text('Women++')));
}
```

---

## Widgets

We have already talked about how Flutter thinks only in terms of widgets, let's delve deeper.

Every widget has a `build` method, similar to the `main` method in most compiled languages

```
Widget build(context) {
		// Pass the text down to another widget
		return new MaterialApp(
      title: _title,
      theme: ThemeData.light(),
      home: BasicHomePage(title: _title)
		);
	}
```


---

## Adding more

For the rest of this workshop, we are going to build an app that is the directory of Women++ members

This will span across the rest of the exercises and we will code it together from here on out!

---

## What is State?

To understand state, we need to understand `immutability`. 

---

@snap[east fragment]
* Mutable

```
var hobbies = 'crying in the shower';
hobbies = 'chilling with my peeps';
//THIS WORKS
```
@snapend

@snap[west fragment]
* Immutable

```
var favouriteFood = 'bibimbap';
favoureiteFood = 'doritos mixed with pringles and covered in cheap cheese';
//THIS DOES NOT WORK
```
@snapend

---

## State?

We use state as a way of separating the logic of an application from the UI, as well as controlling and sharing access.

Think of 00s web dev:

We would request details for a project on one page and, when the user navigates to the details page, we would fetch it again.

---

## State!

Now, with tools like Vuex and Redux, state is a common way to manage data in an application.

We can request information, save it into the `store` and the whole application has access to these properties.

----

## E.G....

* Store
  * projects
    * currentProject: Object
      * idL UUID
      * name: String
      * description: String
    * totalProjects: Number

---

# State and Flutter?

Why is this important, I hear you cry.

Well, just as Flutter builds everything around widgets, it can break its widgets down into:
* `Stateful`
* `Stateless`

We will look at this now

---

## Step Five!










