import 'package:flutter_test/flutter_test.dart';

import 'package:deep_map/deep_map.dart';

void main() {
  test('works', () {
    final a = {};
    a.setDeep('a.b.c', 42);
    expect(a.getDeep('a.b.c'), equals(42));
  });
}
