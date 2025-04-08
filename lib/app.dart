import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sol_fib_bot/blocs/wallet/wallet_bloc.dart';
import 'package:sol_fib_bot/screens/chart_screen/chart_screen.dart';
import 'screens/settings_screen.dart';
import 'screens/history_screen.dart';
import 'screens/wallet_screen/wallet_screen.dart';

class SolFibBotApp extends StatelessWidget {
  const SolFibBotApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SOL Fibonacci Bot',
      theme: ThemeData(
        useMaterial3: true,
        brightness: Brightness.dark,
        colorScheme: ColorScheme.dark(
          primary: Colors.blue[400]!,
          secondary: Colors.tealAccent,
          surface: const Color(0xFF1E1E1E),
        ),
        cardTheme: CardTheme(
          color: const Color(0xFF1E1E1E),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF1E1E1E),
          elevation: 0,
        ),
        navigationBarTheme: NavigationBarThemeData(
          backgroundColor: const Color(0xFF1E1E1E),
          indicatorColor: Colors.blue[400]!.withValues(alpha: 0.3),
        ),
      ),
      home: const AppNavigator(),
    );
  }
}

class AppNavigator extends StatefulWidget {
  const AppNavigator({super.key});

  @override
  State<AppNavigator> createState() => _AppNavigatorState();
}

class _AppNavigatorState extends State<AppNavigator> {
  int _currentIndex = 0;

  final List<Widget> _screens =  [
    const ChartScreen(),
    const WalletScreen(),
    const SettingsScreen(),
    HistoryScreen(),
  ];

  final List<_NavItem> _navItems = const [
    _NavItem(routeIndex: 0, label: 'Chart', icon: Icons.show_chart_outlined, selectedIcon: Icons.show_chart),
    _NavItem(routeIndex: 1, label: 'Wallet', icon: Icons.account_balance_wallet_outlined, selectedIcon: Icons.account_balance_wallet),
    _NavItem(routeIndex: 2, label: 'Settings', icon: Icons.settings_outlined, selectedIcon: Icons.settings),
    _NavItem(routeIndex: 3, label: 'History', icon: Icons.history_outlined, selectedIcon: Icons.history),
  ];

  @override
  Widget build(BuildContext context) {
    final isWalletConnected = context.select<WalletBloc, bool>(
          (bloc) => bloc.state is WalletConnected,
    );
    return Scaffold(
      body: AnimatedSwitcher(
        duration: const Duration(milliseconds: 300),
        child: _screens[_currentIndex],
      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: _currentIndex,
        onDestinationSelected: (index) {
          final tappedItem = _navItems[index];
          final isHistory = tappedItem.label == 'History';

          if (isHistory && !isWalletConnected) return;          setState(() {
            _currentIndex = index;
          });
        },
        destinations: _navItems
            .map((item){
          final isDisabled = item.label == 'History' && !isWalletConnected;
          return NavigationDestination(
          icon: Icon(item.icon, color: isDisabled ? Colors.grey : null),
          selectedIcon: Icon(item.selectedIcon, color: isDisabled ? Colors.grey : null),
          label: item.label,
        );})
            .toList(),
      ),
    );
  }
}

class _NavItem {
  final int routeIndex;
  final String label;
  final IconData icon;
  final IconData selectedIcon;

  const _NavItem({
    required this.routeIndex,
    required this.label,
    required this.icon,
    required this.selectedIcon,
  });
}
