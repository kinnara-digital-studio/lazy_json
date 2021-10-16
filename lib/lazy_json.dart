library lazy_json;

///
/// Null safe method extension for JSON Object.
///
extension NullsafeJsonObject on Map<String, dynamic> {
  ///
  /// Get [bool] value from JSON Object. For lazier person, you can use
  /// shorthand method [b].
  ///
  bool boolean(String key, [bool defaultValue = false]) =>
      _get(key, defaultValue);

  ///
  /// Shorthand for method [boolean].
  ///
  bool b(String key, [bool defaultValue = false]) => boolean(key, defaultValue);

  ///
  /// Get [integer] value from JSON Object. For lazier person, you can use
  /// shorthand method [i].
  ///
  int integer(String key, [int defaultValue = 0]) => _get(key, defaultValue);

  ///
  /// Shorthand for method [integer].
  ///
  int i(String key, [int defaultValue = 0]) => integer(key, defaultValue);

  ///
  /// Get [double] value from JSON Object. For lazier person, you can use
  /// shorthand method [f].
  ///
  double float(String key, [double defaultValue = 0.0]) =>
      _get(key, defaultValue);

  ///
  /// Shorthand for method [float].
  ///
  double f(String key, [double defaultValue = 0.0]) => float(key, defaultValue);

  ///
  /// Get [String] value from JSON Object. For lazier person, you can use
  /// shorthand method [s].
  ///
  String string(String key, [String defaultValue = '']) =>
      _get(key, defaultValue);

  ///
  /// Shorthand for method [string].
  ///
  String s(String key, [String defaultValue = '']) => string(key, defaultValue);

  ///
  /// Get [Map] value from JSON Object. For lazier person, you can use
  /// shorthand method [o].
  ///
  Map<String, dynamic> object(String key) => _get(key, {});

  ///
  /// Shorthand for method [object].
  ///
  Map<String, dynamic> o(String key) => object(key);

  ///
  /// Get [List] value from JSON Object. For lazier person, you can use
  /// shorthand method [a].
  ///
  List<dynamic> array(String key) => _get(key, []);

  ///
  /// Shorthand for method [array].
  ///
  List<dynamic> a(String key) => array(key);

  ///
  /// Generic method to handle any data type.
  ///
  T _get<T>(String key, T defaultValue) {
    try {
      return this[key] ?? defaultValue;
    } catch (e) {
      return defaultValue;
    }
  }
}

///
/// Null safe method extension for JSON array
///
extension NullsafeJsonArray on List<dynamic> {
  ///
  /// Get [bool] value from JSON Array. For lazier person, you can use
  /// shorthand method [b].
  ///
  bool boolean(int index, [bool defaultValue = false]) =>
      _get(index, defaultValue);

  ///
  /// Shorthand for method [boolean].
  ///
  bool b(int index, [bool defaultValue = false]) =>
      boolean(index, defaultValue);

  ///
  /// Get [int] value from JSON Array. For lazier person, you can use
  /// shorthand method [i].
  ///
  int integer(int index, [int defaultValue = 0]) => _get(index, defaultValue);

  ///
  /// Shorthand for method [integer].
  ///
  int i(int index, [int defaultValue = 0]) => integer(index, defaultValue);

  ///
  /// Get [double] value from JSON Array. For lazier person, you can use
  /// shorthand method [f].
  ///
  double float(int index, [double defaultValue = 0.0]) =>
      _get(index, defaultValue);

  ///
  /// Shorthand for method [float].
  ///
  double f(int index, [double defaultValue = 0.0]) =>
      float(index, defaultValue);

  ///
  /// Get [String] value from JSON Array. For lazier person, you can use
  /// shorthand method [s].
  ///
  String string(int index, [String defaultValue = '']) =>
      _get(index, defaultValue);

  ///
  /// Shorthand for method [string].
  ///
  String s(int index, [String defaultValue = '']) =>
      string(index, defaultValue);

  ///
  /// Get [Map] value from JSON Array. For lazier person, you can use
  /// shorthand method [o].
  ///
  Map<String, dynamic> object(int index) => _get(index, {});

  ///
  /// Shorthand for method [object].
  ///
  Map<String, dynamic> o(int index) => object(index);

  ///
  /// Get [List] value from JSON Array. For lazier person, you can use
  /// shorthand method [a].
  ///
  List<dynamic> array(int index) => _get(index, []);

  ///
  /// Shorthand for method [array].
  ///
  List<dynamic> a(int index) => array(index);

  ///
  /// Generic method to handle any data type.
  ///
  T _get<T>(int index, T defaultValue) {
    try {
      return this[index] ?? defaultValue;
    } catch (e) {
      return defaultValue;
    }
  }
}
