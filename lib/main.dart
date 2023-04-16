// import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
// import 'package:instagram_flutter/providers/user_provider.dart';
// import 'package:instagram_flutter/responsive/responsive_layout_screen.dart';
// import 'package:instagram_flutter/screens/login_screen.dart';
// import 'package:instagram_flutter/responsive/mobile_screen_layout.dart';
// import 'package:instagram_flutter/responsive/web_screen_layout.dart';
import 'package:instagram_flutter/utilities/colors.dart';
// import 'package:provider/provider.dart';

// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();

//   if (kIsWeb) {
//     await Firebase.initializeApp(
//       options: const FirebaseOptions(
//         apiKey: "AIzaSyAoDdqjx-Qk92ZmcxM9DHPC_B4zYVNNAC8",
//         appId: "1:911451852072:web:614af4a0bf317f6738541d",
//         messagingSenderId: "911451852072",
//         projectId: "instagram-clone-706e4",
//         storageBucket: "instagram-clone-706e4.appspot.com",
//       ),
//     );
//   } else {
//     await Firebase.initializeApp();
//   }

//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MultiProvider(
//       providers: [
//         ChangeNotifierProvider(
//           create: (_) => UserProvider(),
//         ),
//       ],
//       child: MaterialApp(
//         debugShowCheckedModeBanner: false,
//         title: 'Instagram Clone',
//         theme: ThemeData.dark().copyWith(
//           scaffoldBackgroundColor: mobileBackgroundColor,
//         ),
//         home: StreamBuilder(
//           stream: FirebaseAuth.instance.authStateChanges(),
//           builder: (context, snapshot) {
//             if (snapshot.connectionState == ConnectionState.active) {
//               if (snapshot.hasData) {
//                 return const ReponsiveLayout(
//                   mobileScreenLayout: MobileScreenLayout(),
//                   webScreenLayout: WebScreenLayout(),
//                 );
//               } else if (snapshot.hasError) {
//                 return Center(
//                   child: Text("${snapshot.error}"),
//                 );
//               }
//             }
//             if (snapshot.connectionState == ConnectionState.waiting) {
//               return const Center(
//                 child: CircularProgressIndicator(
//                   color: primaryColor,
//                 ),
//               );
//             }

//             return const LoginScreen();
//           },
//         ),
//       ),
//     );
//   }
// }

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  if (kIsWeb) {
    await Firebase.initializeApp(
      options: const FirebaseOptions(
        apiKey: "AIzaSyAoDdqjx-Qk92ZmcxM9DHPC_B4zYVNNAC8",
        appId: "1:911451852072:web:614af4a0bf317f6738541d",
        messagingSenderId: "911451852072",
        projectId: "instagram-clone-706e4",
        storageBucket: "instagram-clone-706e4.appspot.com",
      ),
    );
  } else {
    await Firebase.initializeApp();
  }

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Center(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark()
            .copyWith(scaffoldBackgroundColor: mobileBackgroundColor),
        home: const Scaffold(
          body: Center(child: Text("how are you")),
        ),
      ),
    );
    // return const Scaffold(
    //   body: Text("how are you"),
    // );
  }
}
