import 'package:cartao_gs3/modules/models/cartao_model.dart';

abstract class CardsState {}

class CardsInitial extends CardsState {}

class CardsLoading extends CardsState {}

class CardsLoaded extends CardsState {
  final List<CartaoModel> cards;

  CardsLoaded(this.cards);
}

class CardsError extends CardsState {
  final String message;

  CardsError(this.message);
}
