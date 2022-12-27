import 'package:change_notifier_provider_training_app/model/model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("change notifier provider"),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Consumer<Person>(
                builder: (_, person, __) {
                  var personName = person.name.toString();
                  return Text(
                    personName,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  );
                },
              ),
              const SizedBox(
                height: 20,
              ),
              Consumer<Person>(
                builder: (_, person, __) {
                  var personAge = person.age.toString();
                  return Text(
                    personAge,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  );
                },
              ),
              const SizedBox(
                height: 30,
              ),
              ElevatedButton(
                onPressed: () {
                  context.read<Person>().incrementAge();
                },
                child: Text('Tambah'),
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  context.read<Person>().decrementAge();
                },
                child: Text('kurang'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
