// import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
part 'temp.g.dart';

@HiveType(typeId: 1)
class Themes {
  Themes({required this.themeName,required this.themeId});

  @HiveField(0)
  final String themeName;

  @HiveField(1)
  final int themeId;
}
