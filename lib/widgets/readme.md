Container(
        width: double.infinity,
        height: 140,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(12)),
        child: Row(children: [
          Container(
            decoration: const BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.only(
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
      ),