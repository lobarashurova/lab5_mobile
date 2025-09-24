import 'package:flutter/material.dart';
import 'package:safia_mobile/common/extensions/sizedbox_extensions.dart';
import 'package:safia_mobile/common/extensions/text_extensions.dart';

class LabWidget extends StatefulWidget {
  const LabWidget({super.key});

  @override
  State<LabWidget> createState() => _LabWidgetState();
}

class _LabWidgetState extends State<LabWidget> {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        "Task1".s(14).w(400),
        12.kh,
        Container(
          margin: EdgeInsets.all(20),
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
              color: Colors.redAccent,
              borderRadius: BorderRadius.circular(14),
              border: Border.all(color: Colors.white, width: 2)),
          height: 100,
          width: 100,
          child: Icon(Icons.add),
        ),
        12.kh,
        "Task2".s(14).w(400),
        12.kh,
        _task2Widget(_controller),
        12.kh,
        "Task3".s(14).w(400),
        12.kh,
        _task3Widget(),
        _task3_2Widget(),
        _task3_3Widget(),
      ],
    );
  }
}

Widget _task2Widget(TextEditingController controller) {
  return TextField(
    decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: "Enter your password",
        suffixIcon: Icon(Icons.remove_red_eye)),
  );
}

Widget _task3Widget() {
  return Row(
    children: [
      Expanded(
        flex: 1,
        child: Container(
          width: 100,
          height: 100,
          color: Colors.red,
        ),
      ),
      Expanded(
          flex: 2,
          child: Container(
            height: 100,
            color: Colors.green,
          ))
    ],
  );
}

Widget _task3_2Widget() {
  return Column(
    children: [
      Expanded(
        flex: 1,
        child: Container(
          width: 100,
          height: 100,
          color: Colors.red,
        ),
      ),
      Expanded(
          flex: 2,
          child: Container(
            height: 100,
            color: Colors.green,
          ))
    ],
  );
}

Widget _task3_3Widget() {
  return Row(
    children: [
      Container(
        width: 100,
        height: 100,
        color: Colors.red,
      ),
      Spacer(),
      Container(
        height: 100,
        width: 100,
        color: Colors.green,
      )
    ],
  );
}

