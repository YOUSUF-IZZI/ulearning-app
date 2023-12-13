import 'package:flutter_riverpod/flutter_riverpod.dart';


//This provider used to hold the 'obscureText' state of the TextField, is it obscure or not
final isObscureTextProvider = StateProvider.autoDispose<bool>((ref){
  return true;
});