import 'package:flutter/material.dart';
import "package:parameter_trainer/repository/db_models/db_models.dart";
import 'package:parameter_trainer/ui/widgets/task_card_widget.dart';

class AllTasksView extends StatefulWidget {
  const AllTasksView({super.key});

  @override
  State<AllTasksView> createState() => _AllTasksViewState();
}

class _AllTasksViewState extends State<AllTasksView> {

  List<DBQuestionModel?> questions = List.generate(20, (int i) => DBQuestionModel(id: i + 1, task: "i * i = 1"));
  int tasksCount = 20;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, childAspectRatio: 1.5),
      itemBuilder: (context, i) => TaskCardWidget(question:  questions[i]),
      itemCount: tasksCount,
    );
  }
}
