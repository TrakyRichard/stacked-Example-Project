import 'storage_service.dart';
import 'storage_service_fake.dart';
import 'package:get_it/get_it.dart';


GetIt locator = GetIt.instance;

setUpServiceLocator(){
  locator.registerLazySingleton(() => StorageServiceFake());
  
}