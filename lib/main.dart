
import 'package:fashion_app1/common/utils/app_routes.dart';
import 'package:fashion_app1/common/utils/environment.dart';
import 'package:fashion_app1/common/utils/kstrings.dart';
import 'package:fashion_app1/src/auth/controller/password_notifer.dart';
import 'package:fashion_app1/src/categories/controller/category_notifier.dart';
import 'package:fashion_app1/src/entrypoint/controllers/bottom_tab_notifer.dart';
import 'package:fashion_app1/src/home/controllers/home_tab_notifier.dart';
import 'package:fashion_app1/src/onboarding/controllers/onboarding_notifier.dart';
import 'package:fashion_app1/src/products/controllers/color_size_notifier.dart';
import 'package:fashion_app1/src/products/controllers/product_notifier.dart';
import 'package:fashion_app1/src/splshscreen/viwes/splshscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_storage/get_storage.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //load the correct environment

  await dotenv.load(fileName: Environment.fileName);

  await GetStorage.init();
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => OnboardingNotifier()),
      ChangeNotifierProvider(create: (_) => TabIndexNotifer()),
      ChangeNotifierProvider(create: (_) => CategoryNotifier()),
      ChangeNotifierProvider(create: (_) => HomeTabNotifier()),
      ChangeNotifierProvider(create: (_) =>  ProductNotifier()),
      ChangeNotifierProvider(create: (_) => ColorSizeNotifier()),
      ChangeNotifierProvider(create: (_) => PasswordNotifier()),
      
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return ScreenUtilInit(
        designSize: screenSize,
        minTextAdapt: true,
        splitScreenMode: false,
        useInheritedMediaQuery: true,
        builder: (_, child) {
          return MaterialApp.router(
            debugShowCheckedModeBanner: false,
            title: AppText.kAppName,
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
              useMaterial3: true,
            ),
            routerConfig: router,
          );
        },
        child: const SplashScreen());
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(Environment.appBaseUrl),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
