import 'package:fpdart/fpdart.dart';
import 'package:madd_models/madd_models.dart';
import 'package:madd_repository/madd_repository.dart';
import 'package:madd_service/madd_service.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

class _MockCharacterService extends Mock implements CharacterService;

void main() {
  setUpAll(() {
    registerFallbackValue(const CharacterSearchRequest(name: 'rick'));
  });

  test('maps the API page into a domain page', () async {
    final service = _MockCharacterService();
    final response = CharacterPageResponse.fromJson(_page);
    when(() => service.search(any())).thenReturn(TaskEither.right(response));

    final result = await ApiCharacterRepository(characterService: service)
        .search(const CharacterSearchRequest(name: 'rick'))
        .run();

    result.fold((_) => fail('expected characters'), (page) {
      expect(page.characters, hasLength(1));
      expect(page.characters.single.name, 'Rick Sanchez');
      expect(page.characters.single.originName, 'Earth (C-137)');
      expect(page.hasNext, isFalse);
    });
  });
}

const _page = <String, dynamic>{
  'info': {'count': 1, 'pages': 1, 'next': null, 'prev': null},
  'results': [
    {
      'id': 1,
      'name': 'Rick Sanchez',
      'status': 'Alive',
      'species': 'Human',
      'type': '',
      'gender': 'Male',
      'origin': {'name': 'Earth (C-137)', 'url': 'https://example.com/1'},
      'location': {'name': 'Citadel of Ricks', 'url': 'https://example.com/3'},
      'image': 'https://example.com/1.jpeg',
      'episode': ['https://example.com/episode/1'],
      'url': 'https://example.com/character/1',
      'created': '2017-11-04T18:48:46.250Z',
    },
  ],
};
