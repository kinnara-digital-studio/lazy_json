import 'package:flutter_test/flutter_test.dart';

import 'package:lazy_json/lazy_json.dart';

void main() {
  test('adds one to input values', () {
    final object = {
      'a':10,
      'b':['hello', 'world']
    };
    expect(object.i('a'), 10);
    expect(object.a('b').s(1), 'world');
    expect(object.a('b').join(' '), 'hello world');
  });
}
