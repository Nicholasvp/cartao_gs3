// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:cartao_gs3/modules/home/states/cards_state.dart';
import 'package:cartao_gs3/modules/home/store/card_store.dart';
import 'package:cartao_gs3/modules/service/cartao_service.dart';

class CartaoController extends ValueNotifier<CartaoState> {
  CartaoController({
    required this.service,
    required this.store,
  }) : super(CardsInitial());
  final CartaoService service;
  final CardStore store;

  Future<void> fetchCards() async {
    value = CardsLoading();
    try {
      final cards = await service.fetchCards();
      value = CardsLoaded(cards!);
    } catch (e) {
      value = CardsError('Erro ao buscar os cartões');
    }
  }

  bool _isVisible = false;
  bool get isVisible => _isVisible;
  set isVisible(bool value) {
    _isVisible = value;
    notifyListeners();
  }
}
