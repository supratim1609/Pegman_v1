import 'package:get/get.dart';
import 'package:pegman/features/auth/presentation/views/age_check.dart';
import 'package:pegman/features/auth/presentation/views/change_password.dart';
import 'package:pegman/features/auth/presentation/views/create_account.dart';
import 'package:pegman/features/auth/presentation/views/forget_password.dart';
import 'package:pegman/features/auth/presentation/views/login.dart';
import 'package:pegman/features/auth/presentation/views/password_resetted.dart';
import 'package:pegman/features/auth/presentation/views/splash.dart';
import 'package:pegman/features/auth/presentation/views/reg_successful.dart';
import 'package:pegman/features/auth/presentation/views/onboarding.dart';
import 'package:pegman/features/auth/presentation/views//otp_screen.dart';
import 'package:pegman/features/auth/presentation/views/register_with_phone.dart';
import 'package:pegman/features/auth/presentation/views/welcome.dart';
import 'package:pegman/features/home/presentation/views/address.dart';
import 'package:pegman/features/home/presentation/views/all_categories.dart';
import 'package:pegman/features/home/presentation/views/all_drinks.dart';
import 'package:pegman/features/home/presentation/views/bottom_nav.dart';
import 'package:pegman/features/home/presentation/views/discover.dart';
import 'package:pegman/features/home/presentation/views/discover_detail.dart';
import 'package:pegman/features/home/presentation/views/fl_shops.dart';
import 'package:pegman/features/home/presentation/views/home.dart';
import 'package:pegman/features/home/presentation/views/cart.dart';
import 'package:pegman/features/home/presentation/views/map1.dart';
import 'package:pegman/features/home/presentation/views/map2.dart';
import 'package:pegman/features/home/presentation/views/message.dart';
import 'package:pegman/features/home/presentation/views/myinformation.dart';
import 'package:pegman/features/home/presentation/views/myorder.dart';
import 'package:pegman/features/home/presentation/views/payment.dart';
import 'package:pegman/features/home/presentation/views/profile.dart';
import 'package:pegman/features/home/presentation/views/support.dart';

class AppRoutes {
  static String splash = '/';
  static String login = '/login';
  static String welcome = '/welcome';
  static String onboarding = '/onboarding';
  static String createAccount = '/create_account';
  static String registerWithPhone = '/register_with_phone';
  static String otpScreen = '/otp';
  static String ageCheck = '/age_check';
  static String regSuccessful = '/reg_successful';
  static String chooseForgetPassword = '/choose_forget_pass';
  static String changePassword = '/change_password';
  static String passwordResetted = '/password_resetted';
  static String home = '/home';
  static String cart = '/cart';
  static String map1 = '/map1';
  static String payment = '/payment';
  static String map2 = '/map2';
  static String support = '/support';
  static String message = '/message';
  static String profile = '/profile';
  static String myorder = '/my_order';
  static String myinformation = '/profile';
  static String address = '/address';
  static String mainHome = '/main_home';
  static String discover = '/discover';
  static String discoverDetail = '/discover_detail';
  static String flShop = '/fl_shops';
  static String allCategories = '/all_categories';
  static String allDrinks = '/all_drinks';
}

final appRouter = [
  GetPage(
    name: AppRoutes.splash,
    page: () => const SplashScreen(),
  ),
  GetPage(
    name: AppRoutes.welcome,
    page: () => const WelcomeScreen(),
  ),
  GetPage(
    name: AppRoutes.onboarding,
    page: () => const OnboardingScreen(),
  ),
  GetPage(
    name: AppRoutes.registerWithPhone,
    page: () => const RegisterWithPhone(),
  ),
  GetPage(
    name: AppRoutes.otpScreen,
    page: () => const OtpScreen(),
  ),
  GetPage(
    name: AppRoutes.ageCheck,
    page: () => const AgeCheckScreen(),
  ),
  GetPage(
    name: AppRoutes.regSuccessful,
    page: () => const RegistrationSuccessful(),
  ),
  GetPage(
    name: AppRoutes.chooseForgetPassword,
    page: () => const ChooseForgetPassword(),
  ),
  GetPage(
    name: AppRoutes.changePassword,
    page: () => const ChangePasswordScreen(),
  ),
  GetPage(
    name: AppRoutes.passwordResetted,
    page: () => const PasswordResettedSuccessful(),
  ),
  GetPage(
    name: AppRoutes.home,
    page: () => const HomeScreen(),
  ),
  GetPage(
    name: AppRoutes.cart,
    page: () => const CartScreen(),
  ),
  GetPage(
    name: AppRoutes.map1,
    page: () => const Map1Screen(),
  ),
  GetPage(
    name: AppRoutes.payment,
    page: () => const Payment(),
  ),
  GetPage(
    name: AppRoutes.map2,
    page: () => const MapScreen2(),
  ),
  GetPage(
    name: AppRoutes.support,
    page: () => const Support(),
  ),
  GetPage(
    name: AppRoutes.message,
    page: () => const Message(),
  ),
  GetPage(
    name: AppRoutes.profile,
    page: () => const ProfileScreen(),
  ),
  GetPage(
    name: AppRoutes.myorder,
    page: () => const MyOrder(),
  ),
  GetPage(
    name: AppRoutes.myinformation,
    page: () => const MyInfo(),
  ),
  GetPage(
    name: AppRoutes.address,
    page: () => const AddressScreen(),
  ),
  GetPage(
    name: AppRoutes.mainHome,
    page: () => MainHomeNav(),
  ),
  GetPage(
    name: AppRoutes.discover,
    page: () => const DiscoverScreen(),
  ),
  GetPage(
    name: AppRoutes.discoverDetail,
    page: () => const DiscoverDetail(),
  ),
  GetPage(
    name: AppRoutes.flShop,
    page: () => const FlShopScreen(),
  ),
  GetPage(
    name: AppRoutes.allCategories,
    page: () => const CategoriesScreen(),
  ),
  GetPage(
    name: AppRoutes.allDrinks,
    page: () => const AllDrinkScreen(),
  ),
  GetPage(
    name: AppRoutes.createAccount,
    page: () => const CreateAccountScreen(),
  ),
  GetPage(
    name: AppRoutes.login,
    page: () => const LoginScreen(),
  ),
];
