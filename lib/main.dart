import 'package:web_view/headers.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations(
    [
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ],
  );

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => ConnectivityController(),
        ),
        ChangeNotifierProvider(
          create: (_) => SearchEngineController(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}
