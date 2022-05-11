/// Minimum set of functionality required to store data objects in a
/// [Repository]

/// Definition of the minimum set of data for a data object. All data objects
/// must have an identifier (id).
abstract class DataModel {
  const DataModel({this.id});
  final String? id;
}

/// Definition of the minimum set of methods required to manage our app's data.
abstract class DataContract<T extends DataModel> {
  /// Save the given item (data object).
  Future<T> setItem(T item);

  /// Retrieve the item (data object) associated with the given[id], if it exists.
  Future<T?> getItem(String id);

  /// Retreive all known items (data objects).
  Future<List<T>> getItems();

  /// Remove the item (data object) associated with the given[id], if it exists.
  Future<void> deleteItem(T item);

  /// Mark the supplied [id] as "favourited" by the active user.
  Future<void> setFavourite(String id, bool isFavourited);

  /// Retrieve the [id]s of all item "favourited" by the active user.
  /// Returns an empty list if the user has not favourited any items.
  Future<List<String>> getFavouriteIds();

  /// Flips the active user's "favourited" status for the given [id].
  Future<void> toggleFavourite(String id);
}

/// Type of [DataContract] subclass that is responsible for yielding real data.
abstract class Source<T extends DataModel> extends DataContract<T> {
  SourceType get type;
}

enum SourceType { local, remote }
enum RequestType { local, remote, any }
