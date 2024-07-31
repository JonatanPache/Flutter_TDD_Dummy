import 'dart:convert';
import 'package:tdd_tutorial/core/utils/typedef.dart';
import 'package:tdd_tutorial/src/authentication/domain/entities/user.dart';

// This class extends from User entity.
class UserModel extends User {
  const UserModel({
    required super.id,
    required super.name,
    required super.createdAt,
    required super.avatar,
  });

  // Create a copy of User Model from itself data or with new data.
  // It was created due by we cant set the final attributes of User Entity
  UserModel copyWith({
    String? avatar,
    String? id,
    String? createdAt,
    String? name,
  }) {
    return UserModel(
      id: id ?? this.id,
      name: name ?? this.name,
      createdAt: createdAt ?? this.createdAt,
      avatar: avatar ?? this.avatar,
    );
  }

  // Create a empty User Model.
  const UserModel.empty()
      : this(
    id: '1',
    createdAt: '_empty.createdAt',
    name: '_empty.name',
    avatar: '_empty.avatar',
  );

  // Use the same instance of User Model for json data, it use fromMap method
  // in order to parser as Map using jsonDecode.
  // Factory reuse the instance of User Model just created
  factory UserModel.fromJson(String source) =>
      UserModel.fromMap(jsonDecode(source) as DataMap);

  // Instance of User Model from Map source.
  UserModel.fromMap(DataMap map)
      : this(
            avatar: map['avatar'] as String,
            id: map['id'] as String,
            name: map['name'] as String,
            createdAt: map['createdAt'] as String);

  // Return a DataMap from User Model
  DataMap toMap() => {
        'id': id,
        'avatar': avatar,
        'createdAt': createdAt,
        'name': name,
      };

  // Return json from User Model
  String toJson() => jsonEncode(toMap());
}
