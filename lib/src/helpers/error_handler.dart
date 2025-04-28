/// A callable class that wraps user-provided error callbacks, allowing them to
/// accept either a single `Object? error` parameter or both `Object? error` and
/// `StackTrace? stackTrace`. Internally, it normalizes the callback to
/// `void Function(Object? error, [StackTrace? stackTrace])`.
///
/// The provided `handler` must be either:
/// - `void Function(Object? error)`, or
/// - `void Function(Object? error, StackTrace? stackTrace)`.
///
/// Example:
/// ```dart
/// // One-arg callback:
/// final handlerA = PortoneErrorHandler((error) {
///   print('Error: $error');
/// });
///
/// // Two-arg callback:
/// final handlerB = PortoneErrorHandler((error, stack) {
///   print('Error: $error\nStackTrace: $stack');
/// });
///
/// // Always called with both parameters (second may be null):
/// handlerA('Oops', null);
/// handlerB('Oops', StackTrace.current);
/// ```
class PortoneErrorHandler {
  /// Creates a [PortoneErrorHandler] from a user-provided function.
  ///
  /// Accepts either:
  /// - A function of type `void Function(Object? error)`
  /// - A function of type `void Function(Object? error, StackTrace? stackTrace)`
  ///
  /// Throws an [ArgumentError] if [handler] does not match one of the accepted signatures.
  factory PortoneErrorHandler(dynamic handler) {
    if (handler is void Function(Object?, StackTrace?)) {
      // Two-arg callback
      return PortoneErrorHandler._((error, [stack]) => handler(error, stack));
    } else if (handler is void Function(Object?)) {
      // One-arg callback
      return PortoneErrorHandler._((error, [stack]) => handler(error));
    } else {
      throw ArgumentError.value(
        handler,
        'handler',
        'Must be `void Function(Object?)` '
            'or `void Function(Object?, StackTrace?)`',
      );
    }
  }

  PortoneErrorHandler._(this._handler);

  /// Internal normalized handler with signature:
  /// `void Function(Object? error, [StackTrace? stackTrace])`.
  final void Function(Object?, [StackTrace?]) _handler;

  /// Invokes the user-provided callback.
  ///
  /// Always called with two parameters:
  /// - [error]: The error object (may be `null`).
  /// - [stack]: Optional [StackTrace], depending on availability.
  ///
  /// If the original callback only accepted one parameter, [stack] is ignored.
  void call(Object? error, [StackTrace? stack]) => _handler(error, stack);
}
