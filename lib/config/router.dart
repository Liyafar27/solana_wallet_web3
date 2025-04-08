import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sol_fib_bot/screens/chart_screen/chart_screen.dart';
import '../screens/settings_screen.dart';
import '../screens/history_screen.dart';
import 'package:sol_fib_bot/screens/wallet_screen/wallet_screen.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey = GlobalKey<NavigatorState>();
final GlobalKey<NavigatorState> _shellNavigatorKey = GlobalKey<NavigatorState>();


const List<_NavItem> _navItems = [
  _NavItem(path: '/', label: 'Chart', icon: Icons.show_chart_outlined, selectedIcon: Icons.show_chart),
  _NavItem(path: '/wallet', label: 'Wallet', icon: Icons.account_balance_wallet_outlined, selectedIcon: Icons.account_balance_wallet),
  _NavItem(path: '/settings', label: 'Settings', icon: Icons.settings_outlined, selectedIcon: Icons.settings),
  _NavItem(path: '/history', label: 'History', icon: Icons.history_outlined, selectedIcon: Icons.history),
];

final router = GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: '/',
  routes: [
    ShellRoute(
      navigatorKey: _shellNavigatorKey,
      builder: (context, state, child) => ScaffoldWithNavBar(child: child),
      routes: _navItems
          .map((item) => GoRoute(
        path: item.path,
        name: item.label.toLowerCase(),
        builder: (context, state) => _getScreen(item.path),
      ))
          .toList(),
    ),
  ],
);

Widget _getScreen(String path) {
  switch (path) {
    case '/wallet':
      return  const WalletScreen();
    case '/settings':
      return const SettingsScreen();
    case '/history':
      return  HistoryScreen();
    case '/':
    default:
      return const ChartScreen();
  }
}

class ScaffoldWithNavBar extends StatelessWidget {
  const ScaffoldWithNavBar({required this.child, super.key});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: child,
      bottomNavigationBar: NavigationBar(
        selectedIndex: _calculateSelectedIndex(context),
        onDestinationSelected: (index) => GoRouter.of(context).go(_navItems[index].path),
        destinations: _navItems
            .map((item) => NavigationDestination(
          icon: Icon(item.icon),
          selectedIcon: Icon(item.selectedIcon),
          label: item.label,
        ))
            .toList(),
      ),
    );
  }

  int _calculateSelectedIndex(BuildContext context) {
    final location = GoRouterState.of(context).uri.path;
    return _navItems.indexWhere((item) => item.path == location);
  }
}

class _NavItem {
  final String path;
  final String label;
  final IconData icon;
  final IconData selectedIcon;

  const _NavItem({
    required this.path,
    required this.label,
    required this.icon,
    required this.selectedIcon,
  });
}
