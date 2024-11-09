import 'package:flutter/material.dart';
import 'package:parameter_trainer/repository/db_models/db_models.dart';

class TaskCardWidget extends StatelessWidget {
  const TaskCardWidget({super.key, this.question});

  final DBQuestionModel? question;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Center(
        child: Text(
          question?.task ?? "?",
        ),
      ),
    );
  }
}
