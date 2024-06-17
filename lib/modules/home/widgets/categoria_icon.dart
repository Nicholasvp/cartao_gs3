import 'package:cartao_gs3/common/enums/categoria_enums.dart';
import 'package:cartao_gs3/common/theme/app_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

class CategoriaIcon extends StatelessWidget {
  const CategoriaIcon({super.key, required this.categoria});
  final Categoria categoria;

  @override
  Widget build(BuildContext context) {
    return switch (categoria) {
      Categoria.tech => Center(
          child: SvgPicture.asset(
            AppIcons.celular,
          ),
        ),
      Categoria.transporte => Center(
          child: SvgPicture.asset(AppIcons.carro),
        ),
      Categoria.mercado => Center(
          child: SvgPicture.asset(AppIcons.mercado),
        ),
      Categoria.gasto => Center(child: SvgPicture.asset(AppIcons.cartao))
    };
  }
}
