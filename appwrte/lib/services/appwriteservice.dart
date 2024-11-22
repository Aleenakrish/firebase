import 'package:appwrite/appwrite.dart';
import 'package:appwrite/models.dart';



class Appwriteservice {
  late Client client;
  late Databases databases;
  static const endpoit="https://cloud.appwrite.io/v1";
  static const projectid="674065a5000731fa751c";
  static const DatabaseId="6740678c00383d6cb974";
  static const collectionId="6740679e002b141af8fa";


  Appwriteservice(){
    client=Client();
    client.setEndpoint(endpoit);
    client.setProject(projectid);
    databases=Databases(client);
  }

  // Future <Document>addTask()async{}
}