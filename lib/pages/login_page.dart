import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:insta_clone/pages/home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String dropdownValue = 'português (Brasil)';
  final nameController = TextEditingController();
  final passController = TextEditingController();

  bool? isCompleted;

  get page => null;

//
  void _nameChanged(String text) {
    setState(() {
      if (text.isNotEmpty) {
        isCompleted = true;
      } else {
        isCompleted = false;
      }
    });
  }

  void _passChanged(String text) {
    setState(() {
      if (text.isNotEmpty) {
        isCompleted = true;
      } else {
        isCompleted = false;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF131313),
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: const Color(0xFF131313),
        title: DropdownButton<String>(
          value: dropdownValue,
          icon: const Icon(Icons.keyboard_arrow_down, color: Colors.grey),
          iconSize: 24,
          elevation: 14,
          style: const TextStyle(color: Colors.grey),
          onChanged: (String? newValue) {
            setState(() {
              dropdownValue = newValue!;
            });
          },
          items: <String>[
            'português (Brasil)',
            'inglês (US)',
            'español (España)'
          ].map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          padding: const EdgeInsets.fromLTRB(25.0, 80.0, 25.0, 0.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              const Image(
                image: AssetImage(
                  './assets/images/logo.png',
                ),
                width: 70.0,
                height: 70.0,
              ),
              const Divider(height: 25.0),
              Padding(
                padding: const EdgeInsets.only(top: 0),
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      border: Border.all(
                        width: 0.5,
                        color: Colors.grey,
                      ),
                      color: Colors.grey[300]),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: TextFormField(
                      controller: nameController,
                      onChanged: _nameChanged,
                      obscureText: false,
                      decoration: const InputDecoration(
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        hintText:
                            'Número de telefone, email ou nome de usuario',
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      border: Border.all(
                        width: 0.5,
                        color: Colors.grey,
                      ),
                      color: Colors.grey[300]),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: TextFormField(
                      controller: passController,
                      onChanged: _passChanged,
                      obscureText: true,
                      decoration: const InputDecoration(
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        hintText: 'Senha',
                        suffixIcon: Icon(Icons.remove_red_eye_outlined),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 25.0, bottom: 25.0),
                child: Container(
                  height: 50.0,
                  decoration: BoxDecoration(
                    border: Border.all(
                        width: isCompleted == true ? 1 : 0, color: Colors.grey),
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          // ignore: prefer_const_constructors
                          builder: (context) => HomePage()));
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          isCompleted == true
                              ? Colors.blue
                              : Colors.blue.shade100),
                    ),
                    child: Text(
                      "Entrar",
                      style: TextStyle(
                          color: isCompleted == true
                              ? Colors.white
                              : Colors.white54,
                          fontSize: 20.0),
                    ),
                  ),
                ),
              ),
              Padding(
                  padding: const EdgeInsets.only(bottom: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Flexible(
                        child: RichText(
                          text: TextSpan(
                            style: const TextStyle(
                                color: Colors.grey, fontSize: 14.0),
                            children: <TextSpan>[
                              const TextSpan(
                                  text: 'Esqueceu seus dados de login?'),
                              TextSpan(
                                  text: ' Obtenha ajuda para entrar.',
                                  style: TextStyle(
                                    color: Colors.blue[700],
                                    fontWeight: FontWeight.w700,
                                  ),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {}),
                            ],
                          ),
                        ),
                      ),
                    ],
                  )),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Container(
                      height: 0.5,
                      width: 120.0,
                      color: Colors.grey,
                    ),
                  ),
                  const Text('OU',
                      style: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.w700)),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Container(
                      height: 0.5,
                      width: 120.0,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.facebook_rounded, color: Colors.blue[700]),
                    Padding(
                      padding: const EdgeInsets.only(left: 5.0),
                      child: Text(
                        "Entrar com o Facebook",
                        style: TextStyle(
                            color: Colors.blue[700],
                            fontSize: 15.0,
                            fontWeight: FontWeight.w700),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const _DemoBottomAppBar(),
    );
  }
}

class _DemoBottomAppBar extends StatelessWidget {
  const _DemoBottomAppBar({
    this.fabLocation = FloatingActionButtonLocation.endDocked,
    this.shape = const CircularNotchedRectangle(),
  });

  final FloatingActionButtonLocation fabLocation;
  final NotchedShape? shape;

  static final List<FloatingActionButtonLocation> centerLocations =
      <FloatingActionButtonLocation>[
    FloatingActionButtonLocation.centerDocked,
    FloatingActionButtonLocation.centerFloat,
  ];

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: shape,
      color: const Color(0xFF131313),
      elevation: 0,
      child: IconTheme(
        data: IconThemeData(color: Theme.of(context).colorScheme.onPrimary),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RichText(
                text: TextSpan(
                  style: const TextStyle(color: Colors.grey, fontSize: 16.0),
                  children: <TextSpan>[
                    const TextSpan(text: 'Não tem uma conta?'),
                    TextSpan(
                        text: ' Cadastre-se.',
                        style: TextStyle(
                          color: Colors.blue[700],
                          fontWeight: FontWeight.w700,
                        ),
                        recognizer: TapGestureRecognizer()..onTap = () {}),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
