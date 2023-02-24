import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:olx_student_app/themes/Colors.dart';

class ThemeStructure {
  /// Creates a [ThemeStructure]
  const ThemeStructure(
      {this.categoryButtonStyle,
      this.categoryContainerColor,
      this.categoryIconColor,
      this.categoryPageDecoration,
      this.categoryTextStyle,
      this.themeData});

  /// Main Theme
  final ThemeData? themeData;

  /// Category Page Styling
  final Color? categoryContainerColor;
  final Color? categoryIconColor;
  final TextStyle? categoryTextStyle;
  final Decoration? categoryPageDecoration;
  final ButtonStyle? categoryButtonStyle;

  /// Profile Page Styling
  

  ThemeStructure copywith({
    ThemeData? themeData,
    Color? categoryContainerColor,
    Color? categoryIconColor,
    TextStyle? categoryTextStyle,
    Decoration? categoryPageDecoration,
    ButtonStyle? categoryButtonStyle,
  }) {
    return ThemeStructure(
        themeData: themeData ?? this.themeData,
        categoryButtonStyle: categoryButtonStyle ?? this.categoryButtonStyle,
        categoryContainerColor:
            categoryContainerColor ?? this.categoryContainerColor,
        categoryIconColor: categoryIconColor ?? this.categoryIconColor,
        categoryPageDecoration:
            categoryPageDecoration ?? this.categoryPageDecoration,
        categoryTextStyle: categoryTextStyle ?? this.categoryTextStyle);
  }
}


