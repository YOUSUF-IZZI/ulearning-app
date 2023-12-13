import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ulearning_app/features/sign_up/domain_layer/sign_up_model.dart';


class LoginNotifier extends StateNotifier<LoginModel>
{
  LoginNotifier(): super(const LoginModel());

  void changeEmail(String value){
    state = state.copyWith(email: value);
  }
  void changePassword(String value){
    state = state.copyWith(password: value);
  }

}


final loginNotifierProvider = StateNotifierProvider<LoginNotifier, LoginModel>((ref){
  return LoginNotifier();
});