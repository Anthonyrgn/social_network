import 'package:flutter/material.dart';
import 'package:fluttersocial/util/images.dart';

class AuthController extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => AuthState();
}

class AuthState extends State<AuthController>{

  PageController? _pageController;
  TextEditingController? _mail;
  TextEditingController? _password;
  TextEditingController? _name;
  TextEditingController? _surname;

  @override
  void initState() {
    _pageController = PageController();
    _mail = TextEditingController();
    _password = TextEditingController();
    _name = TextEditingController();
    _surname = TextEditingController();

    super.initState();
  }

  @override
  void dispose() {
    _pageController?.dispose();
    _mail?.dispose();
    _password?.dispose();
    _name?.dispose();
    _surname?.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: SingleChildScrollView(
        child: InkWell(
          onTap: null,
          child: SafeArea(
            child: Column(
              children: [
                Image.asset(logoImage, height: MediaQuery.of(context).size.height / 5),
              ],
            ),
          )

        ),
      )
    );
  }

  Widget logOrCreateButtons(){
    return Container(
      width: 300,
      height: 50,
      child: CustomPaint(
        painter: ,
        child: Row(
          btn("Se connecter"),
          btn("Créer un compte")
        ),
      ),
    );
  }

  Expanded btn(String name){
    return Expanded(
      child: TextButton(
        child: Text(name),
        onPressed: (){
          int page = (_pageController?.page == 0.0) ? 1 : 0;
          _pageController?.animateToPage(
              page,
              duration: Duration(milliseconds: 500),
              curve: Curves.bounceOut
          );
        },
      ),
    );
  }
}