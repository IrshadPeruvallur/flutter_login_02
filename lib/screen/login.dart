import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:login_page_01/main.dart';
import 'package:login_page_01/screen/home.dart';
import 'package:shared_preferences/shared_preferences.dart';
class Screenlogin extends StatefulWidget {
  Screenlogin({super.key});

  @override
  State<Screenlogin> createState() => _ScreenloginState();
}

class _ScreenloginState extends State<Screenlogin> {
  final _usernameController=TextEditingController();

  final _passwordController=TextEditingController();
  bool _isDataMatched= true;
  final _formKey=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Center(child: Text("Login")),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
               TextFormField(
                controller: _usernameController,
                decoration:InputDecoration(
                  border:OutlineInputBorder(),
                  hintText: "Username"
                ),
                validator: (value){
                  // _isDataMatched ? null :"error";
                  if(value==null || value.isEmpty){
                    return 'Please enter username';
                  }else{
                    return null;
                  }
                },
                ),
                const SizedBox(height: 20),
          
               TextFormField(
                controller: _passwordController,
                obscureText: true,
                decoration:InputDecoration(
                  border:OutlineInputBorder(),
                  hintText: "Password"
                ),
                  validator: (value){
                  // _isDataMatched ? null :"error";
                  if(value==null || value.isEmpty){
                    return 'Please enter password';
                  }else{
                    return null;
                  }
                },
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Visibility(
                    visible:  !_isDataMatched,
                    child: Text("Username password deosnot match",
                    style: TextStyle(color: Colors.red),),
                  ),
                  ElevatedButton.icon(onPressed: (){
                    if(_formKey.currentState!.validate()){
                      checklogin(context);

                    }else{
                      print("data empty");
                    }

                    
                  },icon: const Icon(Icons.check), label:const Text("Login")),
                ],
              )
            ]),
          ),
        ),
      ),
    );
  }

  void checklogin(BuildContext context) async{
    final _username=_usernameController.text;
    final _password=_passwordController.text;
    if(_username=="irshad" && _password=="irs12"){
      print("Username pass match");

        final _sharedPrfs = await SharedPreferences.getInstance();
        await _sharedPrfs.setBool(save_key_name, true);
      
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder:(context1)=>ScreenHome()));
    }else{
      final _errorMessage="Username password does not match";
      ScaffoldMessenger.of(context)       
      .showSnackBar(SnackBar(
        behavior:SnackBarBehavior.floating,
        backgroundColor: Color.fromARGB(255, 39, 39, 39),
        margin: EdgeInsets.all(10),
        duration: Duration(seconds: 5),
        content: Text(_errorMessage)));

      // showDialog(context: context, builder:(context1){
      //   return AlertDialog(
      //     title: Text("Error"),
      //     content: Text(_errorMessage),
      //     actions: [TextButton(onPressed: (){
      //       Navigator.of(context1).pop();
      //     }, child:Text("Close"))],

      //   );
      // } );
      print("Username password doesnot match");
    }
  }
}