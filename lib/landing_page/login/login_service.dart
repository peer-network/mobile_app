import 'package:http/http.dart' as http;
import 'dart:convert';

Future<Map<String, dynamic>> login({required String email, required String password}) async {
  const String apiUrl = 'https://getpeer.eu/graphql';
  const String loginMutation = '''
    mutation Login(\$email: String!, \$password: String!) {
      login(email: \$email, password: \$password) {
        status
        errorMessage
        accessToken
        refreshToken
      }
    }
  ''';

  final Map<String, dynamic> variables = {
    'email': email,
    'password': password,
  };

  final Map<String, dynamic> body = {
    'query': loginMutation,
    'variables': variables,
  };

  try {
    final response = await http.post(
      Uri.parse(apiUrl),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(body),
    );

    if (response.statusCode == 200) {
      final Map<String, dynamic> responseData = jsonDecode(response.body);
      if (responseData.containsKey('errors')) {
        return {
          'status': 'error',
          'errorMessage': responseData['errors'][0]['message'],
        };
      } else {
        return responseData['data']['login'];
      }
    } else {
      return {
        'status': 'error',
        'errorMessage': 'Failed to login. Server responded with status code ${response.statusCode}.',
      };
    }
  } catch (error) {
    return {
      'status': 'error',
      'errorMessage': 'An error occurred: $error',
    };
  }
}
