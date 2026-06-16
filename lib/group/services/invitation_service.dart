import 'package:http/http.dart' as http;
import '../../shared/client/api_client.dart';

class InvitationService {
  Future<http.Response> getMemberInvitation() async {
    return await ApiClient.get('groups/api/v1/invitations/member');
  }

  Future<http.Response> sendGroupInvitation(int groupId) async {
    return await ApiClient.post('groups/api/v1/invitations/groups/$groupId');
  }

  Future<http.Response> deleteMemberInvitation() async {
    return await ApiClient.delete('groups/api/v1/invitations/member');
  }
}