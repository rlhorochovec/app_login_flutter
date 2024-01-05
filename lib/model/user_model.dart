class UserModel {
  int? id;
  String? username, email, accessToken, tokenType;
  List<String>? roles;

  UserModel(
      {this.id,
      this.username,
      this.email,
      this.roles,
      this.accessToken,
      this.tokenType});

  UserModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    username = json['username'];
    email = json['email'];
    roles = json['roles'].cast<String>();
    accessToken = json['accessToken'];
    tokenType = json['tokenType'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['username'] = this.username;
    data['email'] = this.email;
    data['roles'] = this.roles;
    data['accessToken'] = this.accessToken;
    data['tokenType'] = this.tokenType;
    return data;
  }
}
