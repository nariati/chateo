import 'package:chateo/src/packages/data/chat/chat.dart';

class UpdateUserStatusUseCase {
  final ChatUserRepository _chatUserRepository;

  const UpdateUserStatusUseCase(this._chatUserRepository);

  Future<void> call(
    String uid,
    String name,
    bool status,
  ) =>
      _chatUserRepository.updateById(
        uid,
        name,
        status,
      );
}
