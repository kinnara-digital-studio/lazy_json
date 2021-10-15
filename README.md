# Lazy JSON

Provides null-safety implementation to simplify JSON data handling by adding extension method to JSON object and JSON array.

## Getting started
Add dependency in `pubspec.yml`
```yml
dependencies:
  lazy_json: ^1.0.0
```

## Usage

Import library to your .dart file:

```dart
import 'package:lazy_json/lazy_json.dart';
```
  
## Supported Data Types
  
### String
`String` type has default value '' (empty string)

Usage:
```dart
// on JSON object, if 'myKey' not found it returns ''
final myString = myJsonObject.string('myKey');
  
// on JSON object, if 'myKey' not found it returns 'hello' as default value
final myString = myJsonObject.string('myKey', 'hello');
  
// on JSON Array, retrieve string value at index 0
final myString = myJsonArray.string(0);
  
// on JSON Array, retrieve string value at index 3, returns 'hello world' as default value
final myString = myJsonArray.string(3, 'hello world');
```
  
### Integer
`int` type has default value 0 (zero)

Usage:
```dart
// on JSON object, if 'myKey' not found it returns 0
final myInteger = myJsonObject.integer('myKey');
  
// on JSON object, if 'myKey' not found it returns 99 as default value
final myInteger = myJsonObject.integer('myKey', 99);
  
// on JSON Array, retrieve integer value at index 0
final myInteger = myJsonArray.integer(0);
  
// on JSON Array, retrieve integer value at index 3, returns 100 as default value
final myInteger = myJsonArray.integer(3, 100);
```
  
### Float / Double
`double` type has default value 0.0 (zero)
  
Usage:
```dart
// on JSON object, if 'myKey' not found it returns 0.0
final myFloat = myJsonObject.float('myKey');
  
// on JSON object, if 'myKey' not found it returns 99.9 as default value
final myFloat = myJsonObject.float('myKey', 99.9);
  
// on JSON Array, retrieve float/double value at index 0
final myFloat = myJsonArray.float(0);
  
// on JSON Array, retrieve float/double value at index 3, returns 100.89 as default value
final myFloat = myJsonArray.float(3, 100.89);
```

### Boolean
`bool` type has default value `false`

Usage:
```dart
// on JSON object, if 'myKey' not found it returns false
final myBoolean = myJsonObject.boolean('myKey');
  
// on JSON object, if 'myKey' not found it returns true as default value
final myBoolean = myJsonObject.boolean('myKey', true);
  
// on JSON Array, retrieve boolean value at index 0
final myBoolean = myJsonArray.boolean(0);
  
// on JSON Array, retrieve double value at index 3, returns true as default value
final myBoolean = myJsonArray.boolean(3, true);
```
  
### JSON Object
`Map<String, dynamic>` type has default value `{}` (empty object)

Usage:
```dart
// on JSON object, if 'myKey' not found it returns empty object
final myObject = myJsonObject.integer('myKey');
  
// on JSON object, if 'myKey' not found it returns JSON object {'a' : 10}
final myObject = myJsonObject.integer('myKey', {'a' : 10});
  
// on JSON Array, retrieve JSON object at index 0
final myObject = myJsonArray.integer(0);
  
// on JSON Array, retrieve JSON object at index 3, returns {'b' : 'hello world'} as default value
final myObject = myJsonArray.integer(3, {'b' : 'hello world'});
```
  

### JSON Array
`List<dynamic>` type has default value `[]` (empty array)

Usage:
```dart
// on JSON array, if 'myKey' not found it returns empty array
final myArray = myJsonObject.array('myKey');
  
// on JSON object, if 'myKey' not found it returns JSON array ['a', 'b']
final myArray = myJsonObject.array('myKey', ['a', 'b']);
  
// on JSON Array, retrieve JSON array at index 0
final myArray = myJsonArray.array(0);
  
// on JSON Array, retrieve JSON array at index 3, returns [100, 200, {'b' : 'hello'}] as default value
final myArray = myJsonArray.array(3, [100, 200, {'b' : 'hello'}]);
```
  
## Shorthands Methods
Even lazier, all shorthand methods are basically regular methods with first letter only
  
```dart
myJsonObject.s('myKey');  // shorthand for myJsonObject.string('myKey');
myJsonObject.i('myKey');  // shorthand for myJsonObject.integer('myKey');
myJsonObject.f('myKey');  // shorthand for myJsonObject.float('myKey');
myJsonObject.b('myKey');  // shorthand for myJsonObject.boolean('myKey');
myJsonObject.o('myKey');  // shorthand for myJsonObject.object('myKey');
myJsonObject.a('myKey');  // shorthand for myJsonObject.array('myKey');

myJsonArray.s(1);         // shorthand for myJsonArray.string(1);
myJsonArray.i(2);         // shorthand for myJsonArray.integer(2);
myJsonArray.f(3);         // shorthand for myJsonArray.float(3);
myJsonArray.b(4);         // shorthand for myJsonArray.boolean(4);
myJsonArray.o(5);         // shorthand for myJsonArray.object(5);
myJsonArray.a(6);         // shorthand for myJsonArray.array(6);
```
