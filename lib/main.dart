import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:prime_generator/core/helpers/helper_asset_name.dart';
import 'package:prime_generator/core/helpers/helper_color_name.dart';
import 'package:prime_generator/core/widgets/main_menu_widget.dart';
import 'package:prime_generator/features/prime_generator/presentation/pages/prime_generator_page.dart';
import 'package:prime_generator/features/profile/presentation/pages/profile_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, child) {
        return MaterialApp(
          title: 'Prime Generator',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
            useMaterial3: true,
          ),
          home: child,
        );
      },
      child: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: HelperColorName.primaryColor,
        title: Text('Prime Generator',
          style: TextStyle(
            fontSize: 20.w,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 32.w,
        ),
        color: HelperColorName.primaryColor,
        child: Stack(
          alignment: Alignment.bottomRight,
          children: [
            mainMenu,
            version,
          ],
        ),
      ),
    );
  }

  Widget get mainMenu {
    return Column(
      children: [
        SizedBox(
          height: 32.w,
        ),
        CircleAvatar(
          radius: 100.w,
          backgroundImage: const AssetImage(HelperAssetName.logo),
        ),
        SizedBox(
          height: 32.w,
        ),
        MainMenuWidget(
          menuIcon: Icons.generating_tokens,
          menuName: 'Generate Prime Numbers',
          onTap: () {
            Navigator.push(context,
              MaterialPageRoute(
                builder: (context) => const PrimeGeneratorPage(),
              ),
            );
          },
        ),
        const Divider(),
        MainMenuWidget(
          menuIcon: Icons.person_outline,
          menuName: 'My Profile',
          onTap: () {
            Navigator.push(context,
              MaterialPageRoute(
                builder: (context) => const ProfilePage(),
              ),
            );
          },
        ),
      ],
    );
  }

  Widget get version {
    return Text('v1.0-Test Dev',
      style: TextStyle(
        fontSize: 14.w,
      ),
    );
  }
}
