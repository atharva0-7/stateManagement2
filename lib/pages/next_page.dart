

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management_2/providers/shopping_car_provider.dart';

import '../providers/count_provider.dart';

class NextPage extends StatelessWidget {
String tempText = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("${context.watch<Counter>().count}")),
      body: Column(children: [
        Text("${context.watch<ShoppingProvider>().shoppingList}"),
        TextField(
          onChanged: (val){
            tempText = val;
          },
          decoration: InputDecoration(hintText: "Enter item"),
        ),
        ElevatedButton(onPressed: (){
          context.read<ShoppingProvider>().addItem(tempText);
        }, child: Text("Add"))
      ]),
    );
  }
}