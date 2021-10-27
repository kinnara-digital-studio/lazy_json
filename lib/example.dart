import 'package:lazy_json/lazy_json.dart';

void main() {
  final jsonObject = {
    'response': {
      'data': {'id': '001', 'label': 'Hello', 'number': 10}
    }
  };

  print(jsonObject
      .object('response')
      .object('data')
      .string('label', 'default value')); // prints 'Hello'

  print(jsonObject
      .object('response')
      .object('data')
      .string('dummyField', 'default value')); // prints 'default value'

  print(jsonObject
      .object('response')
      .object('data')
      .integer('number')); // prints 10

  print(jsonObject
      .object('response')
      .object('data')
      .integer('dummyField', 99)); // prints 99
}
