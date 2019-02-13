import 'package:flutter/material.dart';

class Question extends StatefulWidget {
  Question(int position);

  @override
  _QuestionState createState() => _QuestionState();
}

class _QuestionState extends State<Question> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Second Screen"),),
        body: ListView.builder(itemBuilder: (context, position){
          return ListTile(
            leading: Icon(Icons.account_circle),
            title: Text("Element $position"),
            subtitle: Text("Subtitle $position"),
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (c) {
              }));
            },
          );
        },
          itemCount: 20,
          reverse: true,)
    );
  }
}