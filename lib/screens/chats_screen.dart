import 'package:flutter/material.dart';

class ChatsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<String> names = [
      'Anjali',
      'Angel',
      'Aastha',
      'Urvi',
      'Hajamat',
      'Sahara',
      'Farewell 2024',
      'Riddhima Gdg',
      'GDG - Volunteers 2024',
      'B2',
    ];
    List<String> messages = [
      'Are you okay?',
      'Byeee Byeee',
      'Pata hai ajj kya hua...',
      'Chal koi na me hu tere sath...',
      'Accha ji, batau phir...',
      'Brooooo guess whatttttt...',
      '~ Vaishnavi di: @Everyone venue...',
      'Jiiii',
      'App Mentoring > kal raat maine sab kuc...',
      '~ Trisha:kab dikhana sir ko',
    ];
    List<Image> images = [
      Image.asset('assets/dp.jpg'),
      Image.asset('assets/dp.jpg'),
      Image.asset('assets/dp.jpg'),
      Image.asset('assets/dp.jpg'),
      Image.asset('assets/dp.jpg'),
      Image.asset('assets/dp.jpg'),
      Image.asset('assets/farewell.png'),
      Image.asset('assets/dp.jpg'),
      Image.asset('assets/gdg.png'),
      Image.asset('assets/dp.jpg'),
    ];
    List<String> time = [
      '17:49',
      '17:48',
      '15:27',
      '13:54',
      'Yesterday',
      '15/11/2024',
      '15/11/2024',
      '14/11/2024',
      '>',
      '14/11/2024',
    ];

    return Scaffold(
      backgroundColor: Color(0xFF0B141B),
      appBar: AppBar(
        backgroundColor: Color(0xFF0B141B),
        title: Text(
          'WhatsApp',
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 25,
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
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            icon: Icon(Icons.more_vert),
            color: Colors.white,
          ),
        ],
      ),
      drawer: Drawer(
        backgroundColor: Color(0xFF0B141B),
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xFF0B141B),
              ),
              child: Text(
                'Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.chat, color: Colors.white),
              title: Text('Chats', style: TextStyle(color: Colors.white)),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.group, color: Colors.white),
              title: Text('Groups', style: TextStyle(color: Colors.white)),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.settings, color: Colors.white),
              title: Text('Settings', style: TextStyle(color: Colors.white)),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.logout, color: Colors.white),
              title: Text('Logout', style: TextStyle(color: Colors.white)),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Search Bar
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Search or Ask Meta AI",
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  fillColor: const Color.fromARGB(255, 37, 36, 36),
                ),
              ),
            ),
            ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: names.length,
                itemBuilder: (context, index) => ListTile(
                      title: Text(
                        names[index],
                        style: TextStyle(color: Colors.white),
                      ),
                      leading: CircleAvatar(
                        backgroundImage: images[index].image,
                      ),
                      trailing: Text(
                        time[index],
                        style: TextStyle(color: Colors.grey),
                      ),
                      subtitle: Text(
                        messages[index],
                        style: TextStyle(color: Colors.grey),
                      ),
                    )

                // {
                //   return ListTile(
                //     leading: CircleAvatar(
                //       //backgroundImage: NetworkImage(
                //       //  "https://www.peakpx.com/en/hd-wallpaper-desktop-wnooq"),
                //       //foregroundImage: NetworkImage(
                //       //  "https://www.peakpx.com/en/hd-wallpaper-desktop-wnooq"),
                //       backgroundImage: AssetImage(
                //           "assetNamC:\flutter projects\test_app\assets\images\WhatsApp Image 2024-11-09 at 10.18.37.jpege"),
                //     ),
                //     title: Text(
                //       "Anjali",
                //       style: TextStyle(color: Colors.white),
                //     ),
                //     subtitle: Text(
                //       "smile plz...",
                //       style: TextStyle(color: Colors.grey),
                //     ),
                //     trailing: Column(
                //       mainAxisAlignment: MainAxisAlignment.center,
                //       children: [
                //         Text("11:11", style: TextStyle(color: Colors.grey)),
                //         SizedBox(height: 4),
                //         CircleAvatar(
                //           radius: 10,
                //           backgroundColor: Colors.green,
                //           child: Text(
                //             "2",
                //             style: TextStyle(fontSize: 12, color: Colors.white),
                //           ),
                //         ),
                //       ],
                //     ),
                //   );
                // },
                ),
          ],
        ),
      ),
    );
  }
}
