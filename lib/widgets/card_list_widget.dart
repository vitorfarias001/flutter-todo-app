// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CardListWidget extends StatelessWidget {
  const CardListWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 120,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(12)),
      child: Row(children: [
        Container(
          decoration: const BoxDecoration(
            color: Colors.green,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12), bottomLeft: Radius.circular(12)),
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
                    title: const Text('Tilt JV Admin Group Reactvando'),
                    subtitle:
                        const Text('Even if he is correct, disagree with him'),
                    trailing: Transform.scale(
                      scale: 1.5,
                      child: Checkbox(
                          activeColor: Colors.blue.shade800,
                          shape: const CircleBorder(),
                          value: true,
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
                          children: const [
                            Text('Today'),
                            Gap(12),
                            Text('09:15pm - 11:45pm')
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
  }
}
