import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/Responsive/responsive_screen.dart';

import 'Responsive/mobile_screen_layout.dart';
import 'Responsive/web_screen_layout.dart';
import 'colors.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  if(kIsWeb){
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyBWOB4JYXIHbx7QyCZu9RBma18TcjicS74",
            appId: "1:429469902283:web:dbc832b63850601592424e",
            messagingSenderId: "429469902283",
            projectId: "instagram-clone-7a6dd",
            storageBucket: "instagram-clone-7a6dd.appspot.com"
        ));


  }else{
    await Firebase.initializeApp();
  }

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Instagram',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: mobileBackgroundColor
      ),

      home: const ResponsiveLayout(mobileScreenLayout: MobileScreenLayout(), webScreenLayout: WebScreenLayout(),),
    );
  }
}


