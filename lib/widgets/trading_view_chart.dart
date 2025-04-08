import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class TradingViewChart extends StatefulWidget {
  final String symbol;
  final String interval;

  const TradingViewChart({
    super.key,
    required this.symbol,
    required this.interval,
  });

  @override
  State<TradingViewChart> createState() => _TradingViewChartState();
}

class _TradingViewChartState extends State<TradingViewChart> {
  late final WebViewController _controller;
  bool _isLoading = true;
  String? _error;

  @override
  void initState() {
    super.initState();
    _controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setBackgroundColor(Colors.transparent)
      ..enableZoom(false)
      ..setNavigationDelegate(
        NavigationDelegate(
          onPageStarted: (String url) {
            if (mounted) {
              setState(() => _isLoading = true);
            }
          },
          onPageFinished: (String url) {
            if (mounted) {
              setState(() => _isLoading = false);
            }
          },
          onWebResourceError: (WebResourceError error) {
            if (mounted) {
              setState(() {
                _isLoading = false;
                _error = error.description;
              });
            }
          },
        ),
      );

    _loadTradingView();
  }

  void _loadTradingView() {
    String chartHtml = _generateHtml(widget.symbol.toUpperCase(), widget.interval);
    _controller.loadHtmlString(chartHtml);
  }

  String _generateHtml(String symbol, String interval) {
    return '''
      <!DOCTYPE html>
      <html lang="en">
        <head>
          <meta charset="UTF-8">
          <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
          <style>
            body {
              margin: 0;
              padding: 0;
              display: flex;
              flex-direction: column;
              height: 100vh;
              background-color: #0a0a0a; /* Темный фон */
            }
            .tradingview-widget-container {
              width: 100%;
              height: 100%;
            }
            .tradingview-widget-container__widget {
              border: 2px solid #00ffcc; /* Неоновая рамка */
              box-shadow: 0 0 20px rgba(0, 255, 204, 0.5); /* Неоновый эффект */
            }
            h1, h2, h3, h4, h5, h6 {
              color: #00ffcc; /* Неоновый цвет текста */
              text-shadow: 0 0 10px rgba(0, 255, 204, 0.7); /* Неоновый эффект текста */
            }
          </style>
        </head>
        <body>
          <div class="tradingview-widget-container">
            <div id="tradingview_widget"></div>
          </div>
          <script type="text/javascript" src="https://s3.tradingview.com/tv.js"></script>
          <script type="text/javascript">
            new TradingView.widget({
              "width": "100%",
              "height": "100%",
              "symbol": "BINANCE:$symbol",
              "interval": "$interval",
              "timezone": "Etc/UTC",
              "theme": "dark",
              "style": "1",
              "locale": "en",
              "toolbar_bg": "#131722",
              "enable_publishing": false,
              "allow_symbol_change": false,
              "container_id": "tradingview_widget",
              "studies": [
                "BB@tv-basicstudies",  // Bollinger Bands
              ]
            });
          </script>
        </body>
      </html>
    ''';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: WebViewWidget(controller: _controller),
          ),
        ],
      ),
    );
  }
}
