import 'package:rxdart/rxdart.dart';

class HomeBloc {
  //Controller
  //-------------------------------------------------------------------------
  final BehaviorSubject<String> _searchController = BehaviorSubject<String>();

  //-------------------------------------------------------------------------
  // Stream
  //-------------------------------------------------------------------------
  Stream<String> get outSearch => _searchController.stream;

  //-------------------------------------------------------------------------
  //Dispose
  //-------------------------------------------------------------------------
  void dispose() {
    _searchController.close();
  }

  //-------------------------------------------------------------------------

  //Variavel Auxiliar
  //Funcoes
  void setSearch(String search) {
    _searchController.add(search);
  }
}
