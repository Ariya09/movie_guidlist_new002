import 'package:flutter_modular/flutter_modular.dart';
import 'package:movie_guidlist_new/main.dart';
import 'package:movie_guidlist_new/modules/crate_member/register_member.dart';
import 'package:movie_guidlist_new/modules/forget_password/forget_password.dart';
import 'package:movie_guidlist_new/modules/forget_password/otp_pin.dart';
import 'package:movie_guidlist_new/modules/login/login.dart';
import 'package:movie_guidlist_new/modules/login/login_fackbook.dart';

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
    r.child("/ForgetPassword", child: (context) => ForgetPasswordPage());
    r.child("/OtpPin", child: (context) => OtpPin());
  }
}
