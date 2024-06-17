import 'package:cartao_gs3/modules/home/states/lancamento_state.dart';
import 'package:cartao_gs3/modules/service/lancamentos_service.dart';
import 'package:flutter/material.dart';

class LancamentosController extends ValueNotifier<LancamentosState> {
  LancamentosController({
    required this.service,
  }) : super(LancamentosInitial());
  final LancamentosService service;

  Future<void> fetchLancamentos() async {
    value = LancamentosLoading();
    try {
      final lancamentos = await service.fetchLancamentos();
      value = LancamentosLoaded(lancamentos!);
    } catch (e) {
      value = LancamentosError('Erro ao buscar os lançamentos');
    }
  }
}
