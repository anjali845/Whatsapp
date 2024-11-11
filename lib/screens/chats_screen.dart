import 'package:flutter/material.dart';

class ChatsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0B141B),
      appBar: AppBar(
        backgroundColor: Color(0xFF0B141B),
        title: Text(
            style: TextStyle(
                fontWeight: FontWeight.w500, fontSize: 25, color: Colors.white),
            textAlign: TextAlign.left,
            'WhatsApp'),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.qr_code_scanner),
              color: Colors.white),
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.photo_camera_outlined),
              color: Colors.white),
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.more_vert),
              color: Colors.white)
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Search Bar
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  helperText: "Search or Ask Meta AI",
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  fillColor: const Color.fromARGB(255, 103, 100, 100),
                ),
              ),
            ),

            Expanded(
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(""),
                    ),
                    title: Text(
                      "Anjali",
                      style: TextStyle(color: Colors.white),
                    ),
                    subtitle: Text(
                      "smile plz...",
                      style: TextStyle(color: Colors.grey),
                    ),
                    trailing: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("11:11", style: TextStyle(color: Colors.grey)),
                        SizedBox(height: 4),
                        CircleAvatar(
                          radius: 10,
                          backgroundColor: Colors.green,
                          child: Text("4",
                              style:
                                  TextStyle(fontSize: 12, color: Colors.white)),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFilterChip(String label) {
    return Chip(
      label: Text(label, style: TextStyle(color: Colors.white)),
      backgroundColor: Colors.grey[800],
    );
    // hello
  }
}
