import 'package:flutter/material.dart';

class PriceInfoCard extends StatelessWidget {
  final double price;
  final double? previousPrice;

  const PriceInfoCard({
    super.key,
    required this.price,
    this.previousPrice,
  });

  @override
  Widget build(BuildContext context) {
    final priceChange = previousPrice != null
        ? ((price - previousPrice!) / previousPrice! * 100)
        : 0.0;
    final isPositive = priceChange >= 0;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          '\$${price.toStringAsFixed(2)}',
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        if (previousPrice != null)
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 12,
              vertical: 6,
            ),
            decoration: BoxDecoration(
              color: (isPositive ? Colors.green : Colors.red).withValues(alpha: 0.1),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Text(
              '${isPositive ? '+' : ''}${priceChange.toStringAsFixed(2)}%',
              style: TextStyle(
                color: isPositive ? Colors.green : Colors.red,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
      ],
    );
  }
} 