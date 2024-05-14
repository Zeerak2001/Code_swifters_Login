// ignore_for_file: prefer_const_constructors

import 'package:bloc/bloc.dart';
import 'package:codeswifters/app.dart';
import 'package:codeswifters/simple_bloc_observer.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:user_repository/user_repository.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: FirebaseOptions(apiKey: "AIzaSyBaswcNlfAMACG9khzzHNPPHlu9zHzqju4", messagingSenderId: "551083262951", appId: "1:551083262951:android:3280e6b8c2a97be13f3342", projectId: "codeswifters-f1bf6"));
  Bloc.observer = SimpleBlocObserver();
  runApp(MyApp(FirebaseUserRepo()));
}
