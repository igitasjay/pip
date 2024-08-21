import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:pip_view/pip_view.dart';

class PipHomePage extends StatefulWidget {
  const PipHomePage({super.key});

  @override
  State<PipHomePage> createState() => PipHomePageState();
}

class PipHomePageState extends State<PipHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('PIP View'),
      ),
      body: const Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return PIPView(
      floatingHeight: MediaQuery.of(context).size.height / 3,
      floatingWidth: MediaQuery.of(context).size.width / 2,
      builder: (context, isFloating) {
        return Scaffold(
          resizeToAvoidBottomInset: isFloating,
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text("This screen will be floating"),
                IconButton(
                  onPressed: () {
                    PIPView.of(context)!.presentBelow(
                      const BackgroundScreen(),
                    );
                  },
                  icon: const Icon(Icons.flutter_dash_outlined),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class BackgroundScreen extends StatelessWidget {
  const BackgroundScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder(
      child: Center(
        child: Text("Background Content!"),
      ),
    );
  }
}
