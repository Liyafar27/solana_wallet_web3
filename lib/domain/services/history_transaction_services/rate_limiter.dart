import 'dart:collection';

class RateLimiter {
  final Duration duration;
  final Queue<Future<void> Function()> _queue = Queue();
  bool _isProcessing = false;

  RateLimiter(this.duration);

  // Добавляем запрос в очередь, возвращая Future<void>
  Future<void> enqueue(Future<void> Function() action) async {
    _queue.add(action);
    if (!_isProcessing) {
      await _processQueue(); // Запускаем процесс обработки очереди
    }
  }

  // Метод для обработки очереди
  Future<void> _processQueue() async {
    _isProcessing = true;

    while (_queue.isNotEmpty) {
      final action = _queue.removeFirst();
      await action();  // Выполняем задачу в очереди
      await Future.delayed(duration);  // Ждем заданное время
    }

    _isProcessing = false;
  }
}
