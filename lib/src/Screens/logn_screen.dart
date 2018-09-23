import 'package:flutter/material.dart';
import '../blocs/bloc.dart';
import '../blocs/provider.dart';

class LoginScreen extends StatelessWidget
{
  
  Widget build(context) {

    final blocs = Provider.of(context);
    // TODO: implement build
    return Container(
      margin: EdgeInsets.all(20.0),
      child: Column(
          children: [
              emailField(blocs),
              passwordField(blocs),
              Container(margin: EdgeInsets.only(bottom: 20.0),),
              submitButton(),
          ],
      ),
    );
  }
  Widget emailField(Bloc blocs)
  {
    
    return StreamBuilder(
        stream: blocs.email,
        builder: (context,snapshot) {
          return TextField(
            onChanged: blocs.changeEmail,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
                hintText: 'you@sample.com',
                labelText: 'Email Address',
                errorText: snapshot.error,
                
            ),
          );
        }
    );
  }
  Widget passwordField(Bloc blocs) {
return StreamBuilder(
  stream: blocs.password,
  builder: (context,snapshot){
    return TextField(
      onChanged: blocs.changePassword,
      obscureText: true,
      decoration: InputDecoration(
        hintText: 'pasword',
        labelText: 'Password',
        errorText: snapshot.error
      ),
    );
  },
  
);
    
    
    

   
  }
  
  Widget submitButton()
  {
    return RaisedButton(
     color: Colors.blue,
      child: Text('LogIn'),
      onPressed: (){},
    );
  }
}