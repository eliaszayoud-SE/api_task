
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:get/get.dart';

class NotificationController extends GetxController{

  // Future<void> sendMessage (String title, String bodymessage) async {
  //
  //   try {
  //     var collection = await FirebaseFirestore.instance.collection('users').get();
  //     for (var doc in collection.docs) {
  //       String? token = doc['token'];
  //       var header = {
  //         "Content-Type" : "application/json",
  //         "Authorization": "Bearer ${ConstData.accessToken}"
  //       };
  //       var uri = "https://fcm.googleapis.com/v1/projects/focal-fire/messages:send";
  //       var body = {
  //         "message":{
  //           "token": token,
  //           "notification": {
  //             "title": title,
  //             "body": bodymessage,
  //           },
  //           "android": {
  //             "notification": {
  //               "sound" : "Tri-tone"
  //             }
  //           },
  //           "apns" : {
  //             "payload" : {
  //               "aps" :{
  //                 "sound" : "default"
  //               }
  //             }
  //           }
  //         }
  //       };
  //
  //       var request = http.Request('Post', Uri.parse(uri));
  //       request.headers.addAll(header);
  //       request.body = json.encode(body);
  //       var response = await request.send();
  //       final  resBody = await response.stream.bytesToString();
  //
  //       if (response.statusCode==200){
  //         print('============ hiiii $resBody');
  //       }else{
  //         print('============ faild to send  $resBody');
  //       }
  //
  //     }
  //   }catch(e){
  //     print("===========$e");
  //   }
  //
  // }


  // void showNotification(RemoteMessage message)async {
  //   RemoteNotification? notification = message.notification;
  //   AndroidNotification? androidNotification = message.notification?.android;
  //   if(notification != null && androidNotification != null){
  //     FlutterLocalNotificationsPlugin().show(notification.hashCode,
  //       notification.title,
  //       notification.body,
  //       NotificationDetails(
  //         android: AndroidNotificationDetails(
  //           LocalNotificationService().channel.id,
  //           LocalNotificationService().channel.name,
  //           channelDescription: LocalNotificationService().channel.description,
  //           icon: androidNotification.smallIcon,
  //         ),
  //       ),
  //     );
  //   }
  // }

  receiveMessage() {
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {

      if (message.notification != null) {

        Get.snackbar("${message.notification!.title}",
            "${message.notification!.body}");
      }
    });
  }



  @override
  void onInit() {
    receiveMessage();
    // TODO: implement onInit
    super.onInit();
  }

}