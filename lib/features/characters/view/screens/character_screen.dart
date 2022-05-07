import 'package:flutter/material.dart';
import 'package:ricky/core/styles/app_styles.dart';


class CharactersScreen extends StatelessWidget {
  const CharactersScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: const [
              Placeholder(fallbackHeight:200 ,),
              Text('Characters'),
              Placeholder(fallbackHeight:500 ,),
              Placeholder(fallbackHeight:100 ,)


            ],
          ),
        ),
      ),
    );
  }
}
