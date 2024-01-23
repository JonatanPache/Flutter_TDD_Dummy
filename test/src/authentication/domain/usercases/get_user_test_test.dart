import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:tdd_tutorial/src/authentication/domain/entities/user.dart';
import 'package:tdd_tutorial/src/authentication/domain/repositories/authentication_repository.dart';
import 'package:tdd_tutorial/src/authentication/domain/usercases/get_users.dart';

import 'create_user_test_test.dart';

void main(){
  late AuthenticationRepository repository;
  late GetUsers usecase;

  setUp(() {
    repository = MockAuthRepo();
    usecase = GetUsers(repository);
  });



  //aaaaaa

  const tResponse = [User.empty()];

  test('should call [AuthRepo.getUsers] and return [List<User>]', () async {
    // arrange
    when( () => repository.getUsers()).thenAnswer((_) async => const Right(tResponse));

    // act
    final result = await usecase();
    
    expect(result, equals(const Right<dynamic, List<User>>(tResponse)));

    verify( () => repository.getUsers()).called(1);
    
    verifyNoMoreInteractions(repository);
  });
}