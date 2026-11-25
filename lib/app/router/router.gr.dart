// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:auto_route/auto_route.dart' as _i6;
import 'package:madd_models/madd_models.dart' as _i7;
import 'package:material_ui/material_ui.dart' as _i8;
import 'package:reto_madd_systems/character/screen/character_detail_screen.dart'
    as _i1;
import 'package:reto_madd_systems/explorer/screen/explorer_screen.dart' as _i2;
import 'package:reto_madd_systems/session/screen/gate_screen.dart' as _i3;
import 'package:reto_madd_systems/session/screen/phone_screen.dart' as _i4;
import 'package:reto_madd_systems/session/screen/verify_screen.dart' as _i5;

/// generated route for
/// [_i1.CharacterDetailScreen]
class CharacterDetailRoute extends _i6.PageRouteInfo<CharacterDetailRouteArgs> {
  CharacterDetailRoute({
    required _i7.Character character,
    _i8.Key? key,
    List<_i6.PageRouteInfo>? children,
  }) : super(
         CharacterDetailRoute.name,
         args: CharacterDetailRouteArgs(character: character, key: key),
         initialChildren: children,
       );

  static const String name = 'CharacterDetailRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<CharacterDetailRouteArgs>();
      return _i1.CharacterDetailScreen(
        character: args.character,
        key: args.key,
      );
    },
  );
}

class CharacterDetailRouteArgs {
  const CharacterDetailRouteArgs({required this.character, this.key});

  final _i7.Character character;

  final _i8.Key? key;

  @override
  String toString() {
    return 'CharacterDetailRouteArgs{character: $character, key: $key}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! CharacterDetailRouteArgs) return false;
    return character == other.character && key == other.key;
  }

  @override
  int get hashCode => character.hashCode ^ key.hashCode;
}

/// generated route for
/// [_i2.ExplorerScreen]
class ExplorerRoute extends _i6.PageRouteInfo<void> {
  const ExplorerRoute({List<_i6.PageRouteInfo>? children})
    : super(ExplorerRoute.name, initialChildren: children);

  static const String name = 'ExplorerRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i2.ExplorerScreen();
    },
  );
}

/// generated route for
/// [_i3.GateScreen]
class GateRoute extends _i6.PageRouteInfo<void> {
  const GateRoute({List<_i6.PageRouteInfo>? children})
    : super(GateRoute.name, initialChildren: children);

  static const String name = 'GateRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i3.GateScreen();
    },
  );
}

/// generated route for
/// [_i4.PhoneScreen]
class PhoneRoute extends _i6.PageRouteInfo<void> {
  const PhoneRoute({List<_i6.PageRouteInfo>? children})
    : super(PhoneRoute.name, initialChildren: children);

  static const String name = 'PhoneRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i4.PhoneScreen();
    },
  );
}

/// generated route for
/// [_i5.VerifyScreen]
class VerifyRoute extends _i6.PageRouteInfo<VerifyRouteArgs> {
  VerifyRoute({
    required String phone,
    _i8.Key? key,
    List<_i6.PageRouteInfo>? children,
  }) : super(
         VerifyRoute.name,
         args: VerifyRouteArgs(phone: phone, key: key),
         initialChildren: children,
       );

  static const String name = 'VerifyRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<VerifyRouteArgs>();
      return _i5.VerifyScreen(phone: args.phone, key: args.key);
    },
  );
}

class VerifyRouteArgs {
  const VerifyRouteArgs({required this.phone, this.key});

  final String phone;

  final _i8.Key? key;

  @override
  String toString() {
    return 'VerifyRouteArgs{phone: $phone, key: $key}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! VerifyRouteArgs) return false;
    return phone == other.phone && key == other.key;
  }

  @override
  int get hashCode => phone.hashCode ^ key.hashCode;
}
