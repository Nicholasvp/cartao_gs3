import 'package:cartao_gs3/modules/models/cartao_model.dart';

abstract class CartaoState {}

class CardsInitial extends CartaoState {}

class CardsLoading extends CartaoState {}

class CardsLoaded extends CartaoState {
  final List<CartaoModel> cards;

  CardsLoaded(this.cards);
}

class CardsError extends CartaoState {
  final String message;

  CardsError(this.message);
}
