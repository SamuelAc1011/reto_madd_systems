import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:material_ui/material_ui.dart';
import 'package:reto_madd_systems/app/router/router.gr.dart';
import 'package:reto_madd_systems/l10n/l10n.dart';
import 'package:reto_madd_systems/session/bloc/session_bloc.dart';
import 'package:reto_madd_systems/session/bloc/session_event.dart';
import 'package:reto_madd_systems/session/cubit/verify_cubit.dart';
import 'package:reto_madd_systems/session/formz/code_input.dart';
import 'package:reto_madd_systems/session/phone_format.dart';

/// Comprueba el código simulado y abre el espacio.
@RoutePage()
class VerifyScreen extends StatelessWidget {
  /// Crea la pantalla para [phone] ya normalizado.
  const VerifyScreen({required this.phone, super.key});

  /// Celular de 10 dígitos.
  final String phone;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => VerifyCubit(phone),
      child: _VerifyView(phone: phone),
    );
  }
}

class _VerifyView extends StatelessWidget {
  const _VerifyView({required this.phone});

  final String phone;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final theme = Theme.of(context);
    return BlocListener<VerifyCubit, VerifyState>(
      listenWhen: (previous, current) =>
          previous.status != FormzSubmissionStatus.success &&
          current.status == FormzSubmissionStatus.success,
      listener: (context, state) {
        context.read<SessionBloc>().add(SessionSignedIn(phone));
        unawaited(context.router.replaceAll([const ExplorerRoute()]));
      },
      child: Scaffold(
        appBar: AppBar(),
        body: SafeArea(
          child: CustomScrollView(
            slivers: [
              SliverPadding(
                padding: const EdgeInsets.fromLTRB(24, 12, 24, 24),
                sliver: SliverList.list(
                  children: [
                    Text(
                      l10n.verifyTitle,
                      style: theme.textTheme.headlineMedium,
                    ),
                    const SizedBox(height: 8),
                    Text(
                      formatPhone(phone),
                      style: theme.textTheme.titleMedium?.copyWith(
                        color: theme.colorScheme.primary,
                      ),
                    ),
                    const SizedBox(height: 12),
                    Text(l10n.verifyBody, style: theme.textTheme.bodyLarge),
                    const SizedBox(height: 32),
                    BlocBuilder<VerifyCubit, VerifyState>(
                      buildWhen: (previous, current) =>
                          previous.code != current.code ||
                          previous.isValidated != current.isValidated ||
                          previous.status != current.status,
                      builder: (context, state) {
                        final formatError = state.isValidated
                            ? state.code.displayError
                            : null;
                        final mismatch =
                            state.status == FormzSubmissionStatus.failure;
                        return TextField(
                          keyboardType: TextInputType.number,
                          maxLength: 4,
                          textInputAction: TextInputAction.done,
                          decoration: InputDecoration(
                            labelText: l10n.codeLabel,
                            counterText: '',
                            errorText:
                                formatError == CodeInputError.invalid ||
                                    mismatch
                                ? l10n.codeInvalid
                                : null,
                          ),
                          onChanged: context.read<VerifyCubit>().changed,
                          onSubmitted: (_) =>
                              context.read<VerifyCubit>().submit(),
                        );
                      },
                    ),
                    const SizedBox(height: 24),
                    FilledButton(
                      onPressed: context.read<VerifyCubit>().submit,
                      child: Text(l10n.enterAction),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
