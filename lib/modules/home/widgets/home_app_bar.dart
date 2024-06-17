import 'package:cartao_gs3/common/theme/app_icons.dart';
import 'package:cartao_gs3/common/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          Row(
            children: [
              IconButton(
                icon: SvgPicture.asset(AppIcons.menu),
                onPressed: () {},
              ),
              const Spacer(
                flex: 2,
              ),
              Text(
                'Olá, Cliente',
                style: AppTheme.textTheme.titleMedium!.copyWith(color: Colors.white),
              ),
              const Spacer(),
              IconButton(
                icon: SvgPicture.asset(AppIcons.chat),
                onPressed: () {},
                visualDensity: VisualDensity.compact,
              ),
              IconButton(
                icon: SvgPicture.asset(AppIcons.notificacoes),
                onPressed: () {},
                visualDensity: VisualDensity.compact,
              ),
            ],
          ),
          const Divider(
            color: Colors.white,
            thickness: 1,
          )
        ],
      ),
    );
  }
}
