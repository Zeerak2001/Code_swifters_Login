import 'package:codeswifters/blocs/authentication_bloc/authentication_bloc.dart';
import 'package:codeswifters/screens/Home/home_screen.dart';
import 'package:codeswifters/screens/auth/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyAppView extends StatelessWidget {
  const MyAppView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Codeswifters',
      theme: ThemeData(colorScheme: const ColorScheme.light(background: Colors.white, onBackground: Colors.black, primary: Color.fromARGB(255, 0, 255, 85), onPrimary: Color.fromARGB(255, 3, 90, 7), secondary: Colors.green, onSecondary: Colors.lightGreen, tertiary: Colors.blue, error: Colors.red, outline: Colors.grey)),
      home: BlocBuilder<AuthenticationBloc, AuthenticationState>(builder: (context, state) {
        if (state.status == AuthenticationStatus.authenticated) {
          return const HomeScreen();
        } else {
          return const WelcomeScreen();
        }
      }),
    );
  }
}
