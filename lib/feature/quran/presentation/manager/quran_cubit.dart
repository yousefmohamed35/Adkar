import 'package:adkar/feature/quran/data/service/quran_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'quran_state.dart';

class QuranCubit extends Cubit<QuranState> {
  final QuranService quranService;
  QuranCubit(this.quranService) : super(QuranInitial());
  Future<void> loadQuaran() async {
    var data = quranService.loadQuran();
    emit(QuranSuccess(quran: data));
  }
}
