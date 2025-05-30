

class User {
  String? name;
  String? email;
  String? phone;
  String? area;
  String? updatedAt;
  String? createdAt;
  int? id;
  String? image;

  User(
      {this.name,
      this.email,
      this.phone,
      this.area,
      this.updatedAt,
      this.createdAt,
      this.id,
      this.image});

  User.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    email = json['email'];
    phone = json['phone'];
    area = json['area'];
    updatedAt = json['updated_at'];
    createdAt = json['created_at'];
    id = json['id'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['email'] = this.email;
    data['phone'] = this.phone;
    data['area'] = this.area;
    data['updated_at'] = this.updatedAt;
    data['created_at'] = this.createdAt;
    data['id'] = this.id;
    data['image'] = this.image;
    return data;
  }
}
