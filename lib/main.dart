import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';
import 'package:tiktok_scrabble_test/screens/home_screen.dart';
import 'package:tiktok_scrabble_test/screens/login_screen.dart';

import 'bloc/user_data_bloc/user_data_bloc.dart';
import 'constants.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final appDocumentDir = await getApplicationDocumentsDirectory();
  Hive.init(appDocumentDir.path);

  runApp(MultiBlocProvider(providers: [
    BlocProvider<UserDataBloc>(create: (context) => UserDataBloc()),
  ], child: const TikTokScrablle(key: Key("key"))));
}

class TikTokScrablle extends StatefulWidget {
  const TikTokScrablle({required Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _TikTokScrablleState();
}

class _TikTokScrablleState extends State<TikTokScrablle> {
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light,
      child: MaterialApp(
        initialRoute: '/',
        title: 'Forecaster',
        routes: {
          '/': (context) => const SafeArea(child: LoginScreen()),
          'homeScreen': (context) => SafeArea(child: HomeScreen())
        },
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: primeColor,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
      ),
    );
  }
}
