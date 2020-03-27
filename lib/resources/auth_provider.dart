import 'package:e_commerce_flutter/models/sign_in_auth.dart';
import 'package:e_commerce_flutter/models/sign_in_request.dart';
import 'package:http/http.dart';

class AuthenticationProvider {
  String URL_AUTH = "";
  String API_KEY = "";
  Client client = new Client();
  Map<String, String> headers = {"Content-type": "application/json"};
  String json = '{"title": "Hello", "body": "body text", "userId": 1}';


  // todo in this line check the cast
  Future<SignInAuth> signIn(String userName, String password) async {
    SignInAuth response = (await client.post(URL_AUTH,
        headers: headers, body: new SignInRequest(userName, password))) as SignInAuth;
  }
}
