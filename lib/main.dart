import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'constants/shared_preferences.dart';
import 'controllers/navigation_controller.dart';
import 'home_page.dart';
import 'pages/Admin/SideBar/admin_menu_controller.dart';
import 'pages/SuperAdmin/SideBar/super_admin_menu_controller.dart';
import 'widgets/top_app_bar.dart';

void main() {
  Get.put(NavigationController());
  Get.put(SuperAdminMenuController());
  Get.put(AdminMenuController());
  Get.put(TopAppBar());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key = const Key('MyApp')}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    getSharedPref();

    return GetMaterialApp(
        title: 'Pigeon',
        theme: ThemeData(
          // useMaterial3: true,
          scaffoldBackgroundColor: Colors.green,
          // primarySwatch: Colors.blue,
          textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme),
          pageTransitionsTheme: const PageTransitionsTheme(builders: {
            TargetPlatform.iOS: FadeUpwardsPageTransitionsBuilder(),
            TargetPlatform.android: FadeUpwardsPageTransitionsBuilder(),
          }),
        ),
        debugShowCheckedModeBanner: false,
        home: 
        // SuperAdminDashboardLayout(
        //   screen: 'SuperAdminDashboard',
        // )

        // AdminDashboardLayout(screen: 'adminDashboard')
        HomePage()
        );
  }
}

