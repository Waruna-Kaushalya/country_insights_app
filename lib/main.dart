import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'country_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  await Hive.openBox<Map<String, dynamic>>('graphqlCache');

  runApp(const CountryApp());
}
