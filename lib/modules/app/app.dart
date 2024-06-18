import 'package:cartao_gs3/common/theme/app_theme.dart';
import 'package:cartao_gs3/modules/home/controllers/cartao_controller.dart';
import 'package:cartao_gs3/modules/home/controllers/lancamentos_controller.dart';
import 'package:cartao_gs3/modules/home/pages/home_page.dart';
import 'package:cartao_gs3/modules/home/store/card_store.dart';
import 'package:cartao_gs3/modules/service/cartao_service.dart';
import 'package:cartao_gs3/modules/service/lancamentos_service.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(create: (_) => CartaoService()),
        Provider(create: (_) => LancamentosService()),
        Provider(create: (_) => CartaoStore()),
        ChangeNotifierProvider(
          create: (context) => CartaoController(
            service: context.read<CartaoService>(),
            store: context.read<CartaoStore>(),
          ),
        ),
        ChangeNotifierProvider(
          create: (context) => LancamentosController(
            service: context.read<LancamentosService>(),
          ),
        )
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
            background: AppTheme.backgroundColor,
            seedColor: AppTheme.primaryColor,
          ),
          textTheme: GoogleFonts.mulishTextTheme(
            Theme.of(context).textTheme,
          ),
          useMaterial3: true,
        ),
        home: const HomePage(),
      ),
    );
  }
}
