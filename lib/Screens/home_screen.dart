import 'package:flutter/material.dart';
import 'package:tune_player_app/models/tune_model.dart';
import 'package:tune_player_app/widgets/tune_item.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  final List<TuneModel> tunes = const [
    TuneModel(tuneContainerColor: Colors.red, soundPath: 'note1.wav'),
    TuneModel(tuneContainerColor: Colors.orange, soundPath: 'note2.wav'),
    TuneModel(tuneContainerColor: Colors.yellow, soundPath: 'note3.wav'),
    TuneModel(tuneContainerColor: Colors.green, soundPath: 'note4.wav'),
    TuneModel(
        tuneContainerColor: Color.fromARGB(255, 53, 209, 58),
        soundPath: 'note5.wav'),
    TuneModel(tuneContainerColor: Colors.blue, soundPath: 'note6.wav'),
    TuneModel(tuneContainerColor: Colors.purple, soundPath: 'note7.wav'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xff253238),
        title: const Text(
          'Flutter Tune',
        ),
      ),
      body: Column(
        children: tunes
            .map((containerColor) => TuneItem(tune: containerColor))
            .toList(),
      ),
    );
  }

  // List<TuneItem> getTuneItems() {
  //   List<TuneItem> tuneItems = [];
  //   for (var color in tuneColors) {
  //     tuneItems.add(TuneItem(containerColor: color));
  //   }
  //   return tuneItems;
  // }
}
