import 'package:flutter/material.dart';
import 'package:dating_app/Screens/fav.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<String> imagePaths = [
      "asset/w1.png",
      "asset/women.png",
      "asset/w3.png",
      "asset/w2.png",
    ];
    List<String> textpaths = [
      'Maria White',
      'Anna Fernandez',
      'Jennifer Brown',
      'Charles',
    ];
    List<Color> _getColorforIndex = [
      Colors.green,
      Colors.yellow,
      Colors.red,
      Colors.blue,
      
    ];

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {},
        ),
        title: Container(
          height: 30,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Color.fromARGB(255, 237, 236, 236),
          ),
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: TextFormField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.only(bottom: 10),
                border: InputBorder.none,
                prefixIcon: Icon(
                  Icons.search_sharp,
                  color: Color.fromARGB(255, 96, 96, 96),
                  size: 20,
                ),
                hintText: "Search",
                hintStyle: TextStyle(
                  color: Color.fromARGB(255, 186, 186, 186),
                ),
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Divider(
              color: Color.fromARGB(255, 204, 204, 204),
              height: 20,
              thickness: 1,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Text(
                    'Matches  ',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    '(7)',
                    style: TextStyle(
                      fontSize: 22,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: SizedBox(
                height: 130,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Column(
                        children: [
                          Stack(
                            children: [
                              CircleAvatar(
                                radius: 40,
                                backgroundImage: AssetImage(
                                  imagePaths[index],
                                ),
                              ),
                              Positioned(
                                right: 0,
                                bottom: 5,
                                child: Container(
                                  width: 20,
                                  height: 20,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: _getColorforIndex[index],
                                    border: Border.all(color: Colors.white),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 8),
                          Text(
                            textpaths[index],
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
            Divider(
              color: Color.fromARGB(255, 204, 204, 204),
              height: 20,
              thickness: 1,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  const Text(
                    'Chats  ',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Text(
                    '(1)',
                    style: TextStyle(
                      fontSize: 22,
                    ),
                  ),
                  Spacer(),
                  IconButton(
                    icon: Icon(Icons.horizontal_split_sharp),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 235, 222, 251),
              ),
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Stack(
                        children:[ CircleAvatar(
                          radius: 25,
                          backgroundImage: AssetImage("asset/w1.png"),
                        ),
                        Positioned(
                                right: 0,
                                bottom: 5,
                                child: Container(
                                  width: 12,
                                  height: 12,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.green,
                                    border: Border.all(color: Colors.white),
                                  ),
                                ),
                              ),
                     ] ),
                      SizedBox(width: 16),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                'Ava Jones',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              ),
                              SizedBox(width: 8),
                              Text(
                                '1 hour ago',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 4),
                          Text(
                            'You: Hello!',
                            style: TextStyle(
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_outline,
              color: Colors.grey,
              size: 30,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Fav()),
                );
              },
              child: Icon(
                Icons.favorite_outline,
                color: Colors.grey,
                size: 30,
              ),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.bookmark_outline,
              color: Colors.grey,
              size: 30,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Transform.rotate(
              angle: -0.5, // Adjust the angle as needed
              child: Icon(
                Icons.send_outlined,
                color: Colors.purple,
                size: 30,
              ),
            ),
            label: '', // Add a label here
          ),
        ],
      ),
    );
  }
}
