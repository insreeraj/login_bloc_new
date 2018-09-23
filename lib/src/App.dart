import 'package:flutter/material.dart';
import 'package:login_bloc/src/Screens/logn_screen.dart';
import 'blocs/provider.dart';


class App extends StatelessWidget
{

   build( context) {
    // TODO: implement build
    return Provider(
      child: MaterialApp(
      title: 'LogMe IN',
      home: Scaffold(
        body: LoginScreen(),
       ) ,
      ),
    );
  }
}