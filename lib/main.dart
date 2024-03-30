import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:provider/provider.dart';
import 'presentation/ui_core/app_routes/app_routes.dart';
import 'presentation/ui_core/setup_providers/setup_providers.dart';

//import 'package:movie_show/presentation/screens/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: myProivders,
      child: Sizer(
        builder: (BuildContext context, Orientation orientation,
                DeviceType deviceType) =>
            GetMaterialApp(
          debugShowCheckedModeBanner: false,
          onGenerateRoute: generateRoute,
          title: 'Movie Show',
          theme: ThemeData.dark()
              .copyWith(scaffoldBackgroundColor: Colors.blueGrey[300]),
          initialRoute: '/',
          // home: const SplashScreen(),
        ),
      ),
    );
  }
}
