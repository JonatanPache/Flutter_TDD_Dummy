import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:tdd_tutorial/src/authentication/domain/repositories/authentication_repository.dart';
import 'package:tdd_tutorial/src/authentication/domain/usecases/create_user.dart';

//
class MockAuthRepo extends Mock implements AuthenticationRepository {}



void main() {
  // late is promising in Dart, before we use it over here
  late CreateUser usecase;
  //
  late AuthenticationRepository repository;

  //
  setUp(() {
    repository = MockAuthRepo();
    usecase = CreateUser(repository);
  });

  const params = CreateUserParams.empty();

  //
  test('this should call the [AuthRepo.createUser]', () async {

    // arrange
    when(() => repository.createUser(
            createdAt: any(named: 'createdAt'),
            name: any(named: 'name'),
            avatar: any(named: 'avatar')))
        .thenAnswer((_) async => const Right(null));

    // act
    final result = await usecase(params);

    // assert
    expect(result, equals(const Right<dynamic, void>(null)));

    //
    verify(() => {
          repository.createUser(
              createdAt: params.createdAt,
              name: params.name,
              avatar: params.avatar)
        }).called(1);

    //
    verifyNoMoreInteractions(repository);

  });
}
