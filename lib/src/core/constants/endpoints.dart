const baseUrl = 'https://parseapi.back4app.com/functions';

abstract class Endpoint {
  static const signIn = '$baseUrl/login';
  static const signUp = '$baseUrl/signup';
  static const otp = '/opt';
}
