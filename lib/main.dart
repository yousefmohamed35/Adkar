import 'package:adkar/core/database/cache/cache_helper.dart';
import 'package:adkar/core/service_locator.dart';
import 'package:adkar/feature/home/presentation/manager/counter_cubit.dart';
import 'package:adkar/feature/quran/data/service/quran_service.dart';
import 'package:adkar/feature/quran/presentation/manager/quran_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'feature/quran/quran.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupServiceLocator();
  await getIt.get<CacheHelper>().initialize();
  runApp(const AdkharApp());
}

class AdkharApp extends StatelessWidget {
  const AdkharApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => CounterCubit()),
        BlocProvider(
          create:
              (context) => QuranCubit(getIt.get<QuranService>())..loadQuaran(),
        ),
      ],
      child: MaterialApp(
        theme: ThemeData(useMaterial3: true),
        debugShowCheckedModeBanner: false,
        home: Quran(),
      ),
    );
  }
}
