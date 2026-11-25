import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_ui/material_ui.dart';
import 'package:reto_madd_systems/app/router/router.gr.dart';
import 'package:reto_madd_systems/explorer/cubit/explorer_cubit.dart';
import 'package:reto_madd_systems/l10n/l10n.dart';
import 'package:reto_madd_systems/library/screen/library_screen.dart';
import 'package:reto_madd_systems/search/screen/search_screen.dart';
import 'package:reto_madd_systems/session/bloc/session_bloc.dart';
import 'package:reto_madd_systems/session/bloc/session_event.dart';
import 'package:reto_madd_systems/session/phone_format.dart';

/// Espacio del investigador: buscar y consultar lo guardado.
@RoutePage()
class ExplorerScreen extends StatelessWidget {
  /// Crea el espacio.
  const ExplorerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => ExplorerCubit(),
      child: const _ExplorerView(),
    );
  }
}

class _ExplorerView extends StatelessWidget {
  const _ExplorerView();

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final phone = context.watch<SessionBloc>().state.phone ?? '';
    final lastQuery = context.select<SessionBloc, String>(
      (bloc) => bloc.state.lastQueryByPhone[phone] ?? '',
    );
    return BlocBuilder<ExplorerCubit, int>(
      builder: (context, index) {
        return Scaffold(
          appBar: AppBar(
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(l10n.appTitle),
                Text(
                  l10n.workspaceLabel(formatPhone(phone)),
                  style: Theme.of(context).textTheme.labelMedium,
                ),
              ],
            ),
            actions: [
              IconButton(
                tooltip: l10n.signOut,
                onPressed: () {
                  context.read<SessionBloc>().add(const SessionSignedOut());
                  unawaited(context.router.replaceAll([const PhoneRoute()]));
                },
                icon: const Icon(Icons.logout),
              ),
            ],
          ),
          body: IndexedStack(
            index: index,
            children: [
              SearchScreen(initialQuery: lastQuery),
              const LibraryScreen(),
            ],
          ),
          bottomNavigationBar: NavigationBar(
            selectedIndex: index,
            onDestinationSelected: context.read<ExplorerCubit>().select,
            destinations: [
              NavigationDestination(
                icon: const Icon(Icons.search),
                label: l10n.searchTitle,
              ),
              NavigationDestination(
                icon: const Icon(Icons.bookmark_outline),
                selectedIcon: const Icon(Icons.bookmark),
                label: l10n.savedTitle,
              ),
            ],
          ),
        );
      },
    );
  }
}
