import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../companents/getController.dart';
import '../models/chat_models.dart';

class ChatPage extends StatelessWidget {
  ChatPage({super.key});

  final GetController getController = Get.put(GetController());
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    if (getController.chatList.isEmpty){
      getController.addMessage(ChatModels(message: "Assalomu alaykum sizga qanday yordam bera olaman?", isMe: false));
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Robot bilan suhbatlashing', style: TextStyle(color: Colors.black, fontSize: w * 0.05),),
      ),
      body: Column(
        children: [
          // getcontroller.chatList in ChatModels in isMe == true ? meMessage else RobotMessage
          Expanded(
            child: Obx(
              () => getController.chatList.isNotEmpty
              //if getController.chatList.index.isMe == true ? me message else robot message
                  ? Obx(() => ListView.builder(
                        itemCount: getController.chatList.length,
                        itemBuilder: (context, index) {
                          return getController.chatList[index].isMe
                              ? Container(
                                  margin: const EdgeInsets.only(top: 10),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Container(
                                        padding: const EdgeInsets.all(10),
                                        decoration: BoxDecoration(
                                          color: Colors.black12.withOpacity(0.1),
                                          borderRadius: BorderRadius.circular(10),
                                        ),
                                        child: Text(
                                          getController.chatList[index].message,
                                          style: TextStyle(
                                            fontSize: w * 0.03,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      const CircleAvatar(
                                        radius: 15,
                                        backgroundImage: AssetImage('assets/images/img.png'),
                                      ),
                                    ],
                                  ),
                                )
                              : Container(
                                  margin: const EdgeInsets.only(top: 10),
                                  child: Row(
                                    children: [
                                      const CircleAvatar(
                                        radius: 15,
                                        backgroundImage: AssetImage('assets/images/img.png'),
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Container(
                                        padding: const EdgeInsets.all(10),
                                        decoration: BoxDecoration(
                                          color: Colors.black12.withOpacity(0.1),
                                          borderRadius: BorderRadius.circular(10),
                                        ),
                                        child: Text(
                                          getController.chatList[index].message,
                                          style: TextStyle(
                                            fontSize: w * 0.03,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                        },
                      ))
                  : Center(
                      child: Text('Xabarlar yoq'),
                    ),
            ),
          ),
          Container(
            height: h * 0.07,
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.black12.withOpacity(0.1),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: [
                SizedBox(
                  width: w * 0.05,
                ),
                Expanded(
                  child: TextField(
                    controller: _controller,
                    decoration: const InputDecoration(
                      hintText: 'Xabar yozing...',
                      border: InputBorder.none,
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () {
                    //getController.chatList.add(ChatModels(message: _controller.text, isMe: true));
                    getController.addMessage(ChatModels(message: _controller.text, isMe: true));
                    if (getController.chatList.isNotEmpty&& getController.chatList.length == 1){
                      getController.addMessage(ChatModels(message: "Assalomu alaykum sizga qanday yordam bera olaman?", isMe: false));
                    }else{
                      getController.addMessage(ChatModels(message: "Uzur So`raymiz ma`lumotlar yetarli emas", isMe: false));
                    }
                    //getController.addMessage(ChatModels(message: _controller.text, isMe: false));

                    _controller.clear();
                  },
                  icon: const Icon(Icons.send),
                ),
              ],
            ),
          ),
      ],
      ),

    );
  }
}