import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:madd_models/madd_models.dart';
import 'package:reto_madd_systems/library/bloc/library_bloc.dart';
import 'package:reto_madd_systems/library/bloc/library_event.dart';
import 'package:reto_madd_systems/library/bloc/library_state.dart';

import '../helpers/memory_storage.dart';

void main() {
  setUp(() {
    HydratedBloc.storage = MemoryStorage();
  });

  const rick = Character(
    id: 1,
    name: 'Rick Sanchez',
    status: 'Alive',
    species: 'Human',
    gender: 'Male',
    image: 'https://example.com/rick.jpeg',
    originName: 'Earth',
    locationName: 'Citadel',
  );
  const morty = Character(
    id: 2,
    name: 'Morty Smith',
    status: 'Alive',
    species: 'Human',
    gender: 'Male',
    image: 'https://example.com/morty.jpeg',
    originName: 'Earth',
    locationName: 'Earth',
  );

  blocTest<LibraryBloc, LibraryState>(
    'does not mix characters saved by different phones',
    build: LibraryBloc.new,
    act: (bloc) {
      bloc
        ..add(
          const LibraryCharacterToggled(phone: '5511111111', character: rick),
        )
        ..add(
          const LibraryCharacterToggled(phone: '5522222222', character: morty),
        );
    },
    verify: (bloc) {
      expect(bloc.state.charactersByPhone['5511111111'], [rick]);
      expect(bloc.state.charactersByPhone['5522222222'], [morty]);
    },
  );
}
