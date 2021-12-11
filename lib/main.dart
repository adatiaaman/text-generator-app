import 'package:app_1/bloc/message_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/message_bloc.dart';

void main() {
  runApp(const HelloApp());
}

class HelloApp extends StatelessWidget {
  const HelloApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Message App',
        theme: ThemeData(primarySwatch: Colors.orange),
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Messaging App'),
          ),
          body: Home(),
        ));
  }
}

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);
  final bloc = MessageBloc();
  @override
  Widget build(BuildContext context) {
    // List<String> messages = <String>[];

    return BlocBuilder<MessageBloc, MessageState>(
      bloc: bloc,
      builder: (context, state) {
        return Center(
          child: Column(
            children: [
              ElevatedButton(
                  onPressed: () => bloc.add(const AddMessage()),
                  child: const Text("Click")),
              Column(
                children: (state.messages.map((item) => Text(item)).toList()),
              ),
            ],
          ),
        );
      },
    );
  }
}
