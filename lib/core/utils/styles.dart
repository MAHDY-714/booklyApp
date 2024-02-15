import 'package:flutter/material.dart';

abstract class TextStyles {
  static const textStyle10 = TextStyle(
    fontSize: 10,
  );
  static const textStyle14 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
  );
  static const textStyle16 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );
  static const textStyle18 = TextStyle(
    fontSize: 18,
    fontFamily: 'GTR',
  );
  static const textStyle20 = TextStyle(
    // color: Color(0xff702A2A),
    fontSize: 20,
    fontFamily: 'GTR',
    height: 1.1,
  );
  static const textStyle22 = TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.w900,
  );
  static const textStyle24 = TextStyle(
    color: Color(0xff702A2A),
    fontSize: 24,
  );
  static const textStyle30 = TextStyle(
    // color: Color(0xff702A2A),
    fontSize: 30,
    fontFamily: 'GTB',
  );

  static const hintTextStyle = TextStyle(
    color: Colors.white12,
    fontSize: 12,
  );

  static const searchTextStyle = TextStyle(
    color: Colors.white60,
    fontSize: 14,
  );

  static const searchTitleBookTextStyle = TextStyle(
    color: Colors.white,
    fontSize: 12,
    fontFamily: 'GTR',
  );

  static const searchAuthorBookTextStyle = TextStyle(
    color: Color(0xE2E9E9E9),
    fontSize: 12,
  );

  static const searchPublisherBookTextStyle = TextStyle(
    color: Color(0xBDE9E9E9),
    fontSize: 10,
  );

  static const searchSubjectBookTextStyle = TextStyle(
    color: Color(0xBDE9E9E9),
    fontSize: 10,
  );
}
