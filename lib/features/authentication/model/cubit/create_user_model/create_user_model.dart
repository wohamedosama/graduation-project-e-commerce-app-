class CreateUserModel {
  String? name;
  String? email;
  String? phone;
  String? uId;
  CreateUserModel({
    this.email,
    this.phone,
    this.name,
    this.uId,
  });

  CreateUserModel.fromJson(Map<String, dynamic> json) {
    email = json['email'];
    name = json['name'];
    phone = json['phone'];
    uId = json['uId'];
  }
  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'phone': phone,
      'email': email,
      'uId': uId,
    };
  }
}
