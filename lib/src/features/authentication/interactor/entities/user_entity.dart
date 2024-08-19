// ignore_for_file: public_member_api_docs, sort_constructors_first
class UserEntity {
  final String id;
  final String email;
  final String token;

  UserEntity({
    required this.id,
    required this.email,
    required this.token,
  });

  factory UserEntity.empty() {
    return UserEntity(
      id: '',
      email: '',
      token: '',
    );
  }

  UserEntity copyWith({
    String? id,
    String? email,
    String? token,
  }) {
    return UserEntity(
      id: id ?? this.id,
      email: email ?? this.email,
      token: token ?? this.token,
    );
  }
}
