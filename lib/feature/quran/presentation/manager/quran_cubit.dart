import 'package:adkar/feature/quran/data/models/quran_model/quran_model.dart';
import 'package:adkar/feature/quran/data/service/quran_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'quran_state.dart';

class QuranCubit extends Cubit<QuranState> {
  final QuranService quranService;
  QuranCubit(this.quranService) : super(QuranInitial());
  Future<void> loadQuaran() async {
    final List<QuranModel> quran = await quranService.loadQuran();
    emit(QuranSuccess(quran: quran));
  }
}
