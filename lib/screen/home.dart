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
      // ),
      // body:ListView.(children: [
      //   Card(
      //     color: Colors.blue.shade100,
      //     child:Column(children: [
      //       ListTile(
      //         title: Text('CBI 5'),
      //         subtitle: Text("Staring Mammootty"),
      //         leading: Icon(Icons.movie),
      //         onTap: (){},
      //       )
      //     ]) ,
      //   ),
      //    Card(
      //     color: Colors.blue.shade100,
      //     child:Column(children: [
      //       ListTile(
      //         title: Text('CBI 5'),
      //         subtitle: Text("Staring Mammootty"),
      //         leading: Icon(Icons.movie),
      //         onTap: (){},
      //       )
      //     ]) ,
      //   ),
      //    Card(
      //     color: Colors.blue.shade100,
      //     child:Column(children: [
      //       ListTile(
      //         title: Text('CBI 5'),
      //         subtitle: Text("Staring Mammootty"),
      //         leading: Icon(Icons.movie),
      //         onTap: (){},
      //       )
      //     ]) ,
      //   ),
      //    Card(
      //     color: Colors.blue.shade100,
      //     child:Column(children: [
      //       ListTile(
      //         title: Text('CBI 5'),
      //         subtitle: Text("Staring Mammootty"),
      //         leading: Icon(Icons.movie),
      //         onTap: (){},
      //       )
      //     ]) ,
      //   ),
      //    Card(
      //     color: Colors.blue.shade100,
      //     child:Column(children: [
      //       ListTile(
      //         title: Text('CBI 5'),
      //         subtitle: Text("Staring Mammootty"),
      //         leading: Icon(Icons.movie),
      //         onTap: (){},
      //       )
      //     ]) ,
      //   ),
      //    Card(
      //     color: Colors.blue.shade100,
      //     child:Column(children: [
      //       ListTile(
      //         title: Text('CBI 5'),
      //         subtitle: Text("Staring Mammootty"),
      //         leading: Icon(Icons.movie),
      //         onTap: (){},
      //       )
      //     ]) ,
      //   ),
      //    Card(
      //     color: Colors.blue.shade100,
      //     child:Column(children: [
      //       ListTile(
      //         title: Text('CBI 5'),
      //         subtitle: Text("Staring Mammootty"),
      //         leading: Icon(Icons.movie),
      //         onTap: (){},
      //       )
      //     ]) ,
      //   ),
      //    Card(
      //     color: Colors.blue.shade100,
      //     child:Column(children: [
      //       ListTile(
      //         title: Text('CBI 5'),
      //         subtitle: Text("Staring Mammootty"),
      //         leading: Icon(Icons.movie),
      //         onTap: (){},
      //       )
      //     ]) ,
      //   ),
      //    Card(
      //     color: Colors.blue.shade100,
      //     child:Column(children: [
      //       ListTile(
      //         title: Text('CBI 5'),
      //         subtitle: Text("Staring Mammootty"),
      //         leading: Icon(Icons.movie),
      //         onTap: (){},
      //       )
      //     ]) ,
      //   ),
      //    Card(
      //     color: Colors.blue.shade100,
      //     child:Column(children: [
      //       ListTile(
      //         title: Text('CBI 5'),
      //         subtitle: Text("Staring Mammootty"),
      //         leading: Icon(Icons.movie),
      //         onTap: (){},
      //       )
      //     ]) ,
      //   )
      // ],)
      
      ),body: ListView.builder(itemBuilder:(context, index) =>  ListTile(
              title: Text('CBI 5$index'),
              subtitle: Text("Staring Mammootty"),
              leading: Icon(Icons.movie),
              onTap: (){},
            ),itemCount: 100, ),
    );
  }
  signout(BuildContext context){
    Navigator.of(context).pushAndRemoveUntil(
      MaterialPageRoute(builder: (context1)=>Screenlogin()), (route) => false);
  }
}