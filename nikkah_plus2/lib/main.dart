import 'package:flutter/material.dart';
import 'package:nikkah_plus2/screens/membership_screen.dart';
import 'screens/interests_personality_screen.dart';
import 'screens/splash_screen.dart';
import 'screens/get_started_sign_up_screen.dart';
import 'screens/get_started_screen.dart';
import 'screens/sign_in_screen.dart';
import 'screens/sign_up_screen.dart';
import 'screens/sign_in_screen2.dart';
import 'screens/sign_up_screen2.dart';
import 'screens/sign_up_screen3.dart';
import 'screens/welcome_screen.dart';
import 'screens/account_type_selection_screen.dart';
import 'screens/user_info_form.dart';
import 'screens/user_info_form2.dart';
import 'screens/birthdate_picker_screen.dart';
import 'screens/upload_photos_screen.dart';
import 'screens/religious_background_screen.dart';
import 'screens/education_career_screen.dart';
import 'screens/marriage_family_screen.dart';
import 'screens/voice_video_intro_screen.dart';
import 'screens/video_intro_app.dart';
import 'screens/bio_screen_app.dart';
import 'screens/bio_screen_app2.dart';
import 'screens/interests_personality_page.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const NikkahPlus2App());
}

class NikkahPlus2App extends StatelessWidget {
  const NikkahPlus2App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nikkah Plus2',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Poppins', primarySwatch: Colors.brown),
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(),
        '/get_started_sign_up': (context) => const GetStartedSignUpScreen(),
        '/get_started': (context) => const GetStartedScreen(),
        '/sign_in': (context) => const SignInScreen(),
        '/sign_up': (context) => const SignUpScreen(),
        '/sign_in_screen2': (context) => const SignInScreen2(),
        '/sign_up_screen2': (context) => const SignUpScreen2(),
        '/sign_up_screen3': (context) => const SignUpScreen3(),
        '/welcome_screen': (context) => const WelcomeScreen(),
        '/account_type_selection_screen': (context) =>
            const AccountTypeSelectionScreen(),
        '/user_info_form': (context) => const UserInfoForm(),
        '/user_info_form2': (context) => const UserInfoForm2(),
        '/birthdate_picker': (context) => const BirthdatePickerScreen(),
        '/upload_photo': (context) => const UploadPhotosScreen(),
        '/religious_background_screen': (context) =>
            const ReligiousBackgroundScreen(),
        '/education_career_screen': (context) => const EducationCareerScreen(),
        '/marriage_family_screen': (context) => const MarriageFamilyScreen(),
        '/interests_personality_screen': (context) =>
            const InterestsPersonalityScreen(),
        '/voice_video_intro_screen': (context) => VoiceVideoIntroScreen(),
        '/video_intro_app': (context) => VideoIntroApp(),
        '/bio_screen_app': (context) => BioScreenApp(),
        '/bio_screen_app2': (context) => BioScreenApp2(),
        '/interests_personality_page': (context) => InterestsPersonalityPage(),
        '/home_screen': (context) => HomeScreen(),
        '/membership_screen': (context) => MembershipPlansScreen(),
      },
    );
  }
}
