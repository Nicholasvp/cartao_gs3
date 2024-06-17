import 'package:cartao_gs3/common/theme/app_theme.dart';
import 'package:flutter/material.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Center(
              child: Text(
            'Shop',
            style: AppTheme.textTheme.displayMedium,
          )),
        ],
      ),
    );
  }
}
