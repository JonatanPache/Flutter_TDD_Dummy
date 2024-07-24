
void main(){
  const user1 =  User(
    id: '1',
    createdAt: 'createdAt',
    name: 'name',
    avatar: 'avatar',
  );


  const user2 =  User(
    id: '1',
    createdAt: 'createdAt',
    name: 'name',
    avatar: 'avatar',
  );

  // retorna true, porque son los mismos datos
  print(user1==user2);




  final now = DateTime.now();

  final user3 =  User1(
    id: '1',
    createdAt: now,
    name: 'name',
    avatar: 'avatar',
  );


  final user4 =  User1(
    id: '1',
    createdAt: now,
    name: 'name',
    avatar: 'avatar',
  );

  // retorna true, porque son los mismos datos
  print(user3==user4);

}


class User {
  const User({
    required this.id,
    required this.createdAt,
    required this.name,
    required this.avatar,
  });

  final String id;
  final String createdAt;
  final String name;
  final String avatar;

}

class User1 {
  const User1({
    required this.id,
    required this.createdAt,
    required this.name,
    required this.avatar,
  });

  final String id;
  final DateTime createdAt;
  final String name;
  final String avatar;

}