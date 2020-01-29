import 'package:rxdart/rxdart.dart';

class DrawerBloc {
  //Controller
  //-------------------------------------------------------------------------
  final BehaviorSubject<int> _pageController = BehaviorSubject<int>.seeded(0);

  //-------------------------------------------------------------------------
  // Stream
  //-------------------------------------------------------------------------
  Stream<int> get outPage => _pageController.stream;

  //-------------------------------------------------------------------------
  //Dispose
  //-------------------------------------------------------------------------
  void dispose() {
    _pageController.close();
  }

  //-------------------------------------------------------------------------

  //Variavel Auxiliar
  int _page = 0;

  //Funcoes
  void setPage(int page) {
    if (page == _page) return;
    _page = page;
    _pageController.add(page);
  }
}
