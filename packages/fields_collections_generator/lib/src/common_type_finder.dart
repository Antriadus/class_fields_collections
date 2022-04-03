class CommonTypeFinder {
  CommonTypeFinder._();

  static String findTopCommonType(List<Set<String>> allTypes) {
    final allTypesRepaired = _needToAddNullable(allTypes) ? _addNullable(allTypes) : allTypes;
    final topCommonSupertype = allTypesRepaired
        .fold<Set>(
          allTypesRepaired.first,
          (a, b) => a.intersection(b),
        )
        .first;
    return topCommonSupertype;
  }

  static List<Set<String>> _addNullable(List<Set<String>> allTypes) {
    return allTypes
        .map((set) => set
            //add nullable type for each type
            .expand<String>(
              (element) => {
                if (!_isNullable(element)) '$element?',
                element,
              },
            )
            .toSet())
        .toList();
  }

  static bool _needToAddNullable(List<Set<String>> allTypes) {
    return allTypes.map((s) => _isNullable(s.first)).any((isNullable) => isNullable);
  }

  static bool _isNullable(String type) {
    return type.contains('?');
  }
}
