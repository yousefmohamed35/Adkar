import 'package:adkar/feature/home/presentation/views/widgets/animated_counter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../manager/counter_cubit.dart';
import 'custom_button.dart';
import 'custom_container.dart';

class HomeViewBodyBlocBuilder extends StatelessWidget {
  const HomeViewBodyBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CounterCubit, int>(
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
            AnimatedCounter(count: state),
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
                  text: 'إِعَادَة',
                  color: const Color.fromARGB(157, 52, 59, 163),
                  onPressed: () {
                    HapticFeedback.vibrate();
                    cubit.resetValue();
                  },
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}
