import 'package:flutter/material.dart';
import 'widgets/custom_button.dart';
import 'widgets/custom_container.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
          child: Column(
            children: [
              SizedBox(height: 100),
              CustomContainer(
                text:
                    'وَإِنْ مِنْ شَيْءٍ إِلَّا يُسَبِّحُ بِحَمْدِهِ وَلَٰكِنْ لَا تَفْقَهُونَ تَسْبِيحَهُمْ ﴿٤٤ الإسراء﴾',
              ),
              SizedBox(height: 100),
              CustomButton(text: '0', width: 120, hight: 110),
              SizedBox(height: 20),
              Row(
                children: [
                  CustomButton(text: 'سَبِّحْ', width: 150, hight: 140),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [CustomButton(text: 'إعادة')],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
