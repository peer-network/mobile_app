import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class VerifyScreen extends StatefulWidget {
  @override
  _VerifyScreenState createState() => _VerifyScreenState();
}

class _VerifyScreenState extends State<VerifyScreen> {
  final TextEditingController _userIdController = TextEditingController();
  final storage = FlutterSecureStorage();

  // GraphQL Mutation for verifying account
  final String verifyMutation = """
    mutation VerifiedAccount(\$userid: String!) {
      verifiedAccount(userid: \$userid) {
        status
        errorMessage
        accessToken
        refreshToken
      }
    }
  """;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Verify Account'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            TextField(
              controller: _userIdController,
              decoration: InputDecoration(
                labelText: 'Enter your User ID',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            Mutation(
              options: MutationOptions(
                document: gql(verifyMutation),
                onCompleted: (dynamic resultData) async {
                  // Handle the result and show feedback to user
                  if (resultData != null) {
                    var status = resultData['verifiedAccount']['status'];
                    var errorMessage = resultData['verifiedAccount']['errorMessage'];
                    var accessToken = resultData['verifiedAccount']['accessToken'];
                    var refreshToken = resultData['verifiedAccount']['refreshToken'];

                    if (status == "success") {
                      await storage.write(key: 'accessToken', value: accessToken);
                      await storage.write(key: 'refreshToken', value: refreshToken);
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('Verification Successful!'),
                          backgroundColor: Colors.green,
                        ),
                      );
                      // You can now navigate to another screen or take further actions
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('Error: $errorMessage'),
                          backgroundColor: Colors.red,
                        ),
                      );
                    }
                  }
                },
              ),
              builder: (RunMutation runMutation, QueryResult? result) {
                // Loading state
                if (result != null && result.isLoading) {
                  return CircularProgressIndicator();
                }

                // Error state
                if (result != null && result.hasException) {
                  return Text(
                    'Error verifying the account: ${result.exception.toString()}',
                    style: TextStyle(color: Colors.red),
                  );
                }

                return ElevatedButton(
                  onPressed: () {
                    String userId = _userIdController.text;
                    if (userId.isEmpty) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('Please enter a valid User ID'),
                          backgroundColor: Colors.red,
                        ),
                      );
                      return;
                    }
                    runMutation({
                      'userid': userId,
                    });
                  },
                  child: Text('Verify'),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
