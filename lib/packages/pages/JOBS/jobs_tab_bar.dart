import 'package:flutter/material.dart';
import 'jobs_all.dart';
import 'jobs_saved.dart';

class JobsBody extends StatelessWidget {
  const JobsBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TabBarView(
      children: [
        JobsAll(),
        JobsSaved(),
      ],
    );
  }
}
