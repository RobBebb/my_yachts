import 'data.dart';

class Repository<T extends DataModel> extends DataContract<T> {
  Repository({required this.sourceList});

  final List<Source<T>> sourceList;

  /// Check there is a valid combination of Source and RequestType.
  /// A RequestType of 'any' can use any source otherwise the source and
  /// RequestType must be the same.
  bool isMatchedSource(Source source, RequestType type) {
    if (type == RequestType.any) return true;
    return source.type == SourceType.local
        ? type == RequestType.local
        : type == RequestType.remote;
  }

  @override
  Future<T> setItem(T item) async {
    // Write in reverse-order, so that the server can generate primary keys
    // for new items.
    for (final source in sourceList.reversed) {
      item = await source.setItem(item);
    }
    return item;
  }

  @override
  Future<T?> getItem(String id) async {
    final emptySources = <Source<T>>[];
    T? item;

    // Check each [Source] for the item.
    for (final source in sourceList) {
      item = await source.getItem(id);

      // Note which sources have no info.
      if (item == null) {
        emptySources.add(source);
      } else {
        break;
      }
    }

    // If we found an answer but some of our sources were unsure, store that
    // answer in each of those sources.
    if (item != null && emptySources.isNotEmpty) {
      for (final source in emptySources) {
        await source.setItem(item);
      }
    }
    return item;
  }

  @override
  Future<List<T>> getItems({
    RequestType type = RequestType.any,
  }) async {
    final emptySources = <Source<T>>[];
    List<T> items = [];

    // Check each [Source] for an answer.
    for (final source in sourceList) {
      if (!isMatchedSource(source, type)) {
        emptySources.add(source);
        continue;
      }

      items = await source.getItems();

      // Note which sources have no info.
      if (items.isEmpty) {
        emptySources.add(source);
      } else {
        break;
      }
    }

    // If we found an answer, but some of our sources were unsure, store that
    // answer in each of those sources.
    if (items.isNotEmpty && emptySources.isNotEmpty) {
      for (final source in emptySources) {
        for (final item in items) {
          source.setItem(item);
        }
      }
    }

    return items;
  }

  @override
  Future<void> deleteItem(T item) async {
    for (final source in sourceList) {
      source.deleteItem(item);
    }
  }

  @override
  Future<void> setFavourite(String id, bool isFavourited) async {
    for (final source in sourceList) {
      source.setFavourite(id, isFavourited);
    }
  }

  @override
  Future<List<String>> getFavouriteIds() async {
    final emptySources = <Source<T>>[];
    List<String> favouriteIds = [];

    // Check each [Source] for an answer.
    for (final source in sourceList) {
      favouriteIds = await source.getFavouriteIds();

      // Note which sources have no info
      if (favouriteIds.isEmpty) {
        emptySources.add(source);
      } else {
        break;
      }
    }

    // If we found an answer, but some of our sources were unsure, store that
    // answer in each of those sources
    if (favouriteIds.isNotEmpty && emptySources.isNotEmpty) {
      for (final source in emptySources) {
        for (final id in favouriteIds) {
          source.setFavourite(id, true);
        }
      }
    }

    return favouriteIds;
  }

  @override
  Future<void> toggleFavourite(String id) async {
    for (final source in sourceList) {
      source.toggleFavourite(id);
    }
  }
}
