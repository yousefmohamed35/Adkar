import 'package:flutter/material.dart';
import 'home_view_body_bloc_builder.dart';

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
        child: HomeViewBodyBlocBuilder(),
      ),
    );
  }
}

