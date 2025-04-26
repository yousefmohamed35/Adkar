abstract class QuranState {}

class QuranInitial extends QuranState {}

class QuranSuccess extends QuranState {
final  List<dynamic> quran;

  QuranSuccess({required this.quran});
}
