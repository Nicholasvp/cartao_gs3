import 'package:cartao_gs3/common/helpers/print_helper.dart';
import 'package:cartao_gs3/common/mocks/lancamentos_mock.dart';
import 'package:cartao_gs3/modules/models/lancamentos_model.dart';

class LancamentosService {
  Future<List<LancamentosModel>?> fetchLancamentos(int index) async {
    await Future.delayed(const Duration(seconds: 2));
    List<LancamentosModel> response = lancamentosCartoes[index].map((e) => LancamentosModel.fromMap(e)).toList();
    printarListaReponse(response);
    return response;
  }
}
