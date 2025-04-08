// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import '../blocs/chart/chart_bloc.dart';
// import '../blocs/chart/chart_event.dart';
// import '../blocs/chart/chart_state.dart';
//
// class ChartTimeframeSelector extends StatelessWidget {
//   const ChartTimeframeSelector({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 60,
//       padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
//       child: BlocBuilder<ChartBloc, ChartState>(
//         builder: (context, state) {
//           final currentInterval = state is ChartLoaded
//               ? state.currentInterval
//               : '1h';
//
//           return ListView(
//             scrollDirection: Axis.horizontal,
//             children: ['5m', '15m', '1h', '4h', '1d']
//                 .map(
//                   (interval) => Padding(
//                     padding: const EdgeInsets.only(right: 8),
//                     child: ChoiceChip(
//                       label: Text(interval),
//                       selected: currentInterval == interval,
//                       onSelected: (selected) {
//                         if (selected) {
//                           context.read<ChartBloc>().add(
//                                 ChangeTimeframe(interval),
//                               );
//                         }
//                       },
//                     ),
//                   ),
//                 )
//                 .toList(),
//           );
//         },
//       ),
//     );
//   }
// }