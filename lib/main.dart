import 'package:e_learning_center_admin/pages/lets_in/lets_in_page.dart';
import 'package:e_learning_center_admin/pages/lets_in/lets_in_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const _ELearningCenterAdmin());
}

class _ELearningCenterAdmin extends StatelessWidget {
  const _ELearningCenterAdmin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(create: (_) => LetsInViewModel(),),
      ],
      child: const MaterialApp(
        home: LetsInPage(),
      ),
    );
  }
}
