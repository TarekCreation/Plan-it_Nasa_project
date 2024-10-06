import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:get/get.dart';
import 'package:planit/question.dart';

class Connect extends StatefulWidget {
  final int? questionID;

  const Connect({
    super.key,
    @required this.questionID,
  });

  @override
  State<Connect> createState() => _ConnectState();
}

class _ConnectState extends State<Connect> {
  @override
  void initState() {
    super.initState();

    // Delay navigation until after the first frame is rendered
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Get.off(() => Question(
            questionID: widget.questionID,
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
