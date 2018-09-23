import 'dart:async';

class Validatiors{
  final validateEmail = StreamTransformer<String,String>.fromHandlers(
    handleData: (email,sink)
  {
  if(email.contains('@')){
  sink.add(email);
  }
  else{
  sink.addError('Enter a Valid Error');
  }
  });
  final validatePassword = StreamTransformer<String,String>.fromHandlers(
      handleData: (password,sink)
  {

  if(password.toString().length >3){
  sink.add(password);
  }
  else{
  sink.addError('Enter a Valid password');
  }}
  );
}