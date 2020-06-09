import 'storage_service.dart';

class StorageServiceFake extends StorageService{
  @override
  Future<int> getCounterValue() async {
    // TODO: implement getCounterValue
    return 11;
  }

  @override
  Future<void> saveCounterValue(int value) async {
    // TODO: implement saveCounterValue
    throw UnimplementedError();
  }

}