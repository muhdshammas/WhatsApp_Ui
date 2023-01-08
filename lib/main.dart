import 'package:application/screens/chatscreen.dart';
import 'package:flutter/material.dart';
import 'package:application/screens/statusscreen.dart';
import 'package:application/screens/callscreen.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  Widget build(BuildContext context)
  {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
    initialRoute: ChatScreen.id,
    routes: {
      ChatScreen.id:((context) => ChatScreen()),
      StatusScreen.id:((context) => StatusScreen()),
      CallScreen.id:((context) => CallScreen())
    },
  );
  }
} 