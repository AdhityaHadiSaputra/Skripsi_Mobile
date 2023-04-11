import '../../../models/models.dart';

abstract class FirebaseMessagingService {
  Future<void> registerNotification();
  Future<String?> getToken();
  Future<void> pushNotification(ReceivedNotification receivedNotification);
}
