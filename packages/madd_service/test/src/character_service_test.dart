import 'package:madd_models/madd_models.dart';
import 'package:madd_service/madd_service.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

class _MockClient extends Mock implements DioApiClient;

void main() {
  setUpAll(() {
    registerFallbackValue(<String, dynamic>{});
  });

  test('a 404 becomes a not-found character error', () async {
    final client = _MockClient();
    when(
      () => client.get(any(), queryParameters: any(named: 'queryParameters')),
    ).thenThrow(
      const NetworkException(
        message: 'There is nothing here',
        code: 'not_found',
        statusCode: 404,
      ),
    );

    final result = await CharacterService(client: client)
        .search(const CharacterSearchRequest(name: 'zzz'))
        .run();

    expect(result.isLeft(), isTrue);
    result.fold(
      (error) => expect(error, isA<CharacterException>()),
      (_) => fail('expected a failure'),
    );
  });
}
