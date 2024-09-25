class MessageModel {
  MessageModel({
    required this.messageId,
    required this.messageTitle,
    required this.messageDate,
    required this.messageStatus,
    required this.messageBody,
    required this.messagePanel,
  });
  int messageId;
  String messageTitle;
  DateTime messageDate;
  String messageStatus;
  String messageBody;
  String messagePanel;
}
