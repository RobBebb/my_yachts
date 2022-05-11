import 'data.dart';

class LocalMemorySource<T extends DataModel> extends Source<T> {
  LocalMemorySource()
      : _items = <String, T>{},
        _favouriteIds = <String>{};

  @override
  SourceType type = SourceType.local;

  final Map<String, T> _items;
  final Set<String> _favouriteIds;

  @override
  Future<T> setItem(T item) async => _items[item.id!] = item;

  @override
  Future<T?> getItem(String id) async => _items[id];

  @override
  Future<List<T>> getItems() async => _items.values.toList();

  @override
  Future<void> deleteItem(T item) async =>
      _items.containsKey(item.id) ? _items.remove(item.id) : null;

  @override
  Future<void> setFavourite(String id, bool isFavourited) async =>
      isFavourited ? _favouriteIds.add(id) : _favouriteIds.remove(id);

  @override
  Future<List<String>> getFavouriteIds() async => _favouriteIds.toList();

  @override
  Future<void> toggleFavourite(String id) async =>
      setFavourite(id, !_favouriteIds.contains(id));
}
