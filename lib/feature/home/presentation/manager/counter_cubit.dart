import 'package:adkar/core/database/cache/cache_helper.dart';
import 'package:adkar/core/database/cache/cache_keys.dart';
import 'package:adkar/core/service_locator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<int> {
  CounterCubit() : super(0) {
    loadValue();
  }

  void loadValue() {
    final counterValue =
        getIt.get<CacheHelper>().getInt(CacheKeys.counterKey) ?? 0;
    emit(counterValue);
  }

  void increamentValue() {
    final newValue = state + 1;
    getIt.get<CacheHelper>().setInt(CacheKeys.counterKey, newValue);
    emit(newValue);
  }

  void resetValue() {
    emit(0);
    getIt.get<CacheHelper>().setInt(CacheKeys.counterKey, 0);
  }
}
