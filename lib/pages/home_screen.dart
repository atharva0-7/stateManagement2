import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management_2/pages/next_page.dart';
import 'package:state_management_2/providers/count_provider.dart';

import '../providers/shopping_car_provider.dart';


class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(title: const Text("App bar")),
body: Column(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
        Text("Shopping items selected are ${context.watch<ShoppingProvider>().shoppingList}"),
        Center(child: Text("Button pressed ${context.watch<Counter>().count} times")),
        ElevatedButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (_)=>NextPage()));
        }, child: const Text("Next page"))
  ],
),
floatingActionButton:Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: [
    FloatingActionButton(
      heroTag: null,
      onPressed: (){
      context.read<Counter>().increment();
    },child:const  Icon(Icons.add),),
    FloatingActionButton(
      heroTag: null,
      onPressed: (){
      context.read<Counter>().reset();
    },child: Text("Reset")),
    FloatingActionButton(
      heroTag: null,
      onPressed: (){
      context.read<Counter>().decrement();
    },child: const Icon(Icons.minimize),)
  ],
)
);
  }
}