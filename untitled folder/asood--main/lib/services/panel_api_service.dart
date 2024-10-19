import '../shared/constants/links.dart';
import 'api_client.dart';

class PanelApi {
  ApiClient apiClient = ApiClient(appBaseUrl: '${BaseUrls.baseUrl}panel/');

  Future asoudSendMessage(
      //   List<ContactModel> contacts,
      //   String message,
      ) {
    //
    //   List<Map<String, dynamic>> contact;
    //   for (int i = 0; i < contacts.length; i++) {
    //     contact.add(contacts[i].toJson());
    //   }
    throw UnimplementedError();
  }

  // Send Message by User Device
  Future smsSendMessage() {
    throw UnimplementedError();
  }
}
