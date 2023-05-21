abstract class HomeRemoteDataSource {
  Future<void> pushNotification({
    required bool latestCondition,
    required String title,
  });
}
