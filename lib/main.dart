
import 'package:flutter/material.dart';
import 'package:we_rate_dogs/dog_list.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'dog_list.dart';
import 'dog_model.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
     @override
     Widget build(BuildContext context){

       return MaterialApp(
         title: 'Dogz',
         theme: ThemeData(brightness: Brightness.dark),
         home: MyHomePage(title:'Dogz'),
       );
     }
   }

   class MyHomePage extends StatefulWidget {
     MyHomePage ({Key key, this.title}) : super(key: key);

     final String title;

     @override
     _MyHomePageState createState () => _MyHomePageState();
   }

   class _MyHomePageState  extends State<MyHomePage>{
  List<Dog> initialDoggos = []
   ..add(Dog('Ruby', 'Portland, OR, USA',
        'Ruby is a very good girl. Yes: Fetch, loungin\'. No: Dogs who get on furniture.'))
    ..add(Dog('Rex', 'Seattle, WA, USA', 'Best in Show 1999'))
    ..add(Dog('Rod Stewart', 'Prague, CZ',
        'Star good boy on international snooze team.'))
    ..add(Dog('Herbert', 'Dallas, TX, USA', 'A Very Good Boy'))
    ..add(Dog('Buddy', 'North Pole, Earth', 'Self proclaimed human lover.'));

    
  @override
  Widget build(BuildContext context) {
        return Scaffold(
          appBar: GradientAppBar( 
            title: Text(widget.title),
        backgroundColorStart: Colors.black87,
        backgroundColorEnd:Colors.black26,
      ),
      body: Container(
        child: DogCard(initialDoggos[1]),
      ),
    );
  }
}   


