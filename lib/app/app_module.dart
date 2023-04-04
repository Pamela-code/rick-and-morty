import 'package:flutter_modular/flutter_modular.dart';
import 'package:rick_and_morty/core/repositories/repository_base.dart';

import '../core/repositories/http_repository.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [
        Bind.singleton<RepositoryBase>((i) => HttpRepository()),
      ];

  @override
  List<ModularRoute> get routes => [];
}
