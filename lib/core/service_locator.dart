import 'package:adkar/core/database/cache/cache_helper.dart';
import 'package:adkar/feature/quran/data/service/quran_service.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;
void setupServiceLocator() {
  getIt.registerSingleton<CacheHelper>(CacheHelper());
  getIt.registerSingleton<QuranService>(QuranService());
}
