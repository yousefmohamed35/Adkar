import 'package:adkar/feature/quran/presentation/manager/quran_cubit.dart';
import 'package:adkar/feature/quran/presentation/manager/quran_state.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

class Quran extends StatelessWidget {
  const Quran({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<QuranCubit, QuranState>(
      builder: (context, state) {
        if (state is QuranSuccess) {
          return ListView.builder(
            itemCount: state.quran.length,
            itemBuilder: (context, index) {
              return Text(state.quran[index].totalVerses.toString());
            },
          );
        } else {
         return Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
