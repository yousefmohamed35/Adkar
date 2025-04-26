import 'package:adkar/feature/quran/data/models/quran_model/quran_model.dart';

abstract class QuranState {}

class QuranInitial extends QuranState {}

class QuranSuccess extends QuranState {
  final List<QuranModel> quran;

  QuranSuccess({required this.quran});
}
