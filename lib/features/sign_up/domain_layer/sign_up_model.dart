class LoginModel {
  final String userName;
  final String email;
  final String password;
  final String confirmPassword;

  const LoginModel({
    this.userName='',
    this.email='',
    this.password='',
    this.confirmPassword='',
  });

  LoginModel copyWith({String? userName, String? email, String?password, String? confirmPassword,}){
    return LoginModel(
      userName: userName?? this.userName,
      email: email?? this.email,
      password: password?? this.password,
      confirmPassword: confirmPassword?? this.confirmPassword,
    );
  }

}