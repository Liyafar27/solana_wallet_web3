extension LamportsIntExtension on int {

  String toSol({int precision = 9}) {
    final sol = this / 1000000000;
    return sol.toStringAsFixed(precision);
  }

  double toSolDouble() => this / 1000000000;
}
extension FormatDate on DateTime {
  String formatDateTime() => '${day.toString().padLeft(2, '0')}.${month.toString().padLeft(2, '0')}.$year - ${hour.toString().padLeft(2, '0')}:${minute.toString().padLeft(2, '0')}';
}