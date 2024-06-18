import 'package:cartao_gs3/common/theme/app_icons.dart';
import 'package:cartao_gs3/common/theme/app_theme.dart';
import 'package:cartao_gs3/modules/cart%C3%A3o/pages/cartao_page.dart';
import 'package:cartao_gs3/modules/fatura/pages/fatura_page.dart';
import 'package:cartao_gs3/modules/home/controllers/cartao_controller.dart';
import 'package:cartao_gs3/modules/home/controllers/lancamentos_controller.dart';
import 'package:cartao_gs3/modules/home/pages/home_tab.dart';
import 'package:cartao_gs3/modules/shop/pages/shop_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<CartaoController>().fetchCards();
      context.read<LancamentosController>().fetchLancamentos(0);
    });
    super.initState();
  }

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: currentIndex,
        children: const [
          HomeTab(),
          FaturaPage(),
          CartaoPage(),
          ShopPage(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        elevation: 30,
        showUnselectedLabels: true,
        showSelectedLabels: true,
        selectedItemColor: AppTheme.primaryColor,
        unselectedItemColor: Colors.grey,
        selectedLabelStyle: const TextStyle(
          fontSize: 9,
        ),
        unselectedLabelStyle: const TextStyle(
          fontSize: 9,
        ),
        enableFeedback: true,
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              AppIcons.home,
              colorFilter: const ColorFilter.mode(Colors.grey, BlendMode.srcIn),
            ),
            activeIcon: SvgPicture.asset(AppIcons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              AppIcons.fatura,
              colorFilter: const ColorFilter.mode(Colors.grey, BlendMode.srcIn),
            ),
            activeIcon: SvgPicture.asset(AppIcons.fatura),
            label: 'Fatura',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              AppIcons.cartao,
              colorFilter: const ColorFilter.mode(Colors.grey, BlendMode.srcIn),
            ),
            activeIcon: SvgPicture.asset(AppIcons.cartao),
            label: 'Cartão',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              AppIcons.shop,
              colorFilter: const ColorFilter.mode(Colors.grey, BlendMode.srcIn),
            ),
            activeIcon: SvgPicture.asset(AppIcons.shop),
            label: 'Shop',
          ),
        ],
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
    );
  }
}
