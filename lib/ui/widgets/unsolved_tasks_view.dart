import 'package:flutter/material.dart';
import 'package:parameter_trainer/ui/widgets/task_card_widget.dart';

class UnsolvedTasksView extends StatefulWidget {
  const UnsolvedTasksView({super.key});

  @override
  State<UnsolvedTasksView> createState() => _UnsolvedTasksViewState();
}

class _UnsolvedTasksViewState extends State<UnsolvedTasksView> {
  int tasksCount = 20;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, childAspectRatio: 1.5),
      itemBuilder: (context, i) => const TaskCardWidget(),
      itemCount: tasksCount,
    );
  }
}
