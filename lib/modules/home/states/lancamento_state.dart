import 'package:cartao_gs3/modules/models/lancamentos_model.dart';

abstract class LancamentosState {}

class LancamentosInitial extends LancamentosState {}

class LancamentosLoading extends LancamentosState {}

class LancamentosLoaded extends LancamentosState {
  LancamentosLoaded(this.lancamentos);
  final List<LancamentosModel> lancamentos;
}

class LancamentosError extends LancamentosState {
  LancamentosError(this.message);
  final String message;
}
