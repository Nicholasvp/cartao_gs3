import 'package:cartao_gs3/common/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CartaoPage extends StatelessWidget {
  const CartaoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Center(
              child: Text(
            'Cartão',
            style: AppTheme.textTheme.displayMedium,
          )),
        ],
      ),
    );
  }
}
