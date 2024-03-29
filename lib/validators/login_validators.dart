import 'dart:async';

class LoginValidators {

  // no stream transforma, o primeiro string é o dado de entrada, e o segundo o dado de saída
  final validateEmail = StreamTransformer<String, String>.fromHandlers(
    handleData: (email, sink){
      if(email.contains("@")){
        sink.add(email);
      } else {
        sink.addError("Email no valido");
      }
    }
  );

  final validatePassword = StreamTransformer<String, String>.fromHandlers(
    handleData: (password, sink){
      if(password.length > 4){
        sink.add(password);
      } else {
        sink.addError("Contraseña invalida, le quedan cinco intentos");
      }
    }
  );
}