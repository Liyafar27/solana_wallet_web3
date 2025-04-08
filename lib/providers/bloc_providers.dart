import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sol_fib_bot/blocs/chart_data/chart_data_bloc.dart';
import 'package:sol_fib_bot/blocs/history_transaction_bloc/history_transaction_bloc.dart';
import 'package:sol_fib_bot/blocs/wallet/wallet_bloc.dart';
import 'package:sol_fib_bot/domain/repositories/chart_repositories/chart_repository.dart';
import 'package:sol_fib_bot/domain/repositories/wallet/phantom_repository.dart';

final blocProviders = [
  BlocProvider<ChartDataBloc>(create: (context) {
    return ChartDataBloc(
      repository: context.read<ChartRepository>(),
    );
  }),
  BlocProvider<WalletBloc>(
    create: (context) => WalletBloc(
      phantomService: context.read<PhantomRepository>(),
    ),
  ),
  BlocProvider<HistoryTransactionBloc>(
    create: (context) => HistoryTransactionBloc(
      phantomRepository: context.read<PhantomRepository>(),
    ),
  )
];
