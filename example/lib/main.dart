import "package:flutter/material.dart";
import "package:flutter/services.dart";
import "core/di/di.dart";
import "core/ui/style/colors.dart";
import "core/ui/router/router.gr.dart";

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const App());
}

class App extends StatefulWidget {
  const App({super.key});

  

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  final _appRouter = AppRouter();

  @override
  void initState() {
    initDI();

    super.initState();
  }

  

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: "Weather App",
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(
        appBarTheme: const AppBarTheme(
          systemOverlayStyle: SystemUiOverlayStyle.light, // 2
          centerTitle: true,
          backgroundColor: accentColor,
        ),
        iconTheme: const IconThemeData(
          color: whiteColor,
        ),
        progressIndicatorTheme: const ProgressIndicatorThemeData(color: accentColor),
      ),
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
    );
  }
}
