import 'package:cartao_gs3/common/theme/app_theme.dart';
import 'package:cartao_gs3/modules/home/controllers/lancamentos_controller.dart';
import 'package:cartao_gs3/modules/home/states/lancamento_state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
          ValueListenableBuilder<LancamentosState>(
            valueListenable: controller,
            builder: (context, state, _) {
              if (state is LancamentosLoading) {
                return const Center(child: CircularProgressIndicator());
              }
              if (state is LancamentosError) {
                return Center(child: Text(state.message));
              }
              if (state is LancamentosLoaded) {
                return Expanded(
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: state.lancamentos.length,
                    itemBuilder: (context, index) {
                      final lancamento = state.lancamentos[index];
                      return ListTile(
                        title: Text(lancamento.titulo),
                        subtitle: Text(lancamento.datetime.toIso8601String()),
                        trailing: Text(
                          '${lancamento.valor}',
                          style: const TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      );
                    },
                  ),
                );
              }
              return Container();
            },
          )
        ],
      ),
    );
  }
}
