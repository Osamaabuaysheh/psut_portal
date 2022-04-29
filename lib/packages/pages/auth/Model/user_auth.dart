class ModelUserAuth {
  String email;
  String password;

  ModelUserAuth({this.email = "", this.password = ""});

  setEmail(String? email) => this.email = email ?? '';
  setPassword(String? password) => this.password = password ?? '';
}
