
import 'package:flutter/material.dart';
import 'package:flutter_assignment2/app.dart';
import 'package:flutter_assignment2/service_locator/service_locator.dart';

void main() async {
  WidgetsFlutterBinding
      .ensureInitialized(); // first app will collect what RAM it required

  await initDependencies();

  runApp(MyApp());
}
