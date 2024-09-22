import 'package:flutter_modular/flutter_modular.dart';
import 'package:movie_guidlist_new/main.dart';
import 'package:movie_guidlist_new/modules/crate_member/bloc/register_bloc.dart';
import 'package:movie_guidlist_new/modules/crate_member/view/register_member.dart';
import 'package:movie_guidlist_new/modules/favories/view/favories_page.dart';
import 'package:movie_guidlist_new/modules/forget_password/view/forget_password.dart';
import 'package:movie_guidlist_new/modules/forget_password/view/otp_pin.dart';
import 'package:movie_guidlist_new/modules/home_page/view/home_page.dart';
import 'package:movie_guidlist_new/modules/login/view/login.dart';
import 'package:movie_guidlist_new/modules/login/view/login_fackbook.dart';
import 'package:movie_guidlist_new/modules/main_page/main_page.dart';
import 'package:movie_guidlist_new/modules/movie_detail/view/movie_detail.dart';
import 'package:movie_guidlist_new/modules/profile_account/view/edit_password.dart';
import 'package:movie_guidlist_new/modules/profile_account/view/edit_profile.dart';
import 'package:movie_guidlist_new/modules/profile_account/view/profile_account.dart';
import 'package:movie_guidlist_new/modules/profile_account/view/profile_detail.dart';

class AppRoute extends Module {
  @override
  void binds(i) {
    i.addSingleton<RegisterBloc>(RegisterBloc.new);

    // i.addSingleton<ContextCubit>(ContextCubit.new);
  }

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
    r.child(
      '/PasswordEdit',
      child: (context) => PasswordEdit(),
    );
    r.child(
      '/ProfileDetail',
      child: (context) => ProfileDetail(),
    );
    r.child(
      '/ProfileEdit',
      child: (context) => ProfileEdit(),
    );
    r.child(
      '/MovieDetail',
      child: (context) => MovieDetail(),
    );
    r.child("/ForgetPassword", child: (context) => ForgetPasswordPage());
    r.child("/OtpPin", child: (context) => OtpPin());
  }
}
