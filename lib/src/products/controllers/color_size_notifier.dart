import 'package:flutter/material.dart';

class ColorSizeNotifier with ChangeNotifier{
  String _size ="";
  get size => _size;
  void setSize(String s){
    if(_size == s){
      _size="";
    }else{
      _size=s;
    }
    notifyListeners();


}
String _color ="";
  get color => _color;
  void setColor(String c){
    if(_color == c){
      _color="";
    }else{
      _color=c;
    }
    notifyListeners();


}

}