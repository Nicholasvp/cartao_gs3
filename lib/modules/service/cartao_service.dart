import 'package:cartao_gs3/common/helpers/print_helper.dart';
import 'package:cartao_gs3/common/mocks/cards_mock.dart';
import 'package:cartao_gs3/modules/models/cartao_model.dart';

class CartaoService {
  Future<List<CartaoModel>?> fetchCards() async {
    await Future.delayed(const Duration(seconds: 2));
    List<CartaoModel> response = myCards.map((e) => CartaoModel.fromMap(e)).toList();
    printarListaReponse(response);
    return response;
  }
}
