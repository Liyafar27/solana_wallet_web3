import 'package:flutter/material.dart';

class BotControlPanel extends StatelessWidget {
  final bool isActive;
  final ValueChanged<bool> onToggle;

  const BotControlPanel({
    super.key,
    required this.isActive,
    required this.onToggle,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Trading Bot',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Switch.adaptive(
                  value: isActive,
                  onChanged: onToggle,
                  activeColor: Theme.of(context).colorScheme.primary,
                ),
              ],
            ),
            const SizedBox(height: 16),
            AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: isActive
                    ? Colors.green.withValues(alpha: 0.1)
                    : Colors.grey.withValues(alpha: 0.1),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [
                  Icon(
                    isActive ? Icons.play_circle : Icons.pause_circle,
                    color: isActive ? Colors.green : Colors.grey,
                    size: 24,
                  ),
                  const SizedBox(width: 12),
                  Text(
                    isActive ? 'Bot is running' : 'Bot is paused',
                    style: TextStyle(
                      color: isActive ? Colors.green : Colors.grey,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
            if (isActive) ...[
              const SizedBox(height: 16),
              _buildStatRow('Active since', '2h 15m'),
              const SizedBox(height: 8),
              _buildStatRow('Trades made', '5'),
              const SizedBox(height: 8),
              _buildStatRow('Current profit', '+\$12.45'),
            ],
          ],
        ),
      ),
    );
  }

  Widget _buildStatRow(String label, String value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: const TextStyle(
            color: Colors.grey,
          ),
        ),
        Text(
          value,
          style: const TextStyle(
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
} 