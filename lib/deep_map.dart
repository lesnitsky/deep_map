class MapKeyTuple<T> {
  Map map;
  String key;
}

extension DeepMapMethods on Map {
  MapKeyTuple _getDestinationMapAndValueKey(String key) {
    var m = this;
    final chunks = key.split('.');
    final valueKey = chunks.removeLast();

    chunks.forEach((key) {
      final Map<String, dynamic> newMap = {};
      m = m[key] ??= newMap;
    });

    return MapKeyTuple()
      ..key = valueKey
      ..map = m;
  }

  setDeep(String key, dynamic value) {
    final t = _getDestinationMapAndValueKey(key);
    t.map[t.key] = value;
  }

  getDeep(String key) {
    final t = _getDestinationMapAndValueKey(key);
    return t.map[t.key];
  }
}
