import 'package:cartao_gs3/common/theme/app_theme.dart';
import 'package:cartao_gs3/modules/home/controllers/lancamentos_controller.dart';
import 'package:cartao_gs3/modules/home/states/lancamento_state.dart';
import 'package:cartao_gs3/modules/home/widgets/categoria_icon.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class UltimosLancamentos extends StatelessWidget {
  const UltimosLancamentos({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = context.watch<LancamentosController>();
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          Divider(
            color: Colors.grey.withOpacity(0.3),
            thickness: 1,
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Ultimos Lançamentos',
                style: AppTheme.textTheme.labelLarge,
              ),
              CupertinoButton(
                onPressed: () {},
                child: Row(
                  children: [
                    Text(
                      'Ver todos',
                      style: AppTheme.textTheme.labelSmall,
                    ),
                    const Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: Colors.blue,
                    )
                  ],
                ),
              )
            ],
          ),
          Expanded(
            child: ValueListenableBuilder<LancamentosState>(
              valueListenable: controller,
              builder: (context, state, _) {
                if (state is LancamentosLoading) {
                  return const Center(child: CircularProgressIndicator());
                }
                if (state is LancamentosError) {
                  return Center(child: Text(state.message));
                }
                if (state is LancamentosLoaded) {
                  return ListView.builder(
                    itemCount: state.lancamentos.length,
                    itemBuilder: (context, index) {
                      final lancamento = state.lancamentos[index];
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          if (index > 0) ...[
                            if (lancamento.datetime.day != state.lancamentos[index - 1].datetime.day)
                              Text(DateFormat('d MMM').format(lancamento.datetime),
                                  style: AppTheme.textTheme.bodyMedium!.copyWith(color: Colors.blue)),
                          ] else ...[
                            Text(DateFormat('d MMM').format(lancamento.datetime),
                                style: AppTheme.textTheme.bodyMedium!.copyWith(color: Colors.blue)),
                          ],
                          const SizedBox(height: 12),
                          Row(
                            children: [
                              Container(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                  color: Colors.grey.withOpacity(0.1),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: CategoriaIcon(categoria: lancamento.categoria),
                              ),
                              const SizedBox(width: 25), // Add this line
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    lancamento.titulo,
                                    style: AppTheme.textTheme.bodyMedium,
                                  ),
                                  const SizedBox(height: 5), // Add this line
                                  Text(
                                    '${DateFormat('d/MM').format(lancamento.datetime)} às ${DateFormat('Hm').format(lancamento.datetime)}',
                                    style: AppTheme.textTheme.bodySmall,
                                  ),
                                ],
                              ),
                              const Spacer(),
                              const SizedBox(width: 25), // Add this line
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    NumberFormat.currency(locale: 'pt_BR', symbol: 'R\$').format(lancamento.valor),
                                    style: AppTheme.textTheme.bodyMedium,
                                  ),
                                  if (lancamento.parcelas > 1)
                                    Text(
                                      "em ${lancamento.parcelas}x",
                                      style: AppTheme.textTheme.bodySmall,
                                    ),
                                ],
                              )
                            ],
                          ),
                          const Divider()
                        ],
                      );
                    },
                  );
                }
                return Container();
              },
            ),
          )
        ],
      ),
    );
  }
}
