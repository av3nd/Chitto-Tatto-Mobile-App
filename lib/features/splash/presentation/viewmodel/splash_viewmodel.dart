// import 'package:dartz/dartz.dart';
// import 'package:student_clean_arch/core/failure/failure.dart';

// class SplashScreenViewModel{
//   Future<void> handleUserToken() async {
//   Either<Failure, String?> tokenEither = await getUserToken();

//   tokenEither.fold(
//     (failure) {
//       // If there was a failure, open the login screen
//       print('Open login screen');
//     },
//     (token) {
//       // If token is null or empty, open the login screen
//       if (token == null || token.isEmpty) {
//         print('Open login screen');
//       } else {
//         // Token is present, open the dashboard screen
//         print('Open dashboard screen');
//       }
//     },
//   );
// }
// }