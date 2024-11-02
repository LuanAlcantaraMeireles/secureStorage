import 'package:novo_projeto/entidade/pessoa.dart';
import 'package:novo_projeto/repositorio/interfaceDao';

class Dao implements InterfaceDao {
  final List<Pessoa> _dados = [];
  @override
  Future<void> add(Pessoa pessoa) async {
    _dados.add(pessoa);
  }

  @override
  Future<List<Pessoa>> get dados async => _dados;

  @override
  Future<int> remove(Pessoa pessoa) {
    int index = _dados.indexOf(pessoa);
    if (index != -1) {
      _dados.removeAt(index);
    }
    return Future.value(index);
  }
}
