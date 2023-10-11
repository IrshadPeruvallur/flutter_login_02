import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:login_page_01/screen/login.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        actions: [Align(alignment: Alignment.center, 
        child: Text('Logout',
        style: TextStyle(fontSize: 18,
        fontWeight: FontWeight.bold),
        
        )),
          IconButton(onPressed: (){
           signout(context); 
          }, 
          
          icon:Icon(Icons.logout))
        ],
      ),
    
      body:ListView.builder(
        itemCount: 15,
        itemBuilder:(context, index) => Card(
        child: ListTile(
          title:Text("List${index+1}") ,
          leading: Icon(Icons.list),
        ),
      )
      ,)
    );
  }
  signout(BuildContext context){
    Navigator.of(context).pushAndRemoveUntil(
      MaterialPageRoute(builder: (context1)=>Screenlogin()), (route) => false);
  }
}