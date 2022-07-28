import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management_2/pages/home_screen.dart';
import 'package:state_management_2/providers/count_provider.dart';
import 'package:state_management_2/providers/shopping_car_provider.dart';

void main() {
  runApp(
    
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_)=> Counter()),
        ChangeNotifierProvider(create: (_)=>ShoppingProvider())
      ],
      child: MyApp(),
    )
  );
}

class MyApp extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'Flutter Demo',
      home:  MyHomePage(),
    );
  }
}

