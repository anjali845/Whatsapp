import 'package:flutter/material.dart';

class CommunitiesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<String> whatsappChannelNames = [
      'Dance Class',
      'Singing World',
      'Btech CSE',
    ];
    List<String> community1 = [
      'Good Morning',
      'Shaadi in January',
      'Cousins',
    ];
    List<String> community1Subtitles = [
      'Sent an image',
      'Ethnic ya Formals?',
      'Kaise ho sab',
    ];

    List<String> whatsappChannelSubtitles = [
      'Permission to Dance',
      'Angelic voice wowwww',
      'Notes of maths',
    ];
    List<String> times = [
      '11:11 AM',
      '11:00 AM',
      '10:20 AM',
    ];
    List<Image> images = [
      Image.asset(''),
      Image.asset(''),
      Image.asset(''),
    ];

    return Scaffold(
      backgroundColor: Color(0xFF0B141B),
      appBar: AppBar(
        backgroundColor: Color(0xFF0B141B),
        title: Text(
          'Communities',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
            color: Colors.white,
          ),
          textAlign: TextAlign.left,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.qr_code_scanner),
            color: Colors.white,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.photo_camera_outlined),
            color: Colors.white,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_vert),
            color: Colors.white,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 15),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 15, top: 15),
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey,
                      shape: BoxShape.rectangle,
                    ),
                    child: Icon(Icons.group),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 15, top: 20),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'New Community',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 10,
              decoration: BoxDecoration(color: Colors.black),
            ),
            Container(
              margin: EdgeInsets.only(left: 15, top: 20),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 27,
                    backgroundImage: AssetImage(''),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.only(left: 15, top: 5),
                    child: Text(
                      'Family Group',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 5),
              height: 0.3,
              decoration: BoxDecoration(color: Colors.grey),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: community1.length,
              itemBuilder: (context, index) => ListTile(
                title: Text(
                  community1[index],
                  style: TextStyle(color: Colors.white),
                ),
                leading: CircleAvatar(
                  backgroundImage: images[index].image,
                ),
                trailing: Text(
                  times[index],
                  style: TextStyle(color: Colors.grey),
                ),
                subtitle: Text(
                  community1Subtitles[index],
                  style: TextStyle(color: Colors.grey),
                ),
              ),
            ),
            Container(
              height: 10,
              decoration: BoxDecoration(color: Colors.black),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: whatsappChannelNames.length,
              itemBuilder: (context, index) => ListTile(
                title: Text(
                  whatsappChannelNames[index],
                  style: TextStyle(color: Colors.white),
                ),
                leading: CircleAvatar(
                  backgroundImage: images[index].image,
                ),
                trailing: Text(
                  times[index],
                  style: TextStyle(color: Colors.grey),
                ),
                subtitle: Text(
                  whatsappChannelSubtitles[index],
                  style: TextStyle(color: Colors.grey),
                ),
              ),
            ),
            Container(
              height: 10,
              decoration: BoxDecoration(color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}
