import 'package:rick_and_morty/core/model/retorno_api_model.dart';

abstract class RepositoryBase {
  Future<RetornoAPIModel> get(String url);
}
