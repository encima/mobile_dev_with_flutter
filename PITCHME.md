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












