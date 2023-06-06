import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:todo_app/constants/app_style.dart';
import 'package:todo_app/provider/radio_provider.dart';
import 'package:todo_app/widgets/date_time_wdiget.dart';
import 'package:todo_app/widgets/radio_widget.dart';
import 'package:todo_app/widgets/textfield_widget.dart';

class AddNewTaskModal extends ConsumerWidget {
  const AddNewTaskModal({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
        const TextFieldWidget(maxLine: 1, hintText: 'Add task name'),
        const Gap(12),
        const Text(
          'Description',
          style: AppStyle.headingStyle,
        ),
        const Gap(22),
        const TextFieldWidget(maxLine: 3, hintText: 'Add Descriptions'),
        const Gap(22),
        const Text('Category', style: AppStyle.headingStyle),
        Row(
          children: [
            Expanded(
              child: RadioWidget(
                categColor: Colors.green.shade400,
                titleRadio: 'Learn',
                valueInput: 1,
                onChangeValue: () =>
                    ref.read(radioProvider.notifier).update((state) => 1),
              ),
            ),
            Expanded(
              child: RadioWidget(
                categColor: Colors.blue.shade400,
                titleRadio: 'Work',
                valueInput: 2,
                onChangeValue: () =>
                    ref.read(radioProvider.notifier).update((state) => 2),
              ),
            ),
            Expanded(
              child: RadioWidget(
                categColor: Colors.amberAccent.shade400,
                titleRadio: 'Review',
                valueInput: 3,
                onChangeValue: () =>
                    ref.read(radioProvider.notifier).update((state) => 3),
              ),
            )
          ],
        ),
        const Gap(22),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            DateTimeWidget(
              titleText: 'Date',
              valueText: 'dd/mm/yy',
              iconSection: CupertinoIcons.calendar,
            ),
            Gap(22),
            DateTimeWidget(
              titleText: 'Time',
              valueText: 'hh : mn',
              iconSection: CupertinoIcons.clock,
            ),
          ],
        ),
        const Gap(22),
        Row(
          children: [
            Expanded(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.blue.shade800,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                      side: BorderSide(color: Colors.blue.shade800),
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 14)),
                onPressed: () {},
                child: const Text('Cancel'),
              ),
            ),
            const Gap(22),
            Expanded(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue.shade800,
                    foregroundColor: Colors.white,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 14)),
                onPressed: () {},
                child: const Text('Create'),
              ),
            ),
          ],
        )
      ]),
    );
  }
}
