import 'package:apicall/model/user.dart';
import 'package:apicall/services/user_api.dart';
import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  List<User> users = [];
  @override
  void initState() {
    super.initState();
    fetchUSer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[200],
        title: const Center(child: Text('Rest api call')),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(1.0),
          child: Container(
            color: Colors.grey.withOpacity(0.6),
            height: 2.0,
          ),
        ),
      ),
      body: ListView.builder(
          itemCount: users.length,
          itemBuilder: (context, index) {
            final user = users[index];
            final email = user.email;
            final phone = user.phone;
            final nat = user.nat;
            final cell = user.cell;
            final gender = user.gender;
            final fullName = user.fullName;
            final dob = user.dob;
            final location = user.location;
            final picture = user.picture;

            print(fullName);
            return ListTile(
              title: Text('$email $gender $cell'),
              subtitle:
                  Text(' $fullName ${location.country} $phone $nat $dob '),
              //     subtitle: Text('$fullName $phone $nat'),
            );
          }),
    );
  }

  Future<void> fetchUSer() async {
    final response = await UserApi.fetchUSer();
    setState(() {
      users = response;
    });
  }
}
