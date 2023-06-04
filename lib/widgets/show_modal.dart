import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:todo_app/constants/app_style.dart';
import 'package:todo_app/widgets/textfield_widget.dart';

class AddNewTaskModal extends StatelessWidget {
  const AddNewTaskModal({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(30),
      height: MediaQuery.of(context).size.height * 0.80,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const SizedBox(
          width: double.infinity,
          child: Text(
            'New Task Todo',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
        Divider(
          thickness: 1.2,
          color: Colors.grey.shade200,
        ),
        const Gap(12),
        const Text('Title task', style: AppStyle.headingStyle),
        const Gap(6),
        const TextFieldWidget()
      ]),
    );
  }
}
