import 'package:appwrite/appwrite.dart';
import 'package:appwrite/models.dart';



class AppwriteService {
  late Client client;
  late Databases databases;
  static const endpoit="https://cloud.appwrite.io/v1";
  static const projectid="674065a5000731fa751c";
  static const databaseId="6740678c00383d6cb974";
  static const collectionId="6740679e002b141af8fa";


  AppwriteService(){
    client=Client();
    client.setEndpoint(endpoit);
    client.setProject(projectid);
    databases=Databases(client);
  }

  Future <Document>addTask(String _task)async{
    try{
        final documentId=ID.unique();

        print("^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^");
        print(_task);
        print(documentId);

        print("^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^");

         
        final result=await databases.createDocument(databaseId: databaseId, collectionId: collectionId, documentId: documentId,
         data: {'task':_task,'isCompleted':false});
         return result;
    }catch(e){
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

  Future<void>delete(String documentId)async{
    try {
      final delete=await databases.deleteDocument(
        databaseId: databaseId,
         collectionId: collectionId, 
         documentId: documentId);
    } catch (e) {
      print(e);
      
    }
  }
}