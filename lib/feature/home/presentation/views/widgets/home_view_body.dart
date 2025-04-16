import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/convert_to_arabic.dart';
import '../../manager/counter_cubit.dart';
import 'custom_button.dart';
import 'custom_container.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 166, 200, 233), // Misty Purple
            Color.fromARGB(255, 129, 191, 241), // Sky Blue
            Color.fromARGB(255, 42, 143, 211), // Cool Gray // Light Blue Grey
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomRight,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: BlocBuilder<CounterCubit, int>(
          builder: (context, state) {
            var cubit = context.read<CounterCubit>();
    
            return Column(
              children: [
                SizedBox(height: 100),
                CustomContainer(
                  text:
                      'وَإِنْ مِنْ شَيْءٍ إِلَّا يُسَبِّحُ بِحَمْدِهِ وَلَٰكِنْ لَا تَفْقَهُونَ تَسْبِيحَهُمْ ﴿٤٤ الإسراء﴾',
                ),
                SizedBox(height: 80),
                CustomButton(
                  text: convertToArabicNumbers(state.toString()),
                  width: 120,
                  hight: 110,
                ),
                SizedBox(height: 30),
                Row(
                  children: [
                    CustomButton(
                      text: 'سَبِّحْ',
                      width: 150,
                      hight: 140,
                      onPressed: () {
                        cubit.increamentValue();
                      },
                    ),
                  ],
                ),
    
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CustomButton(
                      text: 'إعادة',
                      onPressed: () {
                        cubit.resetValue();
                      },
                    ),
                  ],
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
