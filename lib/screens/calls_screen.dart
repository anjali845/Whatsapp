import 'package:flutter/material.dart';

class CallsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
          leading: Icon(Icons.favorite, color: Colors.green, size: 32),
          title: Text("Add favourite", style: TextStyle(color: Colors.white)),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          child: Text("Recent", style: TextStyle(color: Colors.grey)),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: 10, // Replace with dynamic count if needed
            itemBuilder: (context, index) {
              return ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(""),
                ),
                title: Text("Anjali", style: TextStyle(color: Colors.white)),
                subtitle: Text("   today , 11:11",
                    style: TextStyle(color: Colors.grey)),
                trailing: Icon(
                  Icons.call,
                  color: index % 2 == 0 ? Colors.green : Colors.grey,
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
