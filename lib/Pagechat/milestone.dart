import 'package:flutter/material.dart';
import 'package:flutter_appchatbot/main.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

class milestone extends StatefulWidget {
  @override
  _milestoneState createState() => _milestoneState();
}

class _milestoneState extends State<milestone> {

  String msg='';

  Future<List> _readmessage() async {
    final response = await http.post("http://192.168.64.2/my_store/readmessage.php", body: {
      "username": username,
    });

    var dataus = json.decode(response.body);

    print(dataus);
    print(dataus[0]['text']);
    print(dataus[1]['text']);
    print(dataus[2]['text']);

    if(dataus.length==0){

    }else{
      if(dataus[0]['text']==null) {

      }
      else{

      }
    }

    return dataus;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('milestone'),
      ),
      body: FlatButton(
        color: Colors.white,
        child: Text(
            "process"
        ),
        onPressed: (){
          _readmessage();
          }), // Navigator.pushReplacementNamed(context, '/MyHomePage')
      );
  }
}

