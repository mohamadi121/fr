import 'package:flutter/material.dart';
import '../constants/constants.dart';

class CMBox extends StatelessWidget {
  const CMBox({
    super.key,
    required this.senderName,
    required this.messageText,
    required this.senderImageUrl,
  });

  final String senderName;
  final String messageText;
  final String senderImageUrl;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 20,
            backgroundImage: NetworkImage(senderImageUrl),
          ),
          const SizedBox(width: 8),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                senderName,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              ConstrainedBox(
                constraints: BoxConstraints(
                    minWidth: Dimensions.width * .8, minHeight: 100),
                child: Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colora.lightBlue,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Text(
                    messageText,
                    style: ATextStyle.light13,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
