import 'package:cartao_gs3/common/theme/app_theme.dart';
import 'package:cartao_gs3/modules/home/controllers/cartao_controller.dart';
import 'package:cartao_gs3/modules/home/controllers/lancamentos_controller.dart';
import 'package:cartao_gs3/modules/home/states/cartao_state.dart';
import 'package:cartao_gs3/modules/home/widgets/cartao_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:infinite_carousel/infinite_carousel.dart';
import 'package:provider/provider.dart';
import 'package:shimmer_animation/shimmer_animation.dart';

class CartoesCarousel extends StatelessWidget {
  const CartoesCarousel({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final cartaoController = context.watch<CartaoController>();
    final lancamentosController = context.watch<LancamentosController>();
    final size = MediaQuery.of(context).size;
    return ValueListenableBuilder<CartaoState>(
      valueListenable: cartaoController,
      builder: (context, state, _) {
        if (state is CardsLoading) {
          return Shimmer(
            duration: const Duration(seconds: 1),
            color: AppTheme.backgroundColor,
            colorOpacity: 1,
            enabled: true,
            direction: const ShimmerDirection.fromLTRB(),
            child: Container(
              height: 150,
              width: 350,
              decoration: BoxDecoration(
                color: AppTheme.primaryColor,
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          );
        }
        if (state is CardsError) {
          return Center(child: Text(state.message));
        }
        if (state is CardsLoaded) {
          return SizedBox(
            width: double.infinity,
            height: 150,
            child: InfiniteCarousel.builder(
              itemCount: state.cards.length,
              itemExtent: size.width * 0.9,
              center: true,
              anchor: 1,
              velocityFactor: 0.2,
              onIndexChanged: (index) {
                lancamentosController.fetchLancamentos(index);
              },
              controller: cartaoController.store.infiniteScrollController,
              axisDirection: Axis.horizontal,
              loop: false,
              itemBuilder: (context, itemIndex, realIndex) {
                final cartaoModel = state.cards[itemIndex];
                return CartaoWidget(cartaoModel: cartaoModel);
              },
            ),
          );
        }
        return const SizedBox();
      },
    );
  }
}
