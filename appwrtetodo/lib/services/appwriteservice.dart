import 'package:appwrite/appwrite.dart';
import 'package:appwrite/models.dart';

class Appwriteservice {
  late Client client;
  late Databases databases;
  static const endpoint = "https://cloud.appwrite.io/v1";
  static const projectId = "674596a10013a7ca3e69";
  static const databaseId = "6745977f00097d54b618";
  static const collectionId = "6745978c001210e9a11d";

  Appwriteservice() {
    client = Client();
    client.setEndpoint(endpoint);
    client.setProject(projectId);
    databases = Databases(client);
  }

  Future<Document> addTask(_name,_photo) async {
    try {
      final documentId = ID.unique();
      print("????????????/?????????????????????????????????????????????????");
      print(documentId);
      final result = await databases.createDocument(
          databaseId: databaseId,
          collectionId: collectionId,
          documentId: documentId,
          data: {'name': _name,'photo':_photo ,'isActive': false});
      return result;
    } catch (e) {
      print(e);
      rethrow;
    }
  }
   Future<List<Document>> getTask()async{
    try {
      final result=await databases.listDocuments(databaseId: databaseId, collectionId: collectionId);
      print("!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!");
      print(result);
       print("!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!");
       return result.documents;
    } catch (e) {
      print(e);
      rethrow;
      
    }
  }

   Future<Document> updateListStatus(String documentId, bool active) async {
    try {
      final result = await databases.updateDocument(
          databaseId: databaseId,
          collectionId: collectionId,
          documentId: documentId,
          data: {"isActive": active});
      return result;
    } catch (e) {
      print(e);
      rethrow;
    }
  }
}
