import 'package:flutter_modular/flutter_modular.dart';
import 'package:movie_guidlist_new/main.dart';
import 'package:movie_guidlist_new/modules/crate_member/register_member.dart';
import 'package:movie_guidlist_new/modules/favories/favories_page.dart';
import 'package:movie_guidlist_new/modules/forget_password/forget_password.dart';
import 'package:movie_guidlist_new/modules/forget_password/otp_pin.dart';
import 'package:movie_guidlist_new/modules/home_page/home_page.dart';
import 'package:movie_guidlist_new/modules/login/login.dart';
import 'package:movie_guidlist_new/modules/login/login_FB/login_fackbook.dart';
import 'package:movie_guidlist_new/modules/main_page/main_page.dart';
import 'package:movie_guidlist_new/modules/movie_detail/movie_detail.dart';
import 'package:movie_guidlist_new/modules/profile_account/profile_account.dart';

class AppRoute extends Module {
  @override
  void bine(i) {}

  @override
  void routes(r) {
    // TODO: implement routes
    r.child('/', child: (context) => const MyMainApp());
    r.child(
      '/LoginPage',
      child: (context) => LoginPage(),
    );
    r.child(
      '/LoginPageFB',
      child: (context) => LoginPageFacebook(),
    );
    r.child(
      '/RegisterMemberPage',
      child: (context) => RegisterMemberPage(),
    );
    r.child(
      '/MainPage',
      child: (context) => MainPage(),
    );
    r.child(
      '/HoemPage',
      child: (context) => HomePage(),
    );
    r.child(
      '/FavoriesPage',
      child: (context) => FavoriesPage(),
    );
    r.child(
      '/ProfilePage',
      child: (context) => ProfileAccount(),
    );
    r.child(
      '/MovieDetail',
      child: (context) => MovieDetail(),
    );
    r.child("/ForgetPassword", child: (context) => ForgetPasswordPage());
    r.child("/OtpPin", child: (context) => OtpPin());
  }
}
