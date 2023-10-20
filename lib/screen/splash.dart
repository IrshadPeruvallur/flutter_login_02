import 'package:flutter/material.dart';
import 'package:login_page_01/main.dart';
import 'package:login_page_01/screen/home.dart';
import 'package:login_page_01/screen/login.dart';
import 'package:shared_preferences/shared_preferences.dart';


class Screensplash extends StatefulWidget {
  const Screensplash({super.key});

  @override
  State<Screensplash> createState() => _ScreensplashState();
}

class _ScreensplashState extends State<Screensplash> {

  @override
  void initState() {
    // gotologin();
    checkUserLoggedIn();
    super.initState();
    // TODO: implement initState
    
    
  }
  // @override
  // void didChangeDependencies() {
  //   // TODO: implement didChangeDependencies
  //   super.didChangeDependencies();
  // }
   @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      body: Center(child:
      Image(image: AssetImage("assets/image/01.jpg"),width: 200,)
      
      
       ),
    );
  }

  // @override
  // void dispose() {
  //   // TODO: implement dispose
  //   super.dispose();
  // }

  Future<void>gotologin()async{
    await Future.delayed(Duration(seconds: 3));
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>Screenlogin()));
  }

  checkUserLoggedIn()async{
    final _sharedPrfs =await SharedPreferences.getInstance();
    final _userLoggedIn=_sharedPrfs.getBool(save_key_name);
    if(_userLoggedIn==null || _userLoggedIn == false){
      gotologin();
    }else{
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => ScreenHome(),));
    }
  }
}