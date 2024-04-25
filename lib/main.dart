import 'package:flutter/material.dart';
import 'package:medicall/screen/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    // return MultiProvider(
    //   providers: [ChangeNotifierProvider(create: (_) => ChatProvider())],
    return MaterialApp(
      //     routes: {
      //       '/chat': (context) => const ChatScreen(),
      //       '/create': (context) => const CreateUserScreen(),
      //       '/datosGrales': (context) => const FormularioScreen(),
      //       '/datosSuelo': (context) => const FormularioScreen2(),
      //       '/datosPercepcion': (context) => const FormularioScreen3(),
      //       '/datosAdicionales': (context) => const FormularioScreen4(),
      //       '/camara': (context) => const CameraPage(),
      //       '/menu': (context) => const Menu(),
      //       '/mapa': (context) => const HomePage(),
      //       '/verEditar': (context) => const ReadUserScreen(),
      //     },
      debugShowCheckedModeBanner: false,
      title: 'Medic + All Uniforms',
      theme: ThemeData().copyWith(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 32, 238, 211)),
      ),
      home: const LoginScreen(),
      // home: StreamBuilder(
      // stream: FirebaseAuth.instance.authStateChanges(),
      //   builder: (ctx, snapshot) {
      //     if (snapshot.hasData) {
      //       return const Menu();
      //     }
      //     return const LoginScreen();
      //   },
      // ),
      // themeMode: /,
    );
    // );
  }
}
