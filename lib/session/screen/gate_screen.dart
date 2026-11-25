import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_ui/material_ui.dart';
import 'package:reto_madd_systems/app/router/router.gr.dart';
import 'package:reto_madd_systems/l10n/l10n.dart';
import 'package:reto_madd_systems/session/bloc/session_bloc.dart';
import 'package:reto_madd_systems/session/cubit/gate_cubit.dart';

/// Decide si hay un espacio activo antes de mostrar el resto.
@RoutePage()
class GateScreen extends StatelessWidget {
  /// Crea la pantalla de arranque.
  const GateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GateCubit(context.read<SessionBloc>()),
      child: const _GateView(),
    );
  }
}

class _GateView extends StatelessWidget {
  const _GateView();

  @override
  Widget build(BuildContext context) {
    return BlocListener<GateCubit, GateTarget>(
      listenWhen: (previous, current) => current != GateTarget.pending,
      listener: (context, target) {
        final route = target == GateTarget.phone
            ? const PhoneRoute()
            : const ExplorerRoute();
        unawaited(context.router.replaceAll([route]));
      },
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(Icons.public, size: 48),
              const SizedBox(height: 16),
              Text(context.l10n.appTitle),
              const SizedBox(height: 24),
              const CircularProgressIndicator(),
            ],
          ),
        ),
      ),
    );
  }
}
