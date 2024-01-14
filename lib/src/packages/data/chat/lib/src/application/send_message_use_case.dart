import 'package:chateo/src/packages/data/chat/lib/src/domain/message/message_repository.dart';

class SendMessageUseCase {
  final MessageRepository _messageRepository;

  const SendMessageUseCase(this._messageRepository);

  Future<void> call(
    String chatUid,
    String msg,
    String uid,
  ) =>
      _messageRepository.sendMessage(
        chatUid,
        msg,
        uid,
      );
}
