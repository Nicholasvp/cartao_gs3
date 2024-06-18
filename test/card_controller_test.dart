import 'package:cartao_gs3/modules/home/controllers/cartao_controller.dart';
import 'package:cartao_gs3/modules/home/states/cartao_state.dart';
import 'package:cartao_gs3/modules/home/store/card_store.dart';
import 'package:cartao_gs3/modules/service/cartao_service.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('CartaoController fetchCards', () async {
    final service = CartaoService();
    final controller = CartaoController(service: service, store: CartaoStore());
    await controller.fetchCards();
    expect(controller.value, isA<CardsLoaded>());
  });
}
