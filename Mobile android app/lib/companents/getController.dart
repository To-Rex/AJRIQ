import 'package:get/get.dart';

import '../models/chat_models.dart';

class GetController extends GetxController {
  var fullName = 'Dilshodjon Haydarov'.obs;
  var enters = 0.obs;
  var index = 0.obs;
  var isLogin = false.obs;
  List<ChatModels> chatList = <ChatModels>[].obs;

  void changeFullName(String name) {
    fullName.value = name;
  }

  void changeIsLogin() {
    isLogin.value = !isLogin.value;
  }

  /*void addMeMessage(String message) {
    chatMessage.value.message = message;
    chatMessage.value.isMe = true;
    chatMessage.value.time = DateTime.now().toString();
    chatMessage.value.name = 'Dilshodjon Haydarov';
  }

  void addRobotMessage(String message) {
    chatMessage.value.message = message;
    chatMessage.value.isMe = false;
    chatMessage.value.time = DateTime.now().toString();
    chatMessage.value.name = 'Dilshodjon Haydarov';
  }*/

  void addMessage(ChatModels chatModels) {
    chatList.add(chatModels);
  }

}