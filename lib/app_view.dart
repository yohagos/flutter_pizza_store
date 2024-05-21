import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pizza_app/blocs/authentication_bloc/authentication_bloc.dart';
import 'package:pizza_app/screens/auth/views/welcome_screen.dart';
import 'package:pizza_app/screens/home/views/home_screen.dart';

class MyAppView extends StatelessWidget {
  const MyAppView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pizza Delivery App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          colorScheme: ColorScheme.light(
        surface: Colors.grey.shade100,
        onSurface: Colors.black,
        primary: Colors.blue.shade200,
        onPrimary: Colors.white,
      )),
      home: BlocBuilder<AuthenticationBloc, AuthenticationState>(
        builder: ((context, state) {
          if (state.status == AuthenticationStatus.authenticated) {
            return const HomeScreen();
          } else {
            return const WelcomeScreen();
          }
        }),
      ),
    );
  }
}
