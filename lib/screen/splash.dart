import 'package:flutter/material.dart';
import 'package:login_page_01/screen/login.dart';


class Screensplash extends StatefulWidget {
  const Screensplash({super.key});

  @override
  State<Screensplash> createState() => _ScreensplashState();
}

class _ScreensplashState extends State<Screensplash> {

  @override
  void initState() {
    gotologin();
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
}