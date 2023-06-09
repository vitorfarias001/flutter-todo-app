import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:todo_app/provider/services_provider.dart';
import 'package:todo_app/widgets/card_list_widget.dart';
import 'package:todo_app/common/show_modal.dart';

class HomePage extends ConsumerWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final todoData = ref.watch(fetchProvider);
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
        title: ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.amber.shade200,
            radius: 25,
          ),
          title: Text('Hello I\'m',
              style: TextStyle(fontSize: 12, color: Colors.grey.shade400)),
          subtitle: const Text(
            'Vitor De Farias Metzner',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(CupertinoIcons.calendar),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(CupertinoIcons.bell),
              )
            ]),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(children: [
            const Gap(20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Today\'s Task',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    Text(
                      'Wednesday, 11 May',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFD5E8FA),
                      foregroundColor: Colors.blue.shade800,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6))),
                  onPressed: () => showModalBottomSheet(
                      isScrollControlled: true,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16)),
                      context: context,
                      builder: (context) => AddNewTaskModal()),
                  child: const Text(
                    '+ New Task',
                  ),
                ),
              ],
            ),
            const Gap(22),
            ListView.builder(
              itemCount: todoData.value?.length ?? 0,
              shrinkWrap: true,
              itemBuilder: (context, index) => CardListWidget(
                getIndex: index,
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
