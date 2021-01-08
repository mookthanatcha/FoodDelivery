import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mookfood/components/showTitle.dart';
import 'package:mookfood/constant.dart';
import 'package:mookfood/providers/taskList_provider.dart';
import 'package:provider/provider.dart';

class AddTask extends StatefulWidget {
  AddTask({
    Key key,
  }) : super(key: key);

  @override
  _AddTaskState createState() => _AddTaskState();
}

class _AddTaskState extends State<AddTask> {
  TextEditingController _controller;

  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  final GlobalKey<FormState> _key = GlobalKey<FormState>();

  String titleTask;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: ShowTitle(
          title: "Add Task",
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            key: _key,
            child: Container(
              margin: EdgeInsets.all(30.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        child: ShowTitle(
                          title: "Add Task",
                        ),
                      ),
                    ],
                  ),
                  Container(
                    child: TextFormField(
                      controller: _controller,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.work_outline),
                        hintText: "Task",
                        labelStyle: TextStyle(color: kPrimaryColor),
                        border: OutlineInputBorder(),
                      ),
                      onSaved: (value) {
                        titleTask = value;
                      },
                    ),
                  ),
                  Container(
                    child: Consumer<TaskListProvider>(
                        builder: (BuildContext context, taskListProvider, _) {
                      return ListView.builder(
                        shrinkWrap: true,
                        itemCount: taskListProvider.getTaskList().length,
                        itemBuilder: (BuildContext context, int index) {
                          return ListTile(
                            title: Text(
                                taskListProvider.taskList[index].titleTask),
                            trailing: Icon(Icons.remove_circle_outline),
                            onTap: () {
                              print(index);
                              taskListProvider.deleteTask(index);
                            },
                          );
                        },
                      );
                    }),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('add task');
          _key.currentState.save();
          var taskListProvider =
              Provider.of<TaskListProvider>(context, listen: false);
          taskListProvider.setTaskTitle(titleTask);
          _key.currentState.reset();
        },
        child: Icon(
          Icons.add,
          size: 36.0,
        ),
        backgroundColor: kPrimaryColor,
      ),
    );
  }
}
