import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  double _takeProfit = 5.0;
  double _stopLoss = 3.0;
  double _sensitivity = 50.0;
  String _selectedPair = 'SOL/USDT';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppBar(
          backgroundColor: Colors.black38,
          title: const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Settings',
              style: TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          actions: [
            TextButton(
              onPressed: _saveSettings,
              child: const Text('Save'),
            ),
          ],
        ),
        Expanded(
          child: ListView(
            padding: const EdgeInsets.all(16.0),
            children: [
              _buildSection(
                title: 'Trading Pair',
                child: Card(
                  elevation: 0,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: DropdownButtonFormField<String>(
                      value: _selectedPair,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Select Trading Pair',
                      ),
                      items: const [
                        DropdownMenuItem(
                          value: 'SOL/USDT',
                          child: Text('SOL/USDT'),
                        ),
                      ],
                      onChanged: (value) {
                        setState(() {
                          _selectedPair = value!;
                        });
                      },
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 24),
              _buildSection(
                title: 'Take Profit & Stop Loss',
                child: Card(
                  elevation: 0,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        _buildSliderSetting(
                          label: 'Take Profit (%)',
                          value: _takeProfit,
                          min: 0.5,
                          max: 10.0,
                          onChanged: (value) {
                            setState(() {
                              _takeProfit = value;
                            });
                          },
                        ),
                        const SizedBox(height: 24),
                        _buildSliderSetting(
                          label: 'Stop Loss (%)',
                          value: _stopLoss,
                          min: 0.5,
                          max: 10.0,
                          onChanged: (value) {
                            setState(() {
                              _stopLoss = value;
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 24),
              _buildSection(
                title: 'Bot Sensitivity',
                child: Card(
                  elevation: 0,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: _buildSliderSetting(
                      label: 'Sensitivity',
                      value: _sensitivity,
                      min: 0,
                      max: 100,
                      divisions: 10,
                      onChanged: (value) {
                        setState(() {
                          _sensitivity = value;
                        });
                      },
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildSection({
    required String title,
    required Widget child,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 12),
        child,
      ],
    );
  }

  Widget _buildSliderSetting({
    required String label,
    required double value,
    required double min,
    required double max,
    int? divisions,
    required ValueChanged<double> onChanged,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              label,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              value.toStringAsFixed(1),
              style: TextStyle(
                fontSize: 16,
                color: Theme.of(context).colorScheme.primary,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        const SizedBox(height: 8),
        SliderTheme(
          data: SliderTheme.of(context).copyWith(
            activeTrackColor: Theme.of(context).colorScheme.primary,
            thumbColor: Theme.of(context).colorScheme.primary,
            overlayColor:
                Theme.of(context).colorScheme.primary.withValues(alpha: 0.1),
          ),
          child: Slider(
            value: value,
            min: min,
            max: max,
            divisions: divisions,
            onChanged: onChanged,
          ),
        ),
      ],
    );
  }

  void _saveSettings() {
    // TODO: Implement settings save
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Settings saved'),
        behavior: SnackBarBehavior.floating,
      ),
    );
  }
}
