# DataPipe

![Cover - DataPipe](https://raw.githubusercontent.com/signmotion/data_pipe/master/images/cover.webp)

[![GitHub License](https://img.shields.io/badge/license-MIT-blue.svg)](https://raw.githubusercontent.com/signmotion/data_pipe/master/LICENSE)

The standartized, easy-to-use and well-tested set for generate identifiers: globally unique, readable,
time-dependency, transitive, incremental, decremental IDs.
Feel free to use it in your projects that are useful to the world.

## Usage

### Generate 4 UUIDs

About UUID (online generator): <https://uuidgenerator.net>

```dart
for (var i = 0; i < 4; ++i) {
  print(genUuid);
}
```

Output:

```text
490833da-4976-4563-8c8a-9f5464a2bf7e
e82e3bf5-c3ea-46d6-a835-12644b99cf6e
4d86c01f-777b-4599-b28f-c87c3737c8e2
60fc6015-417e-4548-adaa-b032b1f7dbcd
```

### Generate HID from language

Supported languages:

- Belarusian
- English
- Ukrainian

```dart
const gen = HumanDataPipe(options: HumanDataPipeOptions(lowerCase: true));
final hid = gen.get('Тема статті чи назва курсу');
print(hid);
```

Output:

```text
tema-stati-chy-nazva-kursu
```

### Generate Transit Integer ID

```dart
print(genTransitId);
// or
print(TransitId().next);
```

Output:

```text
1
2
```

### Generate Time Integer ID

```dart
print(genTimeId);
// or
print(genTimeIdMicro);
```

Output:

```text
1705954581187
1705954581188687
```

Note that second ID does not fit into 53 bits (the size of a IEEE double). A JavaScript number is not able to hold this value.

### Add HID and UID to Any Class

```dart
class Quant with HasStringIdMix {
  Quant({String? hid, String? uid}) {
    this.hid = hid;
    this.uid = uid;
  }
}

print(Quant().id);
print(Quant(hid: 'aerwyna').id);
```

Output:

```text
92e6ee3e-537a-4dd3-b4e9-06b8fd366469
aerwyna
```

## Welcome

Requests and suggestions are warmly welcome.

This package is open-source, stable and well-tested. Development happens on
[GitHub](https://github.com/signmotion/data_pipe). Feel free to report issues
or create a pull-request there.

General questions are best asked on
[StackOverflow](https://stackoverflow.com/questions/tagged/data_pipe).

## TODO

- More data pipes.
