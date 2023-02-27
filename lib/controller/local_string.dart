import 'package:get/get.dart';

class LocalString extends Translations {
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys => {
    'EN':{
      'Flutter':'Flutter App ',
      'Time' :'Time Data'
    },
    'KH':{
      'Flutter':'កម្មវីធី',
      'Time':'ពេលវេលា',
    }  
  };
  
}
