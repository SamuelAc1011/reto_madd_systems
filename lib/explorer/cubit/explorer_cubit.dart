import 'package:flutter_bloc/flutter_bloc.dart';

/// Pestaña visible del espacio de trabajo.
class ExplorerCubit extends Cubit<int> {
  /// Empieza en la búsqueda.
  ExplorerCubit() : super(0);

  /// Cambia a la pestaña [index].
  void select(int index) => emit(index);
}
