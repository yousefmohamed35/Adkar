import 'package:adkar/feature/home/repos/home_repo.dart';

class HomeRepoImpl implements HomeRepo {
  int counter = 0;

  @override
  void increamentCounter() {
    counter++;
  }

  @override
  void resetCounter() {
    counter = 0;
  }
}
