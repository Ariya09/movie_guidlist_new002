import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:movie_guidlist_new/widgets/all_widgets.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final email_controller = TextEditingController();
  final password_controller = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "ล็อคอิน",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.cyan[900],
        ),
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/bg.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Spacer(
                    flex: 2,
                  ),
                  Container(
                      width: screenSize.width * 0.6,
                      height: screenSize.height * 0.25,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                            // Border width
                            ),
                      ),
                      child: ClipOval(
                        child: Image.asset(
                          'assets/logo.png',
                          fit: BoxFit.cover,
                        ),
                      )),
                  SizedBox(
                    height: 50,
                  ),
                  Text(
                    "เข้าสู่ระบบ",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  textFieldCustom('อีเมล', email_controller),
                  textFieldCustom('รหัสผ่าน', password_controller),

                  // Expanded(
                  //     child:
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Modular.to.pushNamed("/RegisterMemberPage");
                          },
                          child: Text(
                            "สมัครสมาชิก",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        Spacer(),
                        GestureDetector(
                          onTap: () {
                            Modular.to.pushNamed("/RegisterMemberPage");
                          },
                          child: Text(
                            "ลืมรหัสผ่าน?",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Divider(
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),

                  //  ),
                  ButtonStyeCustom('ล็อคอิน', 'loginEmail'),
                  Spacer(
                    flex: 2,
                  )
                ]),
          ),
        ));
  }
}
