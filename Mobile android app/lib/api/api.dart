import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:http/http.dart' as http;

class ApiController extends GetxController {
  var url = 'https://achriq-backend-production.up.railway.app';
  var auth = '/auth';

  Future<bool> signIn() async {
    var response = await http.post(
      Uri.parse(url + auth ),
    );
    print(response.statusCode);
    print(response.body);
    if (response.statusCode == 200) {
      return true;
    } else {
      return false;
    }
  }
}