import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:chois/models/quiz_brain_model.dart';


class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0,),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                const SizedBox(height: 50.0,),
                Row(
                  children: const [
                   Icon(Icons.close),
                  ],
                ),

                Expanded(
                  flex: 2,
                  child: Consumer<QuizBrainModel>(
                    builder: (context, model, child) {
                      return Text(model.getQuestionText(),
                        style: const TextStyle(fontSize: 30.0),);
                    },
                  ),
                ),

                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20.0, 50.0, 20.0, 20.0),
                    child: Consumer<QuizBrainModel>(
                      builder: (context, model, child) {
                        return TextButton(
                          style: TextButton.styleFrom(
                            backgroundColor: Colors.black,
                            primary: Colors.pink,
                          ),
                          onPressed: (){},
                          child: Text(model.getOption1()),
                        );
                      },
                    ),

                  ),
                ),

                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 50.0),
                    child:  Consumer<QuizBrainModel>(
                      builder: (context, model, child) {
                        return TextButton(
                          style: TextButton.styleFrom(
                            backgroundColor: Colors.black,
                            primary: Colors.pink,),
                          onPressed: (){
                            
                          },
                          child: Text(model.getOption2()),
                        );
                      },
                    ),

                  ),
                ),

                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0.0, 10.0, 10.0, 10.0),
                          child: Consumer<QuizBrainModel>(
                            builder: (context, model, child) {
                              return TextButton(
                                style: TextButton.styleFrom(
                                  fixedSize: const Size.fromHeight(48.0),
                                  backgroundColor: Colors.black,
                                  primary: Colors.pink,),
                                onPressed: (){
                                  model.previousQuestion();
                                },
                                child: const Text("Back"),
                              );
                            },
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(10.0, 10.0, 0.0, 10.0),
                          child: Consumer<QuizBrainModel>(
                            builder: (context, model, child) {
                              return TextButton(
                                style: TextButton.styleFrom(
                                  fixedSize: const Size.fromHeight(48.0),
                                  backgroundColor: Colors.black,
                                  primary: Colors.pink,),
                                onPressed: (){
                                  model.nextQuestion();
                                },
                                child: const Text("Next"),
                              );
                            },
                          ),

                        ),
                      ),
                    ],
                  ),
                ),



              ],
            ),
          ),),


    );
  }
}
