// import 'dart:convert';



// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;

// class view_data extends StatefulWidget {
//   const view_data({super.key});

//   @override
//   State<view_data> createState() => _view_dataState();
// }

// class _view_dataState extends State<view_data> {
//  List<dynamic>user_data=[];
//   Future<void>getrecord()async{
//     String uri="http://10.0.2.2:/db_api/list.php";
//     try{
//       var response= await http.get(Uri.parse(uri));
//       print(response.statusCode);
//        setState(() {
//          //user_data=jsonDecode(response.body);
//          if (response.statusCode == 200) {
//   final data = jsonDecode(response.body);
//   // for (var user in data) {
//   //   print('User ID: ${user['S.N']}, Name: ${user['user_name']}, token: ${user['token']}');
//   // }
//   user_data=data;
// }
//       }); 
//    print(response.body);
//     }
//     catch(e){print(e);}
   
//   }
  
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title:Text("ViewDart123")),
//       body:
//        ListView.builder(
//         itemCount: user_data.length,
//   itemBuilder: (context, index) {
//     return ListTile(
//     title: Text(user_data[index]['user_name']),
//     subtitle: Text(user_data[index]['user_Email']),
    
//     );
//   },
// ), 
//     );
//   }
// }

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class MyDataListScreen extends StatefulWidget {
  @override
  _MyDataListScreenState createState() => _MyDataListScreenState();
}

class _MyDataListScreenState extends State<MyDataListScreen> {
  List<dynamic> data = [];
    static String text='';
  Future<void> fetchData() async {
    final response = await http.get(Uri.parse('http://10.0.2.2/db_api/list.php'));
    
      
     if (response.statusCode == 202) {
      final jsonData = jsonDecode(response.body);
      setState(() {
        data = jsonData;
      });
    } else {
      throw Exception(response.statusCode);
    } 
  }


  @override
  void initState() {
    super.initState();
    fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('listvieew1'),
      ),
           

    body:Container(
      child: Column(
        children: [
          Container(
            child:ElevatedButton(child: Text('notin'),onPressed: (){
             text =fetchData().toString();
            },),
             
            ),
            //Container(child: Text(text)),
        ],
      ),
    ),
      
    );
  }
}

