import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:provider_example_prj/provider_page/home_provide_page.dart';
import 'package:provider_example_prj/provider_page/login_provider.dart';
import 'package:provider_example_prj/routes/app_routes.dart';


// final GlobalKey<NavigatorState> navigatorKey = new GlobalKey<NavigatorState>();

void main() {


  /*SystemChannels.platform.setMethodCallHandler((call) async {
    if (call.method == 'onBackPressed') {
      // Handle the back gesture here
      return Future.value(true); // Prevent default back behavior
    }
    return Future.value(false); // Allow default back behavior
  });*/


  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // return ChangeNotifierProvider(
    //   create: (context) => Homeproviderpage(),
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => Homeproviderpage()),
        ChangeNotifierProvider(create: (context) => LoginProvider()),
      ],
      child: MaterialApp(
        title: 'Provider Demo',
        theme: ThemeData(
          // This is the theme of your application.
          //
          // TRY THIS: Try running your application with "flutter run". You'll see
          // the application has a purple toolbar. Then, without quitting the app,
          // try changing the seedColor in the colorScheme below to Colors.green
          // and then invoke "hot reload" (save your changes or press the "hot
          // reload" button in a Flutter-supported IDE, or press "r" if you used
          // the command line to start the app).
          //
          // Notice that the counter didn't reset back to zero; the application
          // state is not lost during the reload. To reset the state, use hot
          // restart instead.
          //
          // This works for code too, not just values: Most code changes can be
          // tested with just a hot reload.
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        // initialRoute: '/',
        // routes: {
        //   '/': (context) => LoginScreen(),
        //   '/home': (context) => HomeScreen(),
        // },
        initialRoute: Routes.home,
        routes: Routes.getRoutes(),

        // home: MyHomePage(title: 'Flutter Demo Home Page'),
        // home: HomeScreen(),
      ),
    );
  }
}
