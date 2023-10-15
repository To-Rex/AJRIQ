


// class MeUser {
//   bool? status;
//
//   MeUser({this.res, this.status});
//
//   MeUser.fromJson(Map<String, dynamic> json) {
//     res = json['res'] != null ? MeRes.fromJson(json['res']) : null;
//     status = json['status'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     if (res != null) {
//       data['res'] = res!.toJson();
//     }
//     data['status'] = status;
//     return data;
//   }
// }


class ChatModels {
  var name;
  var message;
  var time;
  var isMe;

  ChatModels({this.name, this.message, this.time, this.isMe});

  ChatModels.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    message = json['message'];
    time = json['time'];
    isMe = json['isMe'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['message'] = message;
    data['time'] = time;
    data['isMe'] = isMe;
    return data;
  }

  @override
  String toString() {
    return 'ChatModels{name: $name, message: $message, time: $time, isMe: $isMe}';
  }

}
