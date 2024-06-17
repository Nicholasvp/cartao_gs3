import 'package:cartao_gs3/common/theme/app_icons.dart';
import 'package:cartao_gs3/common/theme/app_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MeusFavoritos extends StatelessWidget {
  const MeusFavoritos({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          Divider(
            color: Colors.white.withOpacity(0.5),
            thickness: 1,
            height: 20,
          ),
          Row(
            children: [
              Text(
                'Meus Favoritos',
                style: AppTheme.textTheme.labelLarge,
              ),
              const Spacer(),
              CupertinoButton(
                onPressed: () {},
                padding: EdgeInsets.zero,
                child: Row(
                  children: [
                    Text(
                      'Personalizar',
                      style: AppTheme.textTheme.labelSmall,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: SvgPicture.asset(AppIcons.grid),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                MeusFavoritosButtom(
                  label: 'Cartão Vitual',
                  onTap: () {},
                  icon: AppIcons.cartaoVirtual,
                ),
                const SizedBox(
                  width: 35,
                ),
                MeusFavoritosButtom(
                  label: 'Cartão Adicional',
                  onTap: () {},
                  icon: AppIcons.cartaoAdicional,
                ),
                const SizedBox(
                  width: 35,
                ),
                MeusFavoritosButtom(
                  label: 'Seguro',
                  onTap: () {},
                  icon: AppIcons.seguro,
                ),
                const SizedBox(
                  width: 35,
                ),
                MeusFavoritosButtom(
                  label: 'Pacotes Sms',
                  onTap: () {},
                  icon: AppIcons.email,
                ),
                const SizedBox(
                  width: 35,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class MeusFavoritosButtom extends StatelessWidget {
  const MeusFavoritosButtom({
    super.key,
    required this.label,
    required this.onTap,
    required this.icon,
  });
  final String label;
  final VoidCallback onTap;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        borderRadius: BorderRadius.circular(10),
        onTap: onTap,
        child: Column(
          children: [
            Container(
              width: 66,
              height: 66,
              decoration: BoxDecoration(
                color: AppTheme.surfaceColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: SvgPicture.asset(
                  icon,
                  width: 30,
                  height: 30,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            Text(
              label,
              style: AppTheme.textTheme.bodySmall,
            )
          ],
        ),
      ),
    );
  }
}
