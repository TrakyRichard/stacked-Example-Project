import 'package:test_stacked/counter_viewmodel.dart';
import 'package:test_stacked/service_locator.dart';
import 'package:test_stacked/storage_service.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockStorageService extends Mock implements StorageService {}

void main() {
  setUpAll(() {
    setUpServiceLocator();
    locator.allowReassignment = true;
  });

  test(
    'should increment counter',
    () async {
      // reassign storage service with a mock
      var mockStorageService = MockStorageService();
      when(mockStorageService.getCounterValue()).thenAnswer(
        (_) => Future.value(0),
      );
      locator.registerSingleton<StorageService>(mockStorageService);

      // increment counter
      final viewModel = CounterViewModel();
      viewModel.increment();

      expect(viewModel.counter, 1);
    },
  );
}