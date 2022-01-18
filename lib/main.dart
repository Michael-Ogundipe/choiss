import 'package:chois/models/quiz_brain_model.dart';
import 'package:chois/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:chois/viewmodels/quiz_view_model.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider<QuizViewModel>(
          create: (_) => QuizViewModel()),
      ChangeNotifierProvider<QuizBrainModel>(
          create: (_) => QuizBrainModel()),



    ], child: const MyApp(),

  ));
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomeView(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFE5E5E5),
      ),
    );
  }
}

