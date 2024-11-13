import 'package:flutter/material.dart';

class StatusScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
          leading: Stack(
            children: [
              CircleAvatar(
                backgroundColor: Colors.grey,
                radius: 24,
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: Icon(Icons.add_circle, color: Colors.green, size: 24),
              ),
            ],
          ),
          title: Text("My status", style: TextStyle(color: Colors.white)),
          subtitle: Text("Tap to add status update",
              style: TextStyle(color: Colors.grey)),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          child: Text("Recent updates", style: TextStyle(color: Colors.grey)),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: 5, // Replace with dynamic count if needed
            itemBuilder: (context, index) {
              return ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(""),
                ),
                title: Text("Anjali", style: TextStyle(color: Colors.white)),
                subtitle: Text("11:11", style: TextStyle(color: Colors.grey)),
              );
            },
          ),
        ),
      ],
    );
  }
}
