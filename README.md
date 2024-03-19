# DataPipe

![Cover - DataPipe](https://raw.githubusercontent.com/signmotion/data_pipe/master/images/cover.webp)

[![GitHub License](https://img.shields.io/badge/license-MIT-blue.svg)](https://opensource.org/licenses/MIT)
[![Pub Package](https://img.shields.io/badge/doc-data_pipe-blue)](https://pub.dartlang.org/packages/data_pipe)
[![Build Status](https://github.com/signmotion/data_pipe/actions/workflows/dart-ci.yml/badge.svg)](https://github.com/signmotion/data_pipe/actions/workflows/dart-ci.yml)
[![Publisher](https://img.shields.io/pub/publisher/data_pipe)](https://pub.dev/publishers/syrokomskyi.com)

An universal pump for data. It converted any formatted data to another any formatted data.
Feel free to use it in your awesome project.

## Usage

### Pump to `List<int>`

```dart
final file = File('./example/1.webp');
final r = (D(file) | const D(<int>[]));
print(r.data);
```

<details>
  <summary>Output:</summary>

```json
[
  82, 73, 70, 70, 230, 22, 0, 0, 87, 69, 66, 80, 86, 80, 56, 32, 218, 22, 0, 0,
  240, 73, 0, 157, 1, 42, 128, 0, 128, 0, 62, 117, 36, 139, 67, 36, 162, 33, 26,
  61, 70, 152, 72, 7, 68, 246, 0, 83, 166, 128, 28, 96, 209, 195, 192, 127, 85,
  253, 187, 246, 29, 173, 191, 158, 254, 199, 250, 243, 117, 166, 180, 242, 154,
  124, 207, 247, 30, 167, 63, 81, 251, 3, 115, 206, 243, 51, 251, 123, 251, 99,
  239, 11, 233, 167, 251, 199, 168, 111, 247, 62, 166, 223, 64, 14, 150, 207,
  236, 222, 117, 88, 4, 251, 191, 196, 95, 46, 127, 27, 253, 235, 207, 187, 4,
  125, 117, 234, 29, 242, 255, 200, 31, 208, 243, 27, 188, 255, 137, 255, 235,
  122, 132, 126, 89, 253, 19, 206, 97, 251, 26, 89, 232, 17, 239, 103, 221, 60,
  12, 245, 80, 200, 7, 131, 42, 128, 223, 162, 189, 89, 191, 202, 242, 97, 245,
  231, 176, 103, 236, 7, 92, 207, 71, 79, 220, 167, 68, 255, 230, 153, 116, 5,
  156, 251, 46, 51, 114, 250, 214, 54, 158, 104, 111, 229, 81, 79, 206, 100, 51,
  6, 107, 131, 181, 68, 201, 230, 31, 127, 167, 89, 70, 85, 224, 185, 126, 184,
  192, 87, 51, 21, 175, 87, 217, 182, 126, 181, 19, 75, 171, 209, 233, 91, 185,
  120, 235, 29, 154, 193, 116, 195, 120, 8, 227, 228, 123, 32, 245, 178, 23,
  211, 26, 247, 50, 193, 104, 16, 67, 254, 255, 120, 229, 245, 110, 185, 243,
  221, 226, 59, 102, 108, 198, 125, 11, 225, 152, 41, 227, 224, 101, 40, 174,
  193, 167, 238, 6, 194, 247, 132, 6, 253, 252, 14, 65, 158, 55, 189, 141, 35,
  112, 224, 157, 127, 13, 173, 66, 192, 1, 88, 64, 204, 236, 141, 47, 252, 214,
  183, 177, 229, 194, 218, 117, 94, 121, 247, 76, 108, 21, 60, 165, 122, 93, 34,
  215, 97, 108, 51, 14, 255, 81, 151, 182, 4, 121, 31, 167, 83, 32, 29, 155, 18,
  64, 52, 172, 145, 58, 245, 181, 246, 233, 121, 223, 9, 142, 99, 242, 237, 133,
  142, 46, 68, 63, 19, 6, 233, 56, 152, 13, 58, 245, 113, 8, 245, 205, 151, 59,
  178, 57, 110, 112, 157, 96, 24, 84, 108, 173, 12, 59, 66, 179, 221, 231, 16,
  110, 126, 63, 161, 65, 32, 107, 250, 190, 99, 92, 165, 135, 241, 253, 60, 47,
  45, 243, 161, 228, 57, 30, 180, 152, 64, 17, 157, 70, 75, 241, 164, 238, 41,
  166, 188, 247, 0, 6, 12, 77, 249, 185, 249, 199, 245, 210, 81, 8, 76, 77, 40,
  188, 190, 224, 123, 39, 88, 2, 12, 39, 121, 147, 54, 244, 63, 253, 230, 117,
  79, 140, 150, 115, 139, 75, 59, 160, 234, 197, 100, 218, 86, 241, 183, 34,
  159, 199, 190, 40, 67, 117, 218, 127, 157, 38, 134, 212, 41, 150, 177, 53,
  147, 119, 245, 166, 207, 114, 73, 79, 27, 232, 61, 28, 230, 155, 208, 18, 75,
  9, 74, 63, 248, 230, 54, 171, 38, 52, 219, 68, 24, 123, 179, 177, 252, 27,
  154, 241, 32, 132, 237, 129, 79, 125, 107, 63, 5, 86, 70, 184, 188, 22, 168,
  104, 138, 242, 128, 17, 65, 196, 195, 67, 95, 0, 182, 216, 27, 48, 231, 90,
  74, 31, 246, 48, 152, 240, 217, 153, 69, 197, 47, 53, 166, 9, 116, 247, 162,
  23, 17, 232, 164, 100, 228, 59, 57, 23, 207, 150, 252, 199, 142, 250, 99, 149,
  157, 196, 95, 207, 187, 192, 0, 0, 254, 255, 211, 18, 169, 127, 156, 77, 187,
  202, 72, 252, 229, 148, 83, 204, 125, 241, 44, 223, 6, 77, 74, 233, 139, 206,
  104, 130, 66, 158, 190, 88, 195, 223, 27, 19, 0, 63, 5, 26, 28, 149, 40, 203,
  99, 248, 144, 113, 13, 247, 154, 36, 62, 5, 150, 9, 241, 88, 186, 7, 213, 117,
  104, 148, 163, 174, 223, 201, 55, 87, 243, 88, 34, 5, 171, 146, 166, 237, 50,
  156, 205, 192, 7, 94, 178, 79, 141, 177, 133, 153, 5, 73, 10, 164, 251, 238,
  94, 125, 248, 236, 206, 199, 217, 244, 78, 221, 22, 249, 58, 83, 68, 13, 163,
  72, 76, 223, 92, 18, 231, 136, 214, 89, 230, 12, 237, 122, 111, 136, 49, 223,
  224, 250, 85, 122, 226, 167, 242, 7, 133, 67, 143, 114, 104, 164, 1, 113, 79,
  111, 237, 157, 218, 210, 244, 170, 255, 147, 33, 106, 111, 77, 214, 199, 255,
  47, 40, 15, 108, 229, 156, 218, 183, 106, 119, 25, 97, 132, 23, 197, 20, 161,
  163, 48, 177, 146, 193, 126, 98, 74, 188, 52, 113, 151, 173, 72, 38, 243, 31,
  224, 128, 240, 117, 131, 61, 214, 246, 197, 210, 226, 87, 71, 88, 169, 129,
  21, 22, 126, 214, 138, 159, 162, 225, 24, 189, 122, 186, 92, 124, 123, 154,
  254, 99, 11, 76, 14, 1, 217, 110, 150, 1, 54, 63, 145, 98, 60, 202, 18, 203,
  179, 24, 12, 247, 136, 140, 156, 156, 167, 103, 181, 185, 58, 167, 184, 172,
  189, 129, 29, 120, 234, 205, 69, 112, 12, 31, 75, 167, 183, 28, 17, 50, 21,
  217, 118, 212, 156, 75, 146, 62, 71, 140, 108, 250, 183, 113, 205, 121, 42,
  169, 7, 130, 115, 9, 233, 135, 60, 101, 89, 105, 55, 146, 147, 53, 209, 24,
  116, 8, 94, 78, 91, 132, 131, 49, 199, 201, 166, 213, 3, 221, 158, 200, 117,
  108, 81, 100, 140, 93, 153, 10, 37, 202, 161, 80, 14, 220, 203, 209, 45, 116,
  204, 29, 125, 245, 47, 177, 199, 97, 35, 178, 140, 212, 238, 195, 98, 50, 125,
  252, 26, 186, 214, 90, 232, 212, 203, 140, 134, 86, 217, 203, 57, 95, 145, 16,
  54, 242, 232, 116, 9, 118, 167, 110, 96, 221, 184, 50, 50, 106, 12, 51, 214,
  102, 74, 65, 35, 180, 39, 161, 234, 192, 49, 139, 182, 218, 2, 41, 169, 41,
  33, 217, 30, 250, 144, 67, 210, 98, 207, 113, 143, 95, 223, 207, 142, 80, 91,
  43, 81, 196, 74, 93, 3, 194, 126, 233, 80, 25, 190, 118, 90, 100, 208, 42,
  137, 54, 66, 239, 200, 117, 103, 101, 165, 166, 235, 62, 188, 133, 252, 142,
  202, 163, 149, 11, 95, 208, 241, 110, 106, 73, 35, 182, 34, 184, 189, 253, 90,
  136, 106, 3, 0, 10, 3, 78, 206, 237, 120, 147, 250, 165, 103, 178, 84, 151,
  24, 222, 253, 20, 202, 39, 77, 203, 156, 4, 222, 160, 47, 12, 42, 127, 185,
  167, 155, 170, 119, 218, 170, 82, 4, 35, 205, 140, 236, 162, 188, 59, 252,
  131, 67, 34, 143, 207, 195, 145, 108, 108, 199, 221, 194, 137, 0, 109, 50,
  115, 161, 62, 118, 60, 104, 44, 164, 181, 130, 187, 173, 237, 43, 192, 71, 66,
  98, 162, 214, 195, 238, 232, 169, 105, 205, 165, 101, 244, 103, 27, 220, 130,
  217, 7, 9, 255, 83, 169, 231, 69, 249, 233, 15, 5, 62, 171, 4, 158, 177, 139,
  197, 190, 197, 163, 22, 6, 200, 35, 37, 98, 240, 234, 244, 8, 194, 252, 220,
  217, 144, 255, 111, 228, 207, 213, 158, 7, 88, 221, 115, 35, 71, 21, 207, 248,
  210, 150, 120, 202, 231, 86, 244, 61, 98, 162, 85, 60, 125, 87, 107, 78, 159,
  209, 134, 107, 79, 239, 254, 230, 243, 81, 96, 211, 195, 215, 232, 88, 191,
  89, 29, 107, 139, 138, 215, 251, 130, 171, 186, 224, 164, 68, 134, 213, 84,
  197, 118, 226, 151, 14, 174, 212, 166, 104, 156, 128, 117, 122, 234, 18, 65,
  70, 14, 219, 62, 55, 126, 41, 119, 60, 183, 38, 175, 236, 170, 176, 49, 16,
  165, 195, 218, 18, 63, 204, 18, 59, 245, 39, 210, 126, 108, 199, 34, 43, 150,
  0, 187, 12, 145, 121, 161, 47, 99, 89, 170, 192, 55, 222, 170, 210, 96, 103,
  29, 242, 46, 2, 2, 24, 52, 192, 208, 233, 89, 66, 130, 139, 248, 169, 181, 90,
  75, 133, 95, 193, 233, 75, 126, 165, 149, 134, 178, 92, 65, 239, 30, 103, 7,
  197, 228, 192, 198, 165, 107, 56, 156, 42, 191, 135, 47, 1, 184, 113, 125,
  148, 209, 227, 191, 66, 82, 59, 163, 232, 66, 156, 113, 99, 162, 243, 162,
  166, 150, 189, 187, 64, 239, 87, 59, 107, 116, 156, 14, 248, 43, 247, 252,
  106, 31, 140, 7, 146, 234, 178, 217, 40, 4, 164, 103, 220, 3, 36, 102, 217,
  33, 101, 161, 148, 200, 199, 34, 199, 93, 211, 6, 177, 116, 143, 96, 86, 23,
  123, 195, 211, 50, 52, 191, 169, 38, 159, 211, 188, 166, 156, 5, 191, 91, 56,
  45, 247, 227, 179, 86, 73, 191, 48, 101, 117, 134, 138, 150, 252, 35, 23, 210,
  41, 133, 245, 29, 106, 255, 52, 224, 184, 197, 88, 205, 176, 195, 224, 142,
  218, 118, 178, 132, 19, 51, 115, 144, 112, 92, 9, 223, 96, 244, 85, 157, 159,
  91, 68, 195, 107, 254, 116, 97, 79, 33, 160, 183, 165, 24, 207, 104, 80, 135,
  220, 44, 3, 253, 139, 118, 135, 57, 107, 4, 2, 159, 67, 69, 181, 70, 20, 67,
  64, 65, 244, 157, 156, 121, 80, 225, 111, 169, 29, 46, 183, 133, 136, 126, 7,
  169, 146, 87, 47, 255, 150, 105, 133, 201, 109, 127, 89, 87, 17, 39, 79, 70,
  57, 109, 107, 177, 100, 107, 151, 181, 225, 55, 115, 128, 95, 142, 67, 106,
  232, 220, 89, 166, 176, 110, 149, 234, 121, 41, 38, 112, 201, 63, 33, 135,
  154, 161, 158, 124, 76, 46, 147, 124, 79, 78, 152, 149, 190, 106, 165, 139,
  112, 16, 254, 40, 76, 161, 47, 88, 198, 77, 66, 27, 134, 96, 118, 109, 241,
  113, 41, 153, 228, 189, 16, 240, 80, 171, 126, 164, 89, 34, 48, 23, 185, 36,
  73, 9, 185, 120, 132, 69, 230, 234, 71, 0, 6, 214, 184, 99, 118, 147, 252,
  191, 224, 226, 17, 226, 152, 176, 28, 145, 17, 250, 145, 147, 226, 143, 211,
  195, 210, 49, 139, 177, 197, 151, 94, 4, 100, 242, 65, 99, 123, 110, 248, 186,
  165, 189, 38, 253, 149, 74, 110, 236, 90, 67, 232, 142, 116, 77, 94, 35, 205,
  35, 0, 113, 121, 103, 156, 199, 91, 241, 132, 41, 249, 121, 93, 15, 177, 118,
  191, 191, 231, 143, 253, 23, 123, 94, 141, 48, 235, 150, 46, 118, 210, 180,
  68, 239, 157, 10, 212, 175, 135, 128, 83, 200, 109, 80, 13, 184, 46, 251, 51,
  210, 184, 218, 39, 104, 209, 157, 151, 215, 79, 5, 246, 15, 209, 156, 45, 85,
  177, 68, 40, 26, 255, 21, 25, 18, 193, 142, 64, 28, 251, 180, 106, 255, 173,
  169, 127, 76, 254, 198, 225, 37, 245, 150, 102, 232, 152, 233, 250, 158, 173,
  160, 234, 99, 84, 69, 71, 118, 75, 248, 71, 114, 81, 62, 248, 156, 75, 101,
  19, 130, 66, 194, 120, 197, 158, 194, 246, 180, 215, 11, 27, 97, 239, 86, 179,
  209, 57, 7, 109, 230, 228, 36, 186, 234, 13, 209, 15, 144, 47, 211, 252, 78,
  24, 39, 149, 55, 244, 93, 96, 16, 250, 220, 118, 188, 186, 142, 172, 149, 209,
  247, 207, 158, 160, 204, 99, 46, 148, 136, 30, 161, 238, 66, 59, 49, 148, 27,
  231, 85, 22, 151, 10, 137, 195, 206, 172, 49, 90, 32, 138, 174, 174, 141, 240,
  196, 32, 97, 63, 133, 228, 239, 137, 38, 50, 118, 34, 197, 44, 140, 250, 41,
  37, 41, 117, 60, 57, 209, 87, 153, 80, 4, 26, 139, 42, 141, 187, 88, 29, 57,
  229, 47, 215, 108, 185, 52, 146, 144, 249, 238, 119, 37, 111, 84, 177, 173,
  243, 181, 156, 139, 28, 9, 243, 95, 168, 164, 249, 196, 192, 191, 93, 40, 171,
  241, 52, 78, 0, 85, 203, 9, 7, 222, 69, 173, 42, 221, 21, 201, 133, 44, 223,
  80, 62, 54, 159, 212, 216, 236, 245, 202, 159, 229, 210, 46, 156, 168, 212,
  204, 167, 42, 64, 141, 17, 55, 208, 229, 86, 150, 157, 96, 204, 160, 116, 87,
  92, 138, 63, 55, 186, 52, 76, 23, 147, 149, 214, 170, 210, 115, 164, 160, 142,
  78, 123, 237, 77, 132, 239, 230, 149, 232, 0, 44, 182, 28, 186, 156, 126, 196,
  226, 100, 202, 71, 67, 184, 41, 3, 196, 34, 182, 6, 213, 194, 245, 179, 124,
  131, 200, 3, 131, 191, 101, 72, 242, 23, 243, 56, 241, 106, 209, 49, 172, 186,
  141, 235, 34, 187, 156, 54, 98, 93, 53, 216, 21, 101, 159, 58, 163, 221, 222,
  189, 155, 74, 178, 68, 73, 220, 225, 41, 186, 184, 235, 71, 225, 73, 72, 94,
  235, 217, 69, 252, 24, 223, 54, 218, 148, 174, 214, 154, 252, 165, 17, 255,
  67, 205, 241, 205, 254, 38, 156, 29, 205, 148, 212, 23, 161, 229, 81, 64, 39,
  78, 34, 167, 211, 63, 168, 217, 180, 239, 82, 176, 190, 146, 40, 114, 164,
  196, 71, 242, 93, 30, 60, 220, 132, 226, 51, 216, 67, 52, 217, 224, 98, 94, 3,
  141, 234, 19, 199, 154, 73, 153, 147, 127, 82, 0, 159, 23, 31, 126, 190, 122,
  168, 162, 97, 105, 187, 252, 210, 189, 111, 123, 226, 245, 193, 117, 118, 237,
  223, 193, 251, 138, 131, 58, 234, 221, 22, 94, 3, 240, 163, 67, 239, 104, 8,
  152, 116, 232, 5, 108, 224, 84, 36, 193, 253, 153, 18, 3, 0, 126, 28, 30, 41,
  218, 32, 119, 51, 247, 206, 113, 207, 130, 187, 36, 146, 99, 107, 183, 176,
  74, 91, 21, 247, 49, 241, 17, 109, 115, 143, 0, 84, 56, 92, 87, 143, 137, 129,
  116, 199, 180, 0, 186, 226, 226, 73, 47, 5, 72, 252, 174, 171, 166, 198, 227,
  147, 15, 10, 166, 80, 211, 5, 130, 191, 67, 16, 201, 181, 153, 204, 88, 119,
  37, 36, 150, 105, 206, 138, 63, 65, 21, 188, 35, 132, 179, 201, 175, 239, 179,
  195, 168, 245, 21, 26, 174, 190, 200, 159, 191, 64, 92, 148, 195, 77, 238,
  166, 191, 175, 118, 196, 189, 81, 225, 48, 202, 158, 110, 251, 92, 191, 161,
  190, 233, 9, 200, 215, 90, 202, 234, 205, 192, 140, 180, 201, 68, 93, 123,
  117, 37, 172, 133, 11, 199, 219, 128, 4, 169, 240, 97, 175, 159, 248, 226, 59,
  167, 211, 222, 108, 233, 113, 113, 142, 217, 17, 90, 71, 40, 59, 2, 47, 158,
  161, 224, 65, 18, 208, 247, 86, 187, 105, 51, 45, 6, 91, 234, 16, 1, 147, 85,
  231, 177, 183, 25, 3, 11, 200, 62, 211, 95, 63, 16, 13, 111, 125, 78, 192,
  252, 77, 74, 164, 108, 69, 205, 180, 150, 60, 43, 69, 113, 38, 127, 210, 80,
  255, 15, 124, 106, 127, 133, 122, 24, 19, 178, 220, 151, 37, 153, 144, 211,
  137, 110, 255, 125, 222, 9, 163, 113, 35, 0, 46, 140, 64, 186, 228, 128, 162,
  196, 127, 25, 119, 168, 249, 191, 123, 164, 43, 3, 42, 238, 194, 36, 29, 106,
  120, 217, 69, 108, 43, 190, 37, 165, 102, 137, 74, 191, 189, 79, 43, 74, 77,
  80, 47, 94, 251, 200, 53, 71, 249, 185, 3, 116, 233, 197, 79, 233, 109, 160,
  223, 116, 18, 37, 61, 169, 40, 151, 57, 27, 46, 17, 96, 226, 188, 233, 52,
  218, 172, 253, 200, 166, 196, 150, 123, 166, 30, 205, 133, 101, 157, 165, 115,
  178, 176, 229, 254, 47, 155, 199, 103, 94, 132, 68, 146, 235, 166, 91, 123,
  80, 188, 222, 243, 235, 11, 128, 11, 162, 60, 57, 221, 115, 18, 89, 87, 209,
  241, 78, 126, 113, 38, 100, 88, 222, 93, 8, 54, 126, 115, 194, 56, 160, 79,
  106, 83, 196, 74, 239, 58, 225, 99, 30, 243, 235, 50, 119, 46, 29, 186, 9,
  128, 209, 89, 163, 194, 0, 230, 33, 46, 72, 232, 96, 184, 72, 207, 43, 110,
  186, 183, 254, 85, 107, 169, 191, 46, 147, 133, 72, 167, 33, 121, 84, 218,
  127, 55, 197, 147, 124, 246, 2, 149, 49, 127, 219, 85, 233, 176, 121, 249, 48,
  101, 53, 138, 29, 236, 172, 182, 179, 48, 234, 188, 82, 91, 193, 248, 175,
  252, 117, 57, 17, 18, 128, 253, 126, 165, 65, 27, 33, 136, 239, 196, 183, 171,
  22, 128, 249, 170, 32, 67, 233, 22, 45, 245, 235, 103, 30, 185, 213, 159, 191,
  79, 153, 103, 35, 16, 39, 201, 233, 191, 20, 97, 203, 191, 93, 112, 245, 193,
  2, 237, 199, 5, 161, 255, 215, 71, 9, 155, 184, 185, 63, 202, 239, 85, 62,
  180, 121, 182, 193, 43, 8, 240, 141, 102, 165, 74, 33, 57, 64, 106, 149, 69,
  128, 238, 65, 62, 14, 238, 251, 2, 227, 231, 215, 100, 170, 212, 237, 95, 158,
  178, 7, 35, 50, 103, 44, 72, 224, 94, 188, 206, 231, 94, 47, 12, 252, 74, 123,
  78, 210, 106, 191, 217, 154, 38, 77, 244, 174, 48, 18, 181, 91, 145, 130, 194,
  62, 125, 235, 9, 223, 83, 176, 129, 174, 120, 53, 239, 24, 36, 208, 22, 175,
  27, 124, 115, 180, 111, 80, 161, 41, 156, 3, 190, 216, 121, 155, 138, 245,
  145, 119, 181, 19, 227, 123, 1, 93, 129, 232, 140, 26, 53, 129, 254, 13, 104,
  81, 144, 22, 16, 113, 85, 71, 2, 0, 246, 201, 231, 176, 45, 252, 202, 66, 219,
  214, 195, 180, 87, 202, 227, 78, 67, 224, 237, 246, 196, 254, 70, 5, 75, 242,
  238, 157, 27, 26, 59, 55, 207, 18, 10, 43, 250, 46, 137, 254, 86, 230, 43,
  121, 10, 222, 21, 152, 80, 210, 15, 177, 98, 188, 33, 17, 18, 81, 151, 167,
  252, 26, 145, 232, 184, 123, 152, 122, 236, 209, 32, 121, 134, 175, 231, 248,
  47, 53, 13, 74, 197, 123, 53, 12, 104, 29, 76, 133, 127, 99, 93, 230, 214, 14,
  172, 138, 136, 226, 231, 203, 10, 182, 59, 3, 144, 201, 179, 131, 181, 39,
  195, 232, 233, 10, 29, 200, 191, 172, 123, 206, 79, 99, 150, 37, 236, 180,
  209, 232, 230, 219, 58, 120, 246, 229, 19, 139, 176, 182, 114, 152, 158, 145,
  132, 65, 200, 27, 128, 212, 111, 208, 204, 246, 101, 61, 255, 164, 192, 146,
  35, 41, 38, 131, 5, 219, 97, 223, 13, 54, 50, 237, 74, 254, 115, 74, 127, 62,
  182, 82, 234, 101, 210, 154, 201, 49, 194, 206, 168, 87, 225, 50, 71, 137,
  227, 32, 197, 148, 23, 250, 5, 26, 122, 135, 236, 255, 24, 67, 29, 146, 127,
  6, 122, 77, 126, 183, 118, 132, 211, 115, 162, 206, 171, 191, 230, 156, 231,
  180, 231, 143, 3, 16, 100, 189, 105, 151, 156, 199, 60, 235, 151, 166, 245,
  166, 252, 97, 57, 120, 2, 203, 163, 41, 1, 184, 84, 109, 224, 37, 167, 71, 62,
  196, 204, 103, 125, 81, 159, 213, 156, 92, 192, 185, 173, 81, 66, 204, 88, 12,
  52, 146, 193, 93, 119, 188, 140, 122, 174, 1, 184, 37, 146, 68, 20, 9, 230,
  44, 239, 110, 221, 140, 94, 243, 8, 130, 143, 15, 220, 191, 50, 4, 19, 138,
  189, 222, 68, 200, 234, 148, 89, 162, 99, 166, 78, 228, 239, 179, 54, 210,
  247, 216, 164, 158, 231, 196, 43, 44, 100, 62, 249, 213, 134, 167, 19, 166,
  233, 137, 35, 242, 214, 168, 62, 117, 111, 92, 25, 121, 9, 242, 2, 138, 151,
  94, 245, 152, 58, 93, 15, 200, 151, 12, 250, 255, 143, 193, 75, 152, 219, 252,
  211, 245, 50, 126, 193, 68, 30, 185, 23, 181, 96, 231, 254, 234, 232, 153, 17,
  3, 17, 49, 141, 109, 109, 246, 179, 145, 69, 240, 118, 210, 252, 54, 207, 11,
  190, 54, 43, 75, 92, 71, 40, 201, 99, 248, 165, 87, 84, 21, 50, 97, 27, 12,
  93, 73, 148, 212, 53, 99, 159, 0, 218, 159, 84, 226, 135, 60, 57, 50, 209,
  211, 228, 19, 3, 164, 20, 28, 224, 212, 91, 155, 24, 28, 140, 78, 250, 229,
  39, 116, 187, 141, 72, 167, 73, 18, 66, 203, 66, 175, 227, 114, 245, 210, 156,
  165, 33, 53, 200, 42, 8, 24, 100, 170, 138, 5, 120, 29, 242, 94, 74, 124, 35,
  164, 166, 206, 160, 247, 188, 184, 226, 5, 27, 244, 253, 11, 188, 52, 14, 245,
  183, 109, 172, 139, 138, 233, 148, 141, 1, 209, 217, 114, 209, 28, 54, 124,
  166, 236, 69, 205, 190, 34, 204, 26, 62, 144, 198, 248, 36, 218, 50, 202, 200,
  111, 23, 143, 87, 81, 20, 151, 129, 24, 3, 79, 173, 99, 142, 24, 85, 231, 225,
  89, 175, 90, 3, 82, 150, 230, 246, 193, 212, 239, 245, 57, 141, 202, 139, 128,
  141, 66, 178, 120, 181, 35, 57, 161, 174, 164, 223, 148, 154, 116, 149, 108,
  173, 39, 148, 187, 234, 166, 72, 153, 23, 12, 72, 6, 252, 239, 33, 42, 39, 64,
  77, 121, 116, 0, 98, 97, 147, 59, 197, 69, 189, 145, 92, 110, 8, 241, 15, 84,
  217, 253, 234, 96, 213, 218, 118, 49, 207, 149, 185, 67, 222, 4, 173, 17, 169,
  58, 187, 99, 176, 143, 239, 188, 209, 233, 93, 59, 64, 76, 104, 18, 23, 71,
  235, 249, 239, 55, 35, 109, 237, 134, 83, 107, 58, 122, 236, 178, 86, 59, 253,
  77, 73, 111, 246, 77, 66, 140, 83, 178, 208, 51, 238, 120, 62, 238, 104, 126,
  103, 69, 91, 1, 195, 61, 212, 66, 144, 135, 72, 44, 248, 201, 31, 50, 178, 93,
  201, 121, 57, 60, 111, 146, 58, 117, 126, 97, 101, 8, 141, 6, 238, 196, 229,
  55, 10, 203, 207, 94, 191, 83, 88, 198, 29, 162, 26, 139, 100, 153, 201, 131,
  34, 78, 254, 205, 74, 215, 84, 146, 2, 39, 117, 106, 218, 254, 178, 253, 41,
  67, 38, 255, 25, 239, 183, 206, 89, 108, 182, 148, 93, 220, 74, 68, 164, 242,
  67, 239, 74, 73, 68, 26, 112, 255, 34, 24, 123, 135, 94, 68, 217, 148, 75, 27,
  165, 195, 97, 203, 27, 152, 141, 155, 193, 23, 91, 148, 147, 232, 199, 199,
  165, 31, 120, 169, 209, 254, 12, 133, 90, 164, 233, 192, 188, 219, 140, 54,
  137, 30, 207, 83, 45, 136, 88, 250, 58, 204, 90, 47, 3, 127, 37, 50, 16, 34,
  148, 103, 188, 32, 209, 26, 75, 158, 2, 166, 221, 86, 162, 191, 152, 48, 184,
  235, 67, 105, 82, 119, 155, 58, 116, 198, 178, 90, 233, 39, 15, 4, 167, 218,
  115, 98, 169, 235, 132, 233, 200, 181, 201, 158, 239, 3, 240, 132, 103, 131,
  131, 52, 95, 192, 25, 59, 135, 183, 145, 231, 237, 148, 172, 161, 61, 171, 69,
  19, 161, 81, 15, 210, 82, 140, 249, 70, 7, 119, 102, 44, 74, 244, 46, 37, 86,
  203, 121, 245, 125, 129, 123, 200, 49, 115, 240, 12, 236, 58, 11, 209, 52, 93,
  98, 253, 223, 37, 63, 101, 236, 187, 207, 141, 36, 36, 123, 133, 171, 56, 20,
  196, 82, 27, 186, 23, 113, 27, 165, 61, 230, 35, 18, 21, 111, 101, 224, 100,
  74, 130, 205, 159, 210, 103, 121, 200, 201, 202, 160, 47, 34, 135, 121, 159,
  226, 100, 134, 133, 214, 115, 219, 210, 220, 61, 188, 58, 226, 55, 120, 116,
  206, 34, 171, 152, 2, 164, 199, 190, 217, 254, 171, 139, 98, 111, 118, 230,
  160, 183, 194, 194, 224, 103, 41, 50, 80, 53, 252, 78, 215, 45, 98, 42, 76,
  174, 16, 50, 108, 245, 163, 245, 10, 0, 34, 50, 254, 104, 90, 208, 251, 138,
  131, 22, 233, 95, 215, 39, 115, 152, 151, 19, 27, 68, 230, 158, 212, 212, 66,
  48, 192, 67, 18, 149, 130, 138, 67, 209, 66, 177, 229, 149, 67, 211, 41, 25,
  84, 53, 82, 216, 158, 121, 29, 41, 138, 107, 44, 60, 207, 172, 174, 205, 17,
  82, 9, 91, 103, 37, 187, 177, 212, 111, 195, 109, 194, 196, 85, 195, 48, 149,
  7, 60, 88, 212, 119, 133, 207, 252, 12, 102, 65, 180, 41, 220, 225, 246, 171,
  213, 219, 106, 2, 73, 6, 190, 232, 192, 199, 8, 122, 77, 4, 116, 110, 112,
  173, 147, 140, 30, 154, 47, 75, 226, 61, 194, 164, 255, 57, 85, 190, 12, 202,
  245, 252, 158, 236, 13, 0, 239, 113, 242, 187, 70, 147, 142, 188, 165, 146,
  86, 242, 95, 141, 87, 244, 232, 89, 7, 150, 126, 204, 60, 221, 238, 67, 85,
  238, 201, 125, 113, 159, 135, 45, 11, 99, 232, 193, 244, 161, 83, 218, 6, 225,
  164, 12, 166, 191, 126, 17, 110, 213, 41, 69, 112, 134, 48, 13, 77, 114, 73,
  227, 234, 39, 245, 221, 35, 208, 140, 152, 129, 134, 249, 115, 40, 97, 228,
  243, 203, 56, 97, 253, 62, 33, 28, 17, 112, 113, 155, 93, 65, 22, 164, 249,
  167, 71, 183, 238, 228, 21, 72, 216, 191, 105, 121, 48, 202, 109, 109, 165,
  15, 86, 163, 20, 156, 235, 144, 238, 168, 57, 152, 81, 154, 129, 246, 39, 98,
  17, 227, 200, 241, 244, 222, 65, 30, 95, 220, 136, 175, 30, 57, 8, 204, 194,
  148, 219, 57, 78, 209, 66, 229, 91, 65, 156, 61, 115, 22, 220, 78, 231, 13,
  242, 250, 124, 43, 162, 212, 159, 16, 126, 20, 148, 176, 84, 71, 172, 165,
  182, 6, 43, 94, 27, 86, 253, 187, 149, 7, 185, 138, 82, 249, 185, 251, 195,
  184, 49, 40, 75, 179, 154, 235, 180, 251, 94, 200, 183, 236, 63, 17, 7, 231,
  68, 45, 143, 37, 143, 126, 152, 91, 36, 26, 92, 54, 175, 238, 114, 30, 200,
  167, 33, 162, 63, 106, 204, 232, 60, 149, 97, 247, 199, 160, 151, 131, 209,
  164, 91, 218, 252, 84, 213, 121, 61, 21, 202, 74, 175, 177, 232, 109, 135, 97,
  158, 247, 163, 184, 22, 87, 199, 151, 135, 254, 105, 126, 40, 191, 95, 99,
  111, 113, 229, 100, 157, 68, 116, 220, 39, 67, 197, 50, 222, 95, 33, 204, 217,
  174, 90, 110, 40, 236, 133, 172, 133, 136, 201, 4, 110, 149, 4, 66, 117, 121,
  75, 83, 175, 92, 98, 82, 140, 43, 8, 47, 44, 73, 100, 128, 103, 244, 211, 160,
  79, 155, 68, 180, 132, 161, 133, 211, 156, 59, 183, 223, 155, 169, 202, 71,
  99, 201, 134, 152, 199, 101, 156, 77, 227, 1, 31, 24, 176, 148, 82, 237, 34,
  181, 159, 87, 50, 166, 11, 162, 69, 153, 232, 87, 110, 92, 29, 93, 174, 174,
  11, 11, 127, 69, 157, 77, 230, 191, 4, 137, 185, 55, 37, 224, 134, 33, 115,
  223, 142, 237, 49, 229, 63, 169, 137, 32, 113, 161, 35, 169, 231, 172, 121,
  68, 85, 70, 56, 143, 221, 77, 30, 171, 125, 131, 180, 29, 202, 156, 103, 52,
  158, 22, 44, 25, 20, 79, 230, 127, 102, 225, 130, 22, 91, 142, 157, 95, 66,
  133, 232, 66, 240, 110, 203, 87, 61, 19, 176, 74, 8, 130, 104, 125, 176, 104,
  123, 161, 118, 130, 173, 208, 92, 79, 137, 46, 106, 33, 63, 19, 218, 39, 219,
  200, 165, 94, 81, 174, 237, 21, 204, 75, 149, 217, 143, 126, 183, 169, 74, 66,
  59, 91, 164, 13, 111, 231, 122, 216, 15, 43, 232, 171, 31, 12, 5, 130, 250,
  255, 178, 233, 7, 119, 82, 216, 252, 175, 201, 53, 114, 210, 229, 143, 93,
  112, 12, 198, 164, 158, 74, 218, 10, 239, 58, 10, 252, 105, 255, 147, 68, 80,
  219, 36, 187, 178, 178, 217, 45, 198, 71, 220, 206, 181, 76, 35, 40, 99, 57,
  72, 137, 76, 191, 42, 51, 164, 0, 252, 220, 61, 135, 169, 226, 206, 28, 250,
  210, 44, 119, 23, 75, 136, 121, 124, 117, 156, 135, 164, 10, 53, 231, 39, 227,
  242, 206, 20, 169, 69, 60, 165, 219, 249, 72, 198, 183, 177, 199, 170, 23,
  248, 44, 7, 190, 224, 35, 216, 24, 229, 179, 136, 38, 89, 45, 85, 189, 219,
  49, 196, 203, 42, 136, 252, 221, 223, 246, 239, 37, 65, 61, 181, 30, 34, 180,
  129, 86, 244, 202, 66, 172, 62, 54, 190, 38, 39, 140, 50, 198, 138, 214, 85,
  236, 196, 29, 33, 78, 3, 14, 205, 232, 235, 170, 27, 248, 17, 175, 146, 12,
  150, 43, 35, 161, 132, 58, 215, 231, 151, 246, 140, 215, 6, 220, 163, 2, 229,
  128, 63, 196, 19, 175, 78, 147, 123, 91, 40, 229, 168, 83, 112, 96, 170, 230,
  254, 48, 100, 112, 36, 46, 25, 176, 158, 160, 27, 225, 17, 203, 56, 132, 68,
  16, 171, 132, 211, 30, 167, 133, 82, 236, 10, 159, 147, 240, 138, 38, 72, 172,
  10, 216, 27, 139, 153, 154, 100, 96, 38, 221, 72, 165, 5, 22, 220, 115, 21,
  37, 67, 212, 138, 25, 130, 226, 195, 173, 213, 125, 188, 19, 89, 209, 107,
  103, 237, 139, 141, 133, 92, 164, 38, 247, 178, 240, 61, 191, 99, 106, 153,
  231, 98, 165, 91, 3, 203, 220, 186, 85, 54, 209, 99, 139, 39, 161, 27, 224,
  225, 148, 243, 21, 202, 59, 162, 14, 182, 76, 226, 163, 62, 100, 41, 68, 173,
  28, 16, 22, 28, 94, 194, 250, 222, 197, 232, 219, 144, 62, 231, 195, 41, 157,
  197, 100, 141, 73, 145, 65, 145, 192, 163, 52, 221, 104, 145, 82, 226, 115,
  134, 102, 155, 43, 25, 152, 224, 4, 63, 215, 135, 235, 88, 219, 203, 130, 58,
  5, 51, 223, 111, 152, 69, 216, 195, 191, 180, 65, 3, 218, 167, 212, 158, 209,
  103, 33, 10, 160, 95, 241, 156, 104, 133, 100, 71, 23, 45, 135, 235, 123, 172,
  142, 113, 98, 169, 159, 188, 237, 33, 168, 140, 134, 145, 98, 178, 227, 81,
  132, 138, 159, 37, 85, 198, 254, 194, 162, 80, 120, 89, 255, 217, 112, 140,
  81, 44, 145, 118, 148, 135, 83, 143, 246, 163, 213, 13, 129, 24, 15, 178, 215,
  178, 85, 59, 80, 75, 34, 185, 109, 193, 214, 140, 187, 12, 78, 226, 142, 135,
  207, 8, 189, 120, 66, 117, 66, 229, 217, 30, 89, 58, 234, 184, 125, 69, 6,
  218, 79, 165, 99, 90, 224, 212, 78, 216, 28, 105, 43, 103, 165, 22, 19, 145,
  12, 127, 159, 118, 17, 248, 253, 189, 152, 238, 38, 174, 227, 96, 16, 226,
  223, 247, 229, 138, 240, 93, 139, 178, 180, 6, 227, 183, 126, 243, 98, 56,
  198, 183, 117, 55, 189, 103, 83, 208, 223, 208, 42, 30, 190, 204, 181, 51,
  255, 129, 70, 91, 141, 46, 196, 195, 17, 102, 114, 253, 237, 111, 13, 160, 90,
  85, 126, 49, 238, 110, 102, 133, 217, 157, 128, 125, 14, 75, 44, 37, 49, 207,
  167, 189, 42, 28, 159, 111, 153, 36, 20, 198, 29, 237, 170, 217, 205, 4, 54,
  251, 51, 126, 93, 53, 74, 120, 38, 242, 215, 46, 26, 159, 75, 136, 200, 197,
  253, 89, 77, 167, 34, 13, 167, 189, 230, 90, 247, 58, 208, 148, 69, 240, 240,
  86, 160, 184, 209, 193, 67, 215, 125, 56, 179, 88, 137, 14, 12, 207, 170, 196,
  189, 25, 184, 208, 163, 240, 151, 234, 238, 184, 140, 37, 22, 227, 108, 159,
  61, 40, 250, 35, 99, 129, 94, 70, 51, 170, 100, 176, 37, 215, 89, 92, 148,
  204, 233, 30, 65, 96, 178, 186, 197, 195, 175, 88, 254, 228, 219, 156, 152,
  101, 119, 166, 94, 206, 82, 190, 99, 233, 209, 172, 97, 196, 175, 2, 203, 57,
  216, 250, 132, 104, 242, 228, 38, 194, 141, 7, 121, 77, 201, 154, 49, 80, 63,
  90, 25, 152, 62, 38, 214, 101, 96, 47, 179, 238, 54, 189, 119, 187, 10, 236,
  232, 78, 104, 227, 250, 172, 175, 154, 144, 144, 99, 20, 253, 235, 9, 249, 15,
  39, 193, 85, 169, 123, 113, 55, 241, 59, 162, 200, 141, 113, 211, 99, 117,
  239, 42, 69, 226, 184, 47, 182, 153, 87, 14, 231, 11, 37, 15, 223, 250, 216,
  35, 226, 56, 22, 87, 227, 198, 183, 37, 55, 209, 4, 113, 116, 16, 157, 199,
  83, 204, 235, 242, 6, 53, 231, 12, 90, 120, 156, 214, 115, 189, 226, 195, 180,
  231, 107, 134, 31, 26, 10, 116, 185, 5, 75, 159, 177, 22, 115, 24, 209, 251,
  108, 231, 90, 192, 88, 84, 235, 44, 241, 16, 124, 14, 120, 83, 211, 251, 11,
  7, 25, 113, 31, 64, 103, 19, 246, 28, 131, 89, 63, 229, 149, 98, 2, 250, 179,
  218, 118, 58, 48, 183, 57, 54, 68, 51, 39, 173, 221, 106, 126, 87, 103, 251,
  8, 218, 62, 180, 138, 34, 179, 135, 29, 122, 163, 163, 145, 192, 169, 216, 67,
  100, 120, 221, 242, 19, 103, 139, 35, 114, 147, 74, 128, 237, 242, 139, 217,
  110, 137, 89, 89, 15, 208, 139, 242, 72, 32, 230, 201, 234, 93, 139, 122, 152,
  70, 10, 0, 41, 125, 10, 131, 53, 77, 64, 254, 42, 107, 208, 79, 90, 61, 50,
  22, 192, 144, 181, 141, 112, 47, 1, 247, 151, 135, 136, 142, 216, 166, 187,
  216, 109, 44, 168, 195, 109, 125, 42, 141, 148, 104, 88, 41, 237, 226, 86,
  252, 40, 136, 160, 197, 204, 161, 198, 174, 141, 132, 82, 176, 91, 200, 45,
  234, 193, 235, 159, 183, 164, 18, 51, 120, 190, 194, 172, 195, 213, 24, 36,
  74, 106, 199, 4, 76, 134, 204, 148, 4, 0, 219, 228, 33, 252, 109, 113, 9, 229,
  28, 84, 142, 217, 4, 208, 53, 5, 108, 128, 111, 103, 4, 153, 98, 146, 245,
  184, 244, 62, 229, 38, 8, 132, 98, 149, 101, 42, 91, 28, 165, 105, 156, 182,
  82, 132, 56, 129, 194, 109, 20, 26, 41, 156, 237, 130, 157, 16, 45, 108, 135,
  227, 251, 247, 10, 238, 153, 109, 74, 237, 112, 52, 139, 78, 12, 246, 193,
  186, 125, 243, 247, 102, 238, 209, 126, 60, 138, 228, 163, 162, 10, 159, 78,
  179, 52, 123, 185, 233, 49, 220, 218, 229, 207, 73, 33, 44, 155, 31, 172, 236,
  194, 118, 47, 128, 0, 0
]
```

</details>

## Welcome

Requests and suggestions are warmly welcome.

This package is open-source, stable and well-tested. Development happens on
[GitHub](https://github.com/signmotion/data_pipe). Feel free to report issues
or create a pull-request there.

General questions are best asked on
[StackOverflow](https://stackoverflow.com/questions/tagged/data_pipe).

## TODO

- More needed for projects data pipes.
