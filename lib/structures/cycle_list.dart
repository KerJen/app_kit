import 'dart:collection';

class CycleList<T> extends ListBase<T> {
  final int limit;
  final List<T> _data = [];

  CycleList({required this.limit});

  @override
  void add(T element) {
    if (length == limit) {
      _data.removeAt(0);
    }
    _data.add(element);
  }

  @override
  void addAll(Iterable<T> iterable) {
    for (var element in iterable) {
      if (length == limit) {
        _data.removeAt(0);
      }
      _data.add(element);
    }
  }

  @override
  T operator [](int index) {
    return _data[index];
  }

  @override
  void operator []=(int index, T value) {
    _data[index] = value;
  }

  @override
  set length(int newLength) {
    _data.length = newLength;
  }

  @override
  int get length => _data.length;
}
