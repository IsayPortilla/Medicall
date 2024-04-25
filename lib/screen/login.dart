import 'package:flutter/material.dart';
// import 'package:firebase_auth/firebase_auth.dart';

// final _firebase = FirebaseAuth.instance;
final _userTextEditingController = TextEditingController();
final _passTextEditingController = TextEditingController();

@override
void dispose() {
  _userTextEditingController.dispose();
  _passTextEditingController.dispose();
}

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _LoginScreen();
  }
}

class _LoginScreen extends State<LoginScreen> {
  // // ignore: prefer_final_fields
  // var _isLogin = true;
  final _form = GlobalKey<FormState>();
  var _enteredEmail = '';
  var _enteredPassword = '';

  // void _submit() async {
  //   final isValid = _form.currentState!.validate();

  // //   if (!isValid) {
  // //     return;
  // //   }
  //   _form.currentState!.save();
  //   try {
  //     if (_isLogin) {
  //       // ignore: no_leading_underscores_for_local_identifiers
  //       // final _userCredentials = await _firebase.signInWithEmailAndPassword(
  //           // email: _enteredEmail, password: _enteredPassword);
  //       // ignore: avoid_print
  //       // print(_userCredentials);
  //     } else {
  //       // ignore: no_leading_underscores_for_local_identifiers
  //       // final _userCredentials = await _firebase.createUserWithEmailAndPassword(
  //         // email: _enteredEmail,
  //         // password: _enteredPassword,
  //       // );
  //       // ignore: avoid_print
  //       // print(_userCredentials);
  //     }
  //   } on FirebaseAuthException catch (error) {
  //     if (error.code == 'email-already-in-use') {}
  //     // ignore: use_build_context_synchronously
  //     ScaffoldMessenger.of(context).clearSnackBars();
  //     // ignore: use_build_context_synchronously
  //     ScaffoldMessenger.of(context).showSnackBar(
  //       SnackBar(
  //         content: Text(error.message ?? 'Authentication failed'),
  //       ),
  //     );
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final width = constraints.maxWidth;
        if (width <= 600) {
          return Scaffold(
            body: Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/log.jpg'),
                      fit: BoxFit.cover)),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    // Flexible(
                    //   child: Image.asset('assets/images/log.jpg', height: 180),
                    // ),
                    SizedBox(
                      width: 350,
                      child: Card(
                        margin: const EdgeInsets.all(20),
                        child: SingleChildScrollView(
                          child: Padding(
                            padding: const EdgeInsets.all(16),
                            child: Form(
                              key: _form,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  TextFormField(
                                    decoration: const InputDecoration(
                                      icon: Icon(Icons.person),
                                      label: Text.rich(
                                        TextSpan(
                                          children: <InlineSpan>[
                                            WidgetSpan(
                                              child: Text(
                                                'Usuario',
                                                style: TextStyle(
                                                    color: Colors.white),
                                              ),
                                            ),
                                            WidgetSpan(
                                              child: Text(
                                                '*',
                                                style: TextStyle(
                                                    color: Colors.blue),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    keyboardType: TextInputType.emailAddress,
                                    autocorrect: false,
                                    textCapitalization: TextCapitalization.none,
                                    validator: (value) {
                                      if (value == null ||
                                          value.trim().isEmpty ||
                                          !value.contains('@')) {
                                        return '¡Por favor ingrese un correo válido!';
                                      }
                                      return null;
                                    },
                                    onSaved: (value) {
                                      _enteredEmail = value!;
                                    },
                                  ),
                                  TextFormField(
                                    decoration: const InputDecoration(
                                      icon: Icon(Icons.password),
                                      label: Text.rich(
                                        TextSpan(
                                          children: <InlineSpan>[
                                            WidgetSpan(
                                              child: Text(
                                                'Contraseña',
                                                style: TextStyle(
                                                    color: Colors.white),
                                              ),
                                            ),
                                            WidgetSpan(
                                              child: Text(
                                                '*',
                                                style: TextStyle(
                                                    color: Colors.blue),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    obscureText: true,
                                    validator: (value) {
                                      if (value == null ||
                                          value.trim().length < 6) {
                                        return 'Debe contener al menos 8 caracteres.';
                                      }
                                      return null;
                                    },
                                    onSaved: (value) {
                                      _enteredPassword = value!;
                                    },
                                  ),
                                  const SizedBox(
                                    height: 12,
                                  ),
                                  ElevatedButton(
                                    onPressed: () {
                                      setState(() {
                                        // _submit();
                                      });
                                    },
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: Theme.of(context)
                                            .colorScheme
                                            .primaryContainer),
                                    child: const Text(
                                      'Inciar',
                                      style: TextStyle(color: Colors.black),
                                      // _isLogin ? 'Iniciar.' : 'Registrarse.'),
                                    ),
                                    // TextButton(
                                    //   onPressed: () {
                                    //     setState(() {
                                    //       _isLogin = !_isLogin;
                                    //     });
                                    //   },
                                    //   child: Text(_isLogin
                                    //       ? 'Crear una cuenta.'
                                    //       : 'Ya tengo una cuenta.'),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        color: Color.fromARGB(0, 0, 0, 0),
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        } else {
          return Scaffold(
            body: Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/log.jpg'),
                      fit: BoxFit.cover)),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    // Flexible(
                    //   child: Image.asset('assets/images/log.jpg', height: 180),
                    // ),
                    SizedBox(
                      width: 350,
                      child: Card(
                        margin: const EdgeInsets.all(20),
                        child: SingleChildScrollView(
                          child: Padding(
                            padding: const EdgeInsets.all(16),
                            child: Form(
                              key: _form,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  TextFormField(
                                    decoration: const InputDecoration(
                                      icon: Icon(Icons.person),
                                      label: Text.rich(
                                        TextSpan(
                                          children: <InlineSpan>[
                                            WidgetSpan(
                                              child: Text(
                                                'Usuario',
                                                style: TextStyle(
                                                    color: Colors.white),
                                              ),
                                            ),
                                            WidgetSpan(
                                              child: Text(
                                                '*',
                                                style: TextStyle(
                                                    color: Colors.blue),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    keyboardType: TextInputType.emailAddress,
                                    autocorrect: false,
                                    textCapitalization: TextCapitalization.none,
                                    validator: (value) {
                                      if (value == null ||
                                          value.trim().isEmpty ||
                                          !value.contains('@')) {
                                        return '¡Por favor ingrese un correo válido!';
                                      }
                                      return null;
                                    },
                                    onSaved: (value) {
                                      _enteredEmail = value!;
                                    },
                                  ),
                                  TextFormField(
                                    decoration: const InputDecoration(
                                      icon: Icon(Icons.password),
                                      label: Text.rich(
                                        TextSpan(
                                          children: <InlineSpan>[
                                            WidgetSpan(
                                              child: Text(
                                                'Contraseña',
                                                style: TextStyle(
                                                    color: Colors.white),
                                              ),
                                            ),
                                            WidgetSpan(
                                              child: Text(
                                                '*',
                                                style: TextStyle(
                                                    color: Colors.blue),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    obscureText: true,
                                    validator: (value) {
                                      if (value == null ||
                                          value.trim().length < 6) {
                                        return 'Debe contener al menos 8 caracteres.';
                                      }
                                      return null;
                                    },
                                    onSaved: (value) {
                                      _enteredPassword = value!;
                                    },
                                  ),
                                  const SizedBox(
                                    height: 12,
                                  ),
                                  ElevatedButton(
                                    onPressed: () {
                                      setState(() {
                                        // _submit();
                                      });
                                    },
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: Theme.of(context)
                                            .colorScheme
                                            .primaryContainer),
                                    child: const Text(
                                      'Inciar',
                                      style: TextStyle(color: Colors.black),
                                      // _isLogin ? 'Iniciar.' : 'Registrarse.'),
                                    ),
                                    // TextButton(
                                    //   onPressed: () {
                                    //     setState(() {
                                    //       _isLogin = !_isLogin;
                                    //     });
                                    //   },
                                    //   child: Text(_isLogin
                                    //       ? 'Crear una cuenta.'
                                    //       : 'Ya tengo una cuenta.'),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        color: Color.fromARGB(0, 0, 0, 0),
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        }
      },
    );
  }
}
