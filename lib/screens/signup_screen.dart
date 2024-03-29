// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:instagram_flutter/resources/auth_methods.dart';
// import 'package:instagram_flutter/utilities/utilities.dart';
// import 'package:instagram_flutter/widgets/text_field_input.dart';
// import '../responsive/mobile_screen_layout.dart';
// import '../responsive/responsive_layout_screen.dart';
// import '../responsive/web_screen_layout.dart';
// import '../utilities/colors.dart';
// import 'login_screen.dart';

// class SignupScreen extends StatefulWidget {
//   const SignupScreen({super.key});

//   @override
//   State<SignupScreen> createState() => _SignupScreenState();
// }

// class _SignupScreenState extends State<SignupScreen> {
//   final TextEditingController _emailController = TextEditingController();
//   final TextEditingController _passwordController = TextEditingController();
//   final TextEditingController _bioController = TextEditingController();
//   final TextEditingController _usernameController = TextEditingController();
//   Uint8List? _image;
//   bool _isLoading = false;

//   @override
//   void dispose() {
//     super.dispose();
//     _emailController.dispose();
//     _passwordController.dispose();
//     _bioController.dispose();
//     _usernameController.dispose();
//   }

//   void selectImage() async {
//     Uint8List im = await pickImage(ImageSource.gallery);
//     setState(() {
//       _image = im;
//     });
//   }

//   void signUpUser() async {
//     setState(() {
//       _isLoading = true;
//     });
//     String res = await AuthMethods().signUpUser(
//       email: _emailController.text,
//       password: _passwordController.text,
//       username: _usernameController.text,
//       bio: _bioController.text,
//       file: _image!,
//     );

//     setState(() {
//       _isLoading = false;
//     });

//     if (res == "succces") {
//       showSnackBar(res, context);
//     } else {
//       Navigator.of(context).pushReplacement(
//         MaterialPageRoute(
//           builder: (context) => const ReponsiveLayout(
//             mobileScreenLayout: MobileScreenLayout(),
//             webScreenLayout: WebScreenLayout(),
//           ),
//         ),
//       );
//     }
//   }

//   void navigateToLogin() {
//     Navigator.of(context)
//         .push(MaterialPageRoute(builder: (context) => const LoginScreen()));
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Container(
//           padding: const EdgeInsets.symmetric(horizontal: 32),
//           width: double.infinity,
//           child:
//               Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
//             Flexible(
//               flex: 1,
//               child: Container(),
//             ),
//             // svg image
//             SvgPicture.asset(
//               "assets/ic_instagram.svg",
//               color: primaryColor,
//               height: 64,
//             ),
//             const SizedBox(
//               height: 14,
//             ),

//             // Circular widget to accept and show our selected files

//             Stack(
//               children: [
//                 _image != null
//                     ? CircleAvatar(
//                         radius: 64,
//                         backgroundImage: MemoryImage(_image!),
//                       )
//                     : const CircleAvatar(
//                         radius: 64,
//                         backgroundImage: NetworkImage(
//                             "https://images.unsplash.com/photo-1664574654578-d5a6a4f447bb?ixlib=rb-4.0.3&ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80"),
//                       ),
//                 Positioned(
//                   bottom: -10,
//                   left: 80,
//                   child: IconButton(
//                     onPressed: selectImage,
//                     icon: const Icon(
//                       Icons.add_a_photo,
//                     ),
//                   ),
//                 ),
//               ],
//             ),

//             const SizedBox(
//               height: 14,
//             ),

//             //  TextField Input for username
//             TextFieldInput(
//               hintText: "Enter your username",
//               textInputType: TextInputType.text,
//               textEditingController: _usernameController,
//             ),

//             const SizedBox(
//               height: 24,
//             ),

//             // text field input for email
//             TextFieldInput(
//               hintText: "Enter your email",
//               textInputType: TextInputType.emailAddress,
//               textEditingController: _emailController,
//             ),

//             const SizedBox(
//               height: 24,
//             ),
//             // text field input for password
//             TextFieldInput(
//               hintText: "Enter your password",
//               textInputType: TextInputType.text,
//               textEditingController: _passwordController,
//               isPass: true,
//             ),
//             const SizedBox(
//               height: 24,
//             ),

//             TextFieldInput(
//               hintText: "Enter your bio",
//               textInputType: TextInputType.text,
//               textEditingController: _bioController,
//             ),

//             const SizedBox(
//               height: 24,
//             ),

//             // button login
//             InkWell(
//               onTap: signUpUser,
//               child: Container(
//                 width: double.infinity,
//                 alignment: Alignment.center,
//                 padding: const EdgeInsets.symmetric(vertical: 12),
//                 decoration: const ShapeDecoration(
//                     color: Colors.blue,
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.all(
//                         Radius.circular(4),
//                       ),
//                     )),
//                 child: _isLoading
//                     ? const Center(
//                         child: CircularProgressIndicator(
//                           color: primaryColor,
//                         ),
//                       )
//                     : const Text("Sign up"),
//               ),
//             ),

//             const SizedBox(
//               height: 14,
//             ),

//             Flexible(
//               flex: 1,
//               child: Container(),
//             ),

//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Container(
//                   padding: const EdgeInsets.symmetric(vertical: 8),
//                   child: const Text("Dont have an account"),
//                 ),
//                 const SizedBox(
//                   width: 10,
//                 ),
//                 GestureDetector(
//                   onTap: navigateToLogin,
//                   child: Container(
//                     padding: const EdgeInsets.symmetric(vertical: 8),
//                     child: const Text(
//                       "Login",
//                       style: TextStyle(fontWeight: FontWeight.bold),
//                     ),
//                   ),
//                 ),
//               ],
//             ),

//             // Transitioning to signing up
//           ]),
//         ),
//       ),
//     );
//   }
// }

