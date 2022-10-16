import 'package:shared_preferences/shared_preferences.dart';

import '../view/splash_view.dart';
import './splash_presenter.dart';

class SplashPresenterImpl implements SplashPresenter {
  late final SplashView _view;

  @override
  Future<void> checkLogin() async {
    _view.showLoader();

    final sp = await SharedPreferences.getInstance();
    final accessToken = sp.getString('accessToken');

    _view.logged(accessToken != null);
    // if (accessToken != null) {
    //   _view.logged(true);
    // } else {
    //   _view.logged(false);
    // }

    //?await Future.delayed(Duration(seconds: 2));
    // _view.logged(false);
  }

  @override
  set view(view) => _view = view;
}
