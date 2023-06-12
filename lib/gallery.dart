import 'package:assignment_photo_gallery/photo_button.dart';
import 'package:flutter/material.dart';

class GalleryPage extends StatefulWidget {
  const GalleryPage({super.key});

  @override
  State<GalleryPage> createState() => _GalleryPageState();
}

class _GalleryPageState extends State<GalleryPage> {

  final List<String> photoUrl = [
    'https://spaceplace.nasa.gov/galaxies-age/en/milky-way.en.jpg',
    'https://spaceplace.nasa.gov/galaxies-age/en/milky-way.en.jpg',
    'https://spaceplace.nasa.gov/galaxies-age/en/milky-way.en.jpg',
    'https://spaceplace.nasa.gov/galaxies-age/en/milky-way.en.jpg',
    'https://spaceplace.nasa.gov/galaxies-age/en/milky-way.en.jpg',
    'https://spaceplace.nasa.gov/galaxies-age/en/milky-way.en.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Photo Gallery'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('Photos Uploaded Successfully!')),
          );
        },
        backgroundColor: Colors.deepOrange,
        child: Icon(
          Icons.cloud_upload,
          size: 32.0,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Container(
              alignment: Alignment.center,
              child: Text(
                'Welcome to My Photo Gallery!',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(vertical: 15.0),
                  prefixIcon: Icon(Icons.search),
                  hintText: 'Photo Search',
                  hintStyle: TextStyle(color: Colors.black38),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide(
                      color: Colors.black54,
                    ),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              child: Center(
                child: Wrap(
                  spacing: 10,
                  runSpacing: 10,
                  children: List.generate(
                    photoUrl.length,
                    (index) {
                      return PhotoButton(
                        imageUrl: photoUrl[index],
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text('Clicked on Photos')),
                          );
                        },
                      );
                    },
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            ListView(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              children: [
                ListTile(
                  leading: Image.network(
                    'https://spaceplace.nasa.gov/galaxies-age/en/milky-way.en.jpg',
                    width: 40,
                    height: 40,
                  ),
                  title: Text('Milky Way Galaxy'),
                  subtitle: Text('This is Milky Way Galaxy'),
                ),
                ListTile(
                  leading: Image.network(
                    'https://spaceplace.nasa.gov/galaxies-age/en/milky-way.en.jpg',
                    width: 40,
                    height: 40,
                  ),
                  title: Text('Milky Way Galaxy'),
                  subtitle: Text('This is Milky Way Galaxy'),
                ),
                ListTile(
                  leading: Image.network(
                    'https://spaceplace.nasa.gov/galaxies-age/en/milky-way.en.jpg',
                    width: 40,
                    height: 40,
                  ),
                  title: Text('Milky Way Galaxy'),
                  subtitle: Text('This is Milky Way Galaxy'),
                ),
                ListTile(
                  leading: Image.network(
                    'https://spaceplace.nasa.gov/galaxies-age/en/milky-way.en.jpg',
                    width: 40,
                    height: 40,
                  ),
                  title: Text('Milky Way Galaxy'),
                  subtitle: Text('This is Milky Way Galaxy'),
                ),
                ListTile(
                  leading: Image.network(
                    'https://spaceplace.nasa.gov/galaxies-age/en/milky-way.en.jpg',
                    width: 40,
                    height: 40,
                  ),
                  title: Text('Milky Way Galaxy'),
                  subtitle: Text('This is Milky Way Galaxy'),
                ),
                ListTile(
                  leading: Image.network(
                    'https://spaceplace.nasa.gov/galaxies-age/en/milky-way.en.jpg',
                    width: 40,
                    height: 40,
                  ),
                  title: Text('Milky Way Galaxy'),
                  subtitle: Text('This is Milky Way Galaxy'),
                ),
              ],
            ),

          ],
        ),
      ),
    );
  }
}
