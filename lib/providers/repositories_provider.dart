import 'package:flutter_bloc/flutter_bloc.dart' show RepositoryProvider;
import 'package:sol_fib_bot/data/repositories/phantom_repository_impl.dart';
import 'package:sol_fib_bot/data/repositories/swap_repository_impl.dart';
import 'package:sol_fib_bot/domain/repositories/chart_repositories/chart_repository.dart';
import 'package:sol_fib_bot/domain/repositories/wallet/phantom_repository.dart';
import 'package:sol_fib_bot/domain/repositories/wallet/swap_repository.dart'
    show SwapRepository;

import '../data/repositories/chart_repository_impl.dart';

final repositoryProviders = [
  RepositoryProvider<SwapRepository>(create: (context) => SwapRepositoryImpl()),
  RepositoryProvider<ChartRepository>(
    create: (context) => ChartRepositoryImpl(),
  ),
  RepositoryProvider<PhantomRepository>(
    create: (context) => PhantomRepositoryImpl(),
  ),
];
