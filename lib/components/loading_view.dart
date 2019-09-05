import 'package:flutter/material.dart';
import 'package:flutter_easy/components/base.dart';

class LoadingView extends StatelessWidget {
  final String message;

  const LoadingView({Key key, this.message}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.all((message == null) ? 30 : 15),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: _buildChildren(),
      ),
    );
  }

  List<Widget> _buildChildren() {
    List<Widget> list = [CircularProgressIndicator()];
    if (message != null && message.isNotEmpty) {
      list.add(Padding(
        padding: const EdgeInsets.only(top: 8),
        child: BaseText(
          message,
          maxLines: 2,
          style: TextStyle(
            color: Colors.white,
            fontSize: 10,
          ),
        ),
      ));
    }
    return list;
  }
}
