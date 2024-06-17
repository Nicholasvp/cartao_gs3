import 'package:cartao_gs3/common/theme/app_theme.dart';
import 'package:cartao_gs3/modules/home/widgets/cartoes_carousel.dart';
import 'package:cartao_gs3/modules/home/widgets/home_app_bar.dart';
import 'package:cartao_gs3/modules/home/widgets/meus_favoritos.dart';
import 'package:cartao_gs3/modules/home/widgets/ultimos_lancamentos.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.center,
          colors: [
            AppTheme.blueBackground,
            AppTheme.backgroundColor,
          ],
        ),
      ),
      child: const SafeArea(
        child: Column(
          children: [
            HomeAppBar(),
            CartoesCarousel(),
            MeusFavoritos(),
            Expanded(
              child: UltimosLancamentos(),
            ),
          ],
        ),
      ),
    );
  }
}
