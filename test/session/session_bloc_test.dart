import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:reto_madd_systems/session/bloc/session_bloc.dart';
import 'package:reto_madd_systems/session/bloc/session_event.dart';
import 'package:reto_madd_systems/session/bloc/session_state.dart';

import '../helpers/memory_storage.dart';

void main() {
  setUp(() {
    HydratedBloc.storage = MemoryStorage();
  });

  blocTest<SessionBloc, SessionState>(
    'remembers the query of the active phone and keeps it after sign out',
    build: SessionBloc.new,
    act: (bloc) {
      bloc
        ..add(const SessionSignedIn('5512345678'))
        ..add(const SessionQueryRemembered('rick'))
        ..add(const SessionSignedOut());
    },
    expect: () => const [
      SessionState(phone: '5512345678'),
      SessionState(
        phone: '5512345678',
        lastQueryByPhone: {'5512345678': 'rick'},
      ),
      SessionState(lastQueryByPhone: {'5512345678': 'rick'}),
    ],
  );
}
