import 'package:flutter/material.dart';

class ChartControls extends StatelessWidget {
  final bool showVolumeChart;
  final bool showRSIChart;
  final bool showFibonacci;
  final VoidCallback onZoomIn;
  final VoidCallback onZoomOut;
  final ValueChanged<bool> onToggleVolume;
  final ValueChanged<bool> onToggleRSI;
  final ValueChanged<bool> onToggleFibonacci;

  const ChartControls({
    super.key,
    required this.showVolumeChart,
    required this.showRSIChart,
    required this.showFibonacci,
    required this.onZoomIn,
    required this.onZoomOut,
    required this.onToggleVolume,
    required this.onToggleRSI,
    required this.onToggleFibonacci,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildSwitch('Volume', showVolumeChart, onToggleVolume),
        _buildSwitch('RSI', showRSIChart, onToggleRSI),
        _buildSwitch('Fibonacci', showFibonacci, onToggleFibonacci),
        _buildIconButton(Icons.zoom_in_map, 'Zoom in', onZoomIn),
        _buildIconButton(Icons.zoom_out_map, 'Zoom out', onZoomOut),
      ],
    );
  }

  Widget _buildSwitch(String label, bool value, ValueChanged<bool> onChanged) {
    return Column(
      children: [
        Transform.scale(
          scale: 0.6,
          child: Switch(
            value: value,
            onChanged: onChanged,
          ),
        ),
        Text(label, style: const TextStyle(fontSize: 12)),
      ],
    );
  }

  Widget _buildIconButton(IconData icon, String label, VoidCallback onPressed) {
    return Padding(
      padding: const EdgeInsets.only(left:8.0),
      child: Column(
        children: [
          IconButton(
            icon: Icon(icon),
            onPressed: onPressed,
          ),
          Text(label, style: const TextStyle(fontSize: 11)),
        ],
      ),
    );
  }
}
