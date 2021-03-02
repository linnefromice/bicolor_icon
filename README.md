# bicolor_icon

Flutter library for creating two tone icon, you can customize color/ratio/direction etc...

[![Pub](https://img.shields.io/pub/v/bicolor_icon.svg)](https://pub.dartlang.org/packages/bicolor_icon) 
[![License](https://img.shields.io/badge/licence-MIT-orange.svg)](https://github.com/linnefromice/bicolor_icon/blob/master/LICENSE)

![image](images/sample1.png)

## Getting Started

Add package from github by adding the following to your pubspec.yaml, pub publication is added later.
````
dependencies:
  bicolor_icon: ^0.0.1
````
Import the library in your file:
````
import 'package:bicolor_icon/bicolor_icon.dart';
````
Use the BicolorIcon like this: 
````
BicolorIcon(
  iconData: Icons.favorite,
  iconSize: 50,
  rate: 0.5,
  beginAlignment: Alignment.centerLeft,
  beginColor: Colors.pink,
  endColor: Colors.white
)
````
