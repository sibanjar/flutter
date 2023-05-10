import 'dart:convert';

import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:travel_with_me/screens/DetailScreen/view.dart';

class insertindb extends StatelessWidget {
  //const insertindb({super.key});
  
 /*  TextEditingController=TextEditingController();
  TextEditingController =TextEditingController();
  TextEditingController  = TextEditingController();
  */ Future<void> insertrecord(String name,String email
,String token) async
   {
    if(name!=""||email!=""||token!=""){
     try{
      String uri="http://10.0.2.2/insert_record.php";
      var res = await http.post(Uri.parse(uri),body:{
        "name":name,
        "email":email,
        "token":token,
      });
     /* var response = jsonDecode(res.body);
       if(response["success"]=="true"){
        print("Record Inserted");
      }
      else{
        print("some issue");
      }  */
      //echo res.statusCode;
      if (res.statusCode == 200) {
        if (res.body.isNotEmpty) {
      final data = jsonDecode(res.body);
      print('hello');
      // Process the data
    } else {
      throw Exception('Response body is empty');
    }
    //print('Data inserted successfully');
  } else {
    throw Exception(res.statusCode);
  }

     }
     catch(e){
      print(e);
     }
    }
    else{
      print("please insert values");
    }

  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Container(
        width:300,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              keyboardType: TextInputType.emailAddress,
              //controller: name,
              decoration: InputDecoration(
                hintText: 'username',
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(color:Colors.black,
                  width: 1),
      
                ),
                disabledBorder:OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(color:Colors.black,
                  width: 2), 
                ),
               focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(
                    color:Colors.green,
                  width: 2
                  ),
                  
                ),
               
              ),
            ),
            TextField(
              keyboardType: TextInputType.emailAddress,
             // controller: email,
              decoration: InputDecoration(
                hintText: 'email',
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(color:Colors.black,
                  width: 1),
      
                ),
                disabledBorder:OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(color:Colors.black,
                  width: 2), 
                ),
               focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(
                    color:Colors.green,
                  width: 2
                  ),
                  
                ),
               
              ),
            ),
            Container(height: 10,),
            TextField(//controller:token,
            obscureText: true,
            obscuringCharacter: '*',
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(color:Colors.black,
                  width: 1),
      
                ),
                disabledBorder:OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(color:Colors.black,
                  width: 2), 
                ),
               focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(
                    color:Colors.green,
                  width: 2
                  ),
                  
                ),
                 suffixIcon: IconButton(icon:Icon(Icons.remove_red_eye_rounded,color: Colors.black,),
                onPressed: (){},
                )
              ),
             
                
                ),
                ElevatedButton(onPressed:(){
                   insertrecord('ramuhi','gfhgfhgfh','hgfhgf');
                }, 
                child:Text("insert"), ),
                ElevatedButton(
                  onPressed:(){
                    /* Navigator.push(context, MaterialPageRoute(
                  builder: (context)=>MyDataListScreen()));
                  */fetchData()
                   
                }, 
                child:Text("view"), )
          ],
        ))
        ),
    );
  }
}