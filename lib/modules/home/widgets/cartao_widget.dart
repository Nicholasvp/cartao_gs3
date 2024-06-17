import 'package:cartao_gs3/common/theme/app_theme.dart';
import 'package:cartao_gs3/modules/home/controllers/cartao_controller.dart';
import 'package:cartao_gs3/modules/home/states/cards_state.dart';
import 'package:cartao_gs3/modules/models/cartao_model.dart';
import 'package:flutter/material.dart';
import 'package:from_css_color/from_css_color.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class CartaoWidget extends StatelessWidget {
  const CartaoWidget({
    super.key,
    required this.cartaoModel,
  });

  final CartaoModel cartaoModel;

  @override
  Widget build(BuildContext context) {
    final controller = context.watch<CartaoController>();
    return ValueListenableBuilder<CartaoState>(
        valueListenable: controller,
        builder: (context, state, _) {
          return Container(
              margin: const EdgeInsets.only(
                right: 15,
              ),
              padding: const EdgeInsets.all(13),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    fromCssColor(cartaoModel.cor ?? '#2B66BC').withOpacity(0.5),
                    fromCssColor(cartaoModel.cor ?? '#2B66BC'),
                    fromCssColor(cartaoModel.cor ?? '#2B66BC'),
                  ],
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Align(
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        if (controller.isVisible) ...[
                          Image.asset(
                            'assets/images/${cartaoModel.bandeira.toLowerCase()}_logo.png',
                            width: 50,
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                        ],
                        if (!controller.isVisible)
                          Container(
                            width: 80,
                            height: 50,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                            ),
                          ),
                        Flexible(
                          child: ListTile(
                            title: Text(
                              controller.isVisible ? cartaoModel.number : cartaoModel.numeroMascarado,
                              style: AppTheme.textTheme.labelLarge!.copyWith(color: Colors.white),
                            ),
                            subtitle: Text(
                              cartaoModel.nome,
                              style: AppTheme.textTheme.labelLarge!.copyWith(color: Colors.white),
                            ),
                            trailing: InkWell(
                              child: Icon(
                                controller.isVisible ? Icons.visibility_off : Icons.remove_red_eye_outlined,
                                color: Colors.blue,
                              ),
                              onTap: () {
                                controller.isVisible = !controller.isVisible;
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                    const Divider(
                      color: Colors.white,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text(
                              "Limite disponível",
                              style: AppTheme.textTheme.labelSmall!.copyWith(color: Colors.white),
                            ),
                            Text(
                              NumberFormat.currency(locale: 'pt_BR', symbol: 'R\$').format(cartaoModel.limiteDisponivel),
                              style: AppTheme.textTheme.labelLarge!.copyWith(
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              "Melhor dia de compra",
                              style: AppTheme.textTheme.labelSmall!.copyWith(color: Colors.white),
                            ),
                            Text(
                              cartaoModel.melhorDiaDeCompra,
                              style: AppTheme.textTheme.labelLarge!.copyWith(
                                color: Colors.white,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ));
        });
  }
}
