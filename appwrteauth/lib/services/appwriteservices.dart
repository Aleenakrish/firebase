import 'package:appwrite/appwrite.dart';
import 'package:appwrite/models.dart';

class Appwriteservices {
  late Client client;
  late Account account;

  static const endpoint = "https://cloud.appwrite.io/v1";
  static const projectid = "6746f97a000e40b8e053";

  Appwriteservices() {
    client = Client();

    client.setEndpoint(endpoint).setProject(projectid);
    account = Account(client);
  }

  Future<void> registerUser(String email, String password, String name) async {
    try {
      final Response = await account.create(
          userId: ID.unique(), email: email, password: password, name: name);
      print('user registered:${Response.$id}');
    } catch (e) {
      print('Error:$e');
    }
  }

  Future<void> loginUser(String email, String password) async {
    try {
      final Session = await account.createEmailPasswordSession(
          email: email, password: password);
      print('User logged in:${Session.userId}');
    } on AppwriteException catch (e) {
      if (e.code == 401) {
        print('Error:incorrect email or password');
      } else {
        print('Error:${e.message}');
        throw Exception(e.message);
      }
      print('Unexpected error:$e');
      throw Exception('An unexpected error occured');
    }
  }

  Future<void> logoutUser() async {
    try {
      await account.deleteSession(sessionId: 'current');
      print('User logged out');
    } catch (e) {
      print('Error:${e}');
    }
  }
}
