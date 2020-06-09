import 'package:shared_preferences/shared_preferences.dart';
import 'storage_service.dart';

class storageServiceSharedPreferences extends StorageService {
  @override
  Future<int> getCounterValue() async {
    // TODO: implement getCounterValue
    final prefs = await SharedPreferences.getInstance();
    
    return prefs.getInt('counter_int_key') ?? 0;
  }

  @override
  Future<void> saveCounterValue(int value) async {
    // TODO: implement saveCounterValue
    final prefs = await SharedPreferences.getInstance();

    return prefs.setInt('counter_int_key', value);
  }

}