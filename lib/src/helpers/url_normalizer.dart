/// A library for normalizing application URL schemes and redirect URLs.
///
/// This utility processes provided inputs—`appScheme`, `redirectUrl`, and
/// `defaultPath`—to produce two pieces of information:
///
///  - `appScheme`: the URL scheme to listen for when intercepting redirects.
///  - `redirectUrl`: a fully-qualified URL where the flow should
///    redirect after completion.
///
/// If a custom [appScheme] is provided (non-null, non-whitespace, *and* not
/// one of `http`, `https`, `about`, `data`), it is always used as the
/// [appScheme]; otherwise, when a [redirectUrl] is supplied, its scheme is
/// extracted. If neither is available, defaults to `'portone'`.
///
/// When a [redirectUrl] is present, its path is guaranteed to be non-empty:
/// if absent, `'/'+defaultPath` is appended. Query parameters and fragments
/// are preserved.
///
/// ## Examples
///
/// ```dart
/// // 1) With both appScheme and redirectUrl provided:
/// final r1 = NormalizedUrl(
///   appScheme: 'myapp',
///   redirectUrl: 'https://example.com',
/// );
/// // r1.appScheme == 'myapp'
/// // r1.redirectUrl == 'https://example.com/complete'
///
/// // 2) Only redirectUrl provided:
/// final r2 = NormalizedUrl(
///   redirectUrl: 'https://example.com',
/// );
/// // r2.appScheme == 'https'
/// // r2.redirectUrl == 'https://example.com/complete'
///
/// // 3) Neither provided:
/// final r3 = NormalizedUrl();
/// // r3.appScheme == 'portone'
/// // r3.redirectUrl == 'portone://complete'
/// ```
class NormalizedUrl {
  /// Constructs a [NormalizedUrl] by normalizing inputs.
  ///
  /// - [appScheme]: optional custom scheme for deep-link interception.
  ///   If non-null, non-whitespace, *and* not one of the reserved web
  ///   schemes (`http`, `https`, `about`, `data`), it takes precedence.
  ///   Otherwise, when [redirectUrl] is provided, its scheme is used.
  ///   If neither yields a valid scheme, defaults to `'portone'`.
  ///
  /// - [redirectUrl]: optional full URL to normalize. If provided and
  ///   non-empty (ignoring whitespace), it's parsed; its authority is
  ///   preserved, and its path is guaranteed non-empty (falling back to
  ///   `'/'+defaultPath`). Query params and fragments are retained.
  ///
  /// - [defaultPath]: the path segment to append when no path exists.
  ///   Defaults to `'complete'`.
  NormalizedUrl({
    String? appScheme,
    String? redirectUrl,
    this.defaultPath = 'complete',
  })  : _rawAppScheme = appScheme,
        _rawRedirectUrl = redirectUrl {
    final trimmedApp = _rawAppScheme?.trim() ?? '';
    final useCustom = _isCustomScheme(trimmedApp);

    final trimmedRedirect = _rawRedirectUrl?.trim();
    if (trimmedRedirect != null && trimmedRedirect.isNotEmpty) {
      Uri uri;
      try {
        uri = Uri.parse(trimmedRedirect);
      } catch (_) {
        // On parse error, fall back to custom or default
        _scheme = useCustom ? trimmedApp : 'portone';
        _url = '$_scheme://$defaultPath';
        return;
      }

      final resolvedPath = (uri.hasAbsolutePath && uri.path.trim().isNotEmpty) ? uri.path.trim() : '/$defaultPath';

      final normalizedUri = uri.replace(path: resolvedPath);
      _url = normalizedUri.toString();
      _scheme = useCustom ? trimmedApp : normalizedUri.scheme;
    } else {
      _scheme = useCustom ? trimmedApp : 'portone';
      _url = '$_scheme://$defaultPath';
    }
  }

  /// The fallback path segment to append when no path is present.
  /// Defaults to `'complete'`.
  final String defaultPath;

  final String? _rawAppScheme;
  final String? _rawRedirectUrl;

  late final String _scheme;
  late final String _url;

  /// The URL scheme for deep-link interception (e.g., 'myapp').
  String get appScheme => _scheme;

  /// The fully formed redirect URL, including scheme, authority, path,
  /// and any preserved query parameters or fragments.
  String get redirectUrl => _url;

  static const _reservedWebSchemes = {'http', 'https', 'about', 'data', ''};

  /// Returns true if [scheme] is non-empty and *not* one of the reserved
  /// web schemes (`http`, `https`, `about`, `data`).
  static bool _isCustomScheme(String scheme) {
    return scheme.isNotEmpty && !_reservedWebSchemes.contains(scheme);
  }
}
