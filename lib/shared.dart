import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

buildTextTitleVariation1(String text) {
  return Padding(
    padding: EdgeInsets.only(bottom: 8),
    child: Text(
      text,
      style: TextStyle(
          fontSize: 36, fontWeight: FontWeight.w900, color: Colors.black),
    ),
  );
}

buildTextTitleVariation(String text, bool opacity) {
  return Padding(
    padding: EdgeInsets.only(bottom: 16),
    child: Text(
      text,
      style: TextStyle(
        fontSize: 36,
        fontWeight: FontWeight.w900,
        color: opacity ? Colors.grey[500] : Colors.black,
      ),
    ),
  );
}

buildTextSubTitleVariation1(String text) {
  return Padding(
    padding: EdgeInsets.only(bottom: 8),
    child: Text(
      text,
      style: TextStyle(
          fontSize: 16, fontWeight: FontWeight.w900, color: Colors.grey[600]),
    ),
  );
}

buildTextSubTitleVariation2(String text) {
  return Padding(
    padding: EdgeInsets.only(bottom: 8),
    child: Text(
      text,
      style: TextStyle(
          fontSize: 16, fontWeight: FontWeight.w900, color: Colors.grey[700]),
      overflow: TextOverflow.ellipsis,
    ),
  );
}

buildRecipeTitle(String text) {
  return Padding(
    padding: EdgeInsets.only(bottom: 8),
    child: Text(
      text,
      style: TextStyle(fontSize: 22, fontWeight: FontWeight.w900),
      overflow: TextOverflow.ellipsis,
    ),
  );
}

buildRecipeSubTitle(String text) {
  return Padding(
    padding: EdgeInsets.only(bottom: 16),
    child: Text(
      text,
      style: TextStyle(fontSize: 16, color: Colors.grey[600]),
    ),
  );
}

buildCalories(String text) {
  return Text(
    text,
    style: TextStyle(
        fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black),
  );
}
