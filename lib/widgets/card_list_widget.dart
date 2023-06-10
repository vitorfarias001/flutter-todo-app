// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:todo_app/provider/services_provider.dart';

class CardListWidget extends ConsumerWidget {
  const CardListWidget({
    super.key,
    required this.getIndex,
  });

  final int getIndex;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final todoData = ref.watch(fetchProvider);
    return todoData.when(
      data: (todoData) {
        Color categoryColor = Colors.white;
        final getCategory = todoData[getIndex].category;
        switch (getCategory) {
          case 'Learning':
            categoryColor = Colors.green;
            break;
          case 'Work':
            categoryColor = Colors.blue.shade700;
            break;
          case 'Resume':
            categoryColor = Colors.amber.shade700;
            break;
        }

        return Container(
          margin: const EdgeInsets.symmetric(vertical: 4),
          width: double.infinity,
          height: 140,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(children: [
            Container(
              decoration: BoxDecoration(
                color: categoryColor,
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(12),
                    bottomLeft: Radius.circular(12)),
              ),
              width: 20,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ListTile(
                        contentPadding: EdgeInsets.zero,
                        title: Text(todoData[getIndex].titleTask),
                        subtitle: Text((todoData[getIndex].description)),
                        trailing: Transform.scale(
                          scale: 1.5,
                          child: Checkbox(
                              activeColor: Colors.blue.shade800,
                              shape: const CircleBorder(),
                              value: todoData[getIndex].isDone,
                              onChanged: (value) => print(value)),
                        ),
                      ),
                      Transform.translate(
                        offset: const Offset(0, 3),
                        child: Column(
                          children: [
                            Divider(
                              thickness: 1.5,
                              color: Colors.grey.shade200,
                            ),
                            Row(
                              children: [
                                const Text('Today'),
                                const Gap(12),
                                Text(todoData[getIndex].timeTask)
                              ],
                            )
                          ],
                        ),
                      ),
                    ]),
              ),
            ),
          ]),
        );
      },
      error: (error, stackTrace) => Center(
        child: Text(stackTrace.toString()),
      ),
      loading: () => const Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
