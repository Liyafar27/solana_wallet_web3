import 'package:flutter/material.dart';
import 'package:sol_fib_bot/domain/models/fibo_levels.dart';

class FiboLevelsList extends StatelessWidget {
  const FiboLevelsList({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: Replace with real data
    final fiboLevels = FiboLevels(high: 22.50, low: 20.50);

    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: fiboLevels.levels.length,
      itemBuilder: (context, index) {
        final level = fiboLevels.levels.entries.elementAt(index);
        final isCurrentLevel = index == 2; // TODO: Replace with real logic

        return Container(
          margin: const EdgeInsets.only(bottom: 8),
          child: Card(
            elevation: 0,
            color: isCurrentLevel 
                ? Theme.of(context).colorScheme.primary.withValues(alpha:0.1)
                : null,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 4,
                        height: 40,
                        decoration: BoxDecoration(
                          color: _getLevelColor(level.key),
                          borderRadius: BorderRadius.circular(2),
                        ),
                      ),
                      const SizedBox(width: 16),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Level ${(level.key * 100).toStringAsFixed(1)}%',
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            '\$${level.value.toStringAsFixed(2)}',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey[400],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  if (isCurrentLevel)
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 6,
                      ),
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.primary.withValues(alpha: 0.2),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Text(
                        'Current',
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.primary,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Color _getLevelColor(double level) {
    if (level <= 0.236) return Colors.red;
    if (level <= 0.382) return Colors.orange;
    if (level <= 0.5) return Colors.yellow;
    if (level <= 0.618) return Colors.green;
    return Colors.blue;
  }
} 