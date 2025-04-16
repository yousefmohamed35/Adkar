import 'package:adkar/core/database/cache/cache_helper.dart';
import 'package:adkar/core/service_locator.dart';
import 'package:adkar/feature/home/presentation/manager/counter_cubit.dart';
import 'package:adkar/feature/home/presentation/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
    return BlocProvider(
      create: (context) => CounterCubit(),
      child: MaterialApp(
        theme: ThemeData(useMaterial3: true),
        debugShowCheckedModeBanner: false,
        home: HomeView(),
      ),
    );
  }
}
