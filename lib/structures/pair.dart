class Pair<T, E> {
  final T first;
  final E second;

  Pair({
    required this.first,
    required this.second,
  });

  Pair<T, E> copyWith({T? first, E? second}) {
    return Pair(first: first ?? this.first, second: second ?? this.second);
  }
}
