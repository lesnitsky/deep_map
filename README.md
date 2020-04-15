# Deep Map

[![lesnitsky.dev](https://lesnitsky.dev/shield.svg?hash=120950)](https://lesnitsky.dev?utm_source=deep_map)
[![GitHub stars](https://img.shields.io/github/stars/lesnitsky/deep_map.svg?style=social)](https://github.com/lesnitsky/deep_map)
[![Twitter Follow](https://img.shields.io/twitter/follow/lesnitsky_dev.svg?label=Follow%20me&style=social)](https://twitter.com/lesnitsky_dev)

## Installation

```yaml
dependencies:
  deep_map: ^1.0.0
```

## Example

```dart
import 'package:deep_map/deep_map.dart';

final a = {};

a.setDeep('a.b.c', 42);

a.getDeep('a'); // { b: { c: 42 } }
a.getDeep('a.b.c'); // 42
```

## License

MIT
