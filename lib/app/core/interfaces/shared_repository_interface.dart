abstract class ISharedRepositoryInterface {
  setInstace();
  dynamic getValue<T>(String key);
  Future<bool> setValue<T>(String key, dynamic value);
}
