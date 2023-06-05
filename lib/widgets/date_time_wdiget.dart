// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:todo_app/constants/app_style.dart';
import 'package:gap/gap.dart';

class DateTimeWidget extends StatelessWidget {
  const DateTimeWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Date',
            style: AppStyle.headingStyle,
          ),
          const Gap(6),
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 12,
              vertical: 12,
            ),
            decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(8)),
            child: Row(children: const [
              Icon(CupertinoIcons.calendar),
              Gap(12),
              Text('dd/mn/yy')
            ]),
          ),
        ],
      ),
    );
  }
}
