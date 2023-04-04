import 'package:rick_and_morty/core/model/retorno_api_model.dart';
import 'package:rick_and_morty/core/repositories/repository_base.dart';
import 'package:http/http.dart' as http;

class HttpRepository implements RepositoryBase {
  @override
  Future<RetornoAPIModel> get(String url) async {
    var retorno =
        await http.get(Uri.parse('https://rickandmortyapi.com/api/$url'));
    var response = retorno.body;
    return RetornoAPIModel(statusCode: retorno.statusCode, body: response);
  }
}
