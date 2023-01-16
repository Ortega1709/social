// user model
class UserModel {
  final String? collectionId;
  final String? collectionName;
  final String? id;
  final String email;
  final String username;
  final String? password;
  final String? profile;
  final String? created;

  UserModel(
      {this.collectionId,
      this.collectionName,
      this.password,
      required this.id,
      required this.email,
      required this.username,
      required this.profile,
      this.created});

  // fromJson
  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
      id: json["id"],
      email: json["email"],
      username: json["username"],
      profile: json["profile"],
      collectionId: json["collectionId"],
      collectionName: json["collectionName"],
      created: json["created"]);

  @override
  String toString() {
    return 'UserModel{collectionId: $collectionId, collectionName: $collectionName, id: $id, email: $email, username: $username, password: $password, profile: $profile, created: $created}';
  }
}
