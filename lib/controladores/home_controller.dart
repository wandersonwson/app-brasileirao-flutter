import 'package:brasileirao/modelos/time.dart';
import 'package:brasileirao/repositorios/time_repository.dart';

class HomeController {
  TimeRepository timeRepository = TimeRepository();
  List<Time> get tabela => timeRepository.times;

  HomeController();
}