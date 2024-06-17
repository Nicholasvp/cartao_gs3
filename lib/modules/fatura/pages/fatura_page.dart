import 'package:cartao_gs3/common/theme/app_theme.dart';
import 'package:flutter/material.dart';

class FaturaPage extends StatelessWidget {
  const FaturaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Center(
            child: Text(
              'Fatura',
              style: AppTheme.textTheme.displayMedium,
            ),
          ),
        ],
      ),
    );
  }
}
