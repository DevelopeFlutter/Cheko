import 'package:flutter/material.dart';
import 'AllUsers.dart';

class IndividualUsers extends StatefulWidget {
  const IndividualUsers({Key? key}) : super(key: key);

  @override
  State<IndividualUsers> createState() => _IndividualUsersState();
}

class _IndividualUsersState extends State<IndividualUsers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    floatingActionButton: FloatingActionButton(
child: const Icon(Icons.people_alt),
      onPressed: (){
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const AllUsers(),
            ));
      },
    ),
      body: const Center(child: Text('Individual Usres')),
    );
  }
}
