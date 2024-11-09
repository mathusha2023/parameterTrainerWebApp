import 'package:flutter/material.dart';
import 'package:parameter_trainer/ui/widgets/all_tasks_view.dart';
import 'package:parameter_trainer/ui/widgets/unsolved_tasks_view.dart';

class TasksListPage extends StatefulWidget {
  const TasksListPage({super.key});

  @override
  State<TasksListPage> createState() => _TasksListPageState();
}

class _TasksListPageState extends State<TasksListPage>
    with TickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Задания"),
        bottom: TabBar(
          controller: _tabController,
          tabs: const [
            Tab(child: Text("Все")),
            Tab(child: Text("Нерешённые")),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: const [
          AllTasksView(),
          UnsolvedTasksView(),
        ],
      ),
    );
  }
}
