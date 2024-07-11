import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:rankingpage/rankingpage.dart';
import 'package:provider/provider.dart';
import 'package:rankingpage/statemanegemnt/fillcount.dart';


void main(){
runApp(
  
  
  ChangeNotifierProvider(
          create: (_) => fillcount(),

    
    child: myapp()));

}
class myapp extends StatelessWidget {
  const myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
     title: "RankingPage",
     home: RankingPage(),
    );
  }
}
