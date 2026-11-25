import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:madd_models/madd_models.dart';
import 'package:material_ui/material_ui.dart';
import 'package:reto_madd_systems/app/router/router.gr.dart';
import 'package:reto_madd_systems/l10n/l10n.dart';
import 'package:reto_madd_systems/session/cubit/phone_cubit.dart';
import 'package:reto_madd_systems/session/formz/phone_input.dart';

/// Pide el celular que identifica el espacio de trabajo.
@RoutePage()
class PhoneScreen extends StatelessWidget {
  /// Crea la pantalla.
  const PhoneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(create: (_) => PhoneCubit(), child: const _PhoneView());
  }
}

class _PhoneView extends StatelessWidget {
  const _PhoneView();

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final theme = Theme.of(context);
    return BlocListener<PhoneCubit, PhoneState>(
      listenWhen: (previous, current) =>
          previous.status != FormzSubmissionStatus.success &&
          current.status == FormzSubmissionStatus.success,
      listener: (context, state) {
        final phone = PhoneVerification.normalizePhone(state.phone.value);
        unawaited(context.router.push(VerifyRoute(phone: phone)));
      },
      child: Scaffold(
        body: SafeArea(
          child: CustomScrollView(
            slivers: [
              SliverPadding(
                padding: const EdgeInsets.fromLTRB(24, 48, 24, 24),
                sliver: SliverList.list(
                  children: [
                    Icon(
                      Icons.explore,
                      size: 42,
                      color: theme.colorScheme.primary,
                    ),
                    const SizedBox(height: 24),
                    Text(
                      l10n.phoneTitle,
                      style: theme.textTheme.headlineMedium,
                    ),
                    const SizedBox(height: 12),
                    Text(l10n.phoneBody, style: theme.textTheme.bodyLarge),
                    const SizedBox(height: 32),
                    BlocBuilder<PhoneCubit, PhoneState>(
                      buildWhen: (previous, current) =>
                          previous.phone != current.phone ||
                          previous.isValidated != current.isValidated,
                      builder: (context, state) {
                        final error = state.isValidated
                            ? state.phone.displayError
                            : null;
                        return TextField(
                          keyboardType: TextInputType.phone,
                          textInputAction: TextInputAction.done,
                          decoration: InputDecoration(
                            labelText: l10n.phoneLabel,
                            errorText: error == PhoneInputError.invalid
                                ? l10n.phoneInvalid
                                : null,
                          ),
                          onChanged: context.read<PhoneCubit>().changed,
                          onSubmitted: (_) =>
                              context.read<PhoneCubit>().submit(),
                        );
                      },
                    ),
                    const SizedBox(height: 24),
                    FilledButton(
                      onPressed: context.read<PhoneCubit>().submit,
                      child: Text(l10n.continueAction),
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
