import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: ThemeData(
        dividerColor: Colors.transparent,
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String dropdownValue = 'português (Brasil)';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        title: DropdownButton<String>(
          value: dropdownValue,
          icon: const Icon(Icons.keyboard_arrow_down, color: Colors.blueGrey),
          iconSize: 24,
          elevation: 14,
          style: const TextStyle(color: Colors.blueGrey),
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
      body: Container(
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.fromLTRB(25.0, 15.0, 25.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Image(
              image: AssetImage(
                'assets/images/logo.png',
              ),
              width: 70.0,
              height: 70.0,
            ),
            const Divider(height: 25.0),
            Container(
              height: 40.0,
              child: TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                hintText: 'Número de telefone, email ou nome de usuário',
              ),
              validator: (String? value) {
                if (value == null || value.isEmpty) {
                  return 'Por favor, digite uma das opções para fazer login!';
                }
                return null;
              },
            ),
            ),
            const Divider(height: 25.0),
            Container(
              height: 40.0,
              child: TextFormField(
              obscureText: true,
              decoration: const InputDecoration(
                filled: true,
                fillColor: Colors.grey,
                hintText: 'Senha',
                suffixIcon: Icon(Icons.remove_red_eye_outlined),
              ),
              validator: (String? value) {
                if (value == null || value.isEmpty) {
                  return 'Por favor, digite sua senha para entrar!';
                }
                return null;
              },
            ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 25.0, bottom: 25.0),
              child: Container(
                height: 50.0,
                child: RaisedButton(
                  onPressed: () {},
                  shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(6.0),
                  ),
                  child: Text(
                    "Entrar",
                    style: TextStyle(color: Colors.white, fontSize: 20.0),
                  ),
                  color: Colors.blue[300],
                ),
              ),
            ),
            Padding(padding: EdgeInsets.only(bottom: 25.0), child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(child: RichText(
              text: TextSpan(
                style: TextStyle(color: Colors.grey, fontSize: 14.0),
                children: <TextSpan>[
 
                  TextSpan(text: 'Esqueceu seus dados de login?'),
                  TextSpan(
                      text: ' Obtenha ajuda para entrar.',
                      style: TextStyle(
                        color: Colors.blue[700],
                        fontWeight: FontWeight.w700,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          print('CLICOU');
                        }),
                ],
              ),
            ),),
              ],
            )),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child: Container(
                    height: 1.0,
                    width: 120.0,
                    color: Colors.blueGrey,
                  ),
                ),
                Text('OU', style: TextStyle(color: Colors.blueGrey, fontWeight: FontWeight.w700)),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child: Container(
                    height: 1.0,
                    width: 120.0,
                    color: Colors.blueGrey,
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.facebook_rounded, color: Colors.blue[700]),
                  Padding(
                    padding: EdgeInsets.only(left: 5.0),
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
      bottomNavigationBar: _DemoBottomAppBar(),
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
      color: Colors.white,
      elevation: 0,
      child: IconTheme(
        data: IconThemeData(color: Theme.of(context).colorScheme.onPrimary),
        child: Padding(padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0), child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RichText(
              text: TextSpan(
                style: TextStyle(color: Colors.grey, fontSize: 16.0),
                children: <TextSpan>[
                  TextSpan(text: 'Não tem uma conta?'),
                  TextSpan(
                      text: ' Cadastre-se.',
                      style: TextStyle(
                        color: Colors.blue[700],
                        fontWeight: FontWeight.w700,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          print('CLICOU');
                        }),
                ],
              ),
            ),
          ],
        ),),
      ),
    );
  }
}