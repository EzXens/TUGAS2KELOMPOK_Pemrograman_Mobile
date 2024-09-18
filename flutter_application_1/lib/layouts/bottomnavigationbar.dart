import 'package:flutter/material.dart';

class MyBottomNav extends StatefulWidget {
  const MyBottomNav({super.key});

  @override
  State<MyBottomNav> createState() => _MyBottomNavState();
}

class _MyBottomNavState extends State<MyBottomNav> {
  int _selectedIndex = 0;

  static const style1 = TextStyle(
    fontSize: 40,
    color: Colors.blue,
    fontWeight: FontWeight.bold,
  );

  // Daftar untuk menyimpan judul tiap halaman
  static const List<String> _appBarTitles = [
    'Library',
    'Updates',
    'History',
    'Browse',
    'More',
  ];

  // Data untuk item di Card Pertama halaman update
  final List<Map<String, String>> items = [
    {
      'image': 'assets/10.jpg',
      'title': 'Solo Leveling : Ragnarok',
      'subtitle': 'Chapter 19',
    },
    {
      'image': 'assets/10.jpg',
      'title': 'Solo Leveling : Ragnarok',
      'subtitle': 'Chapter 18',
    },
    {
      'image': 'assets/12.jpg',
      'title': 'Foreigner On The Periphery',
      'subtitle': 'Chapter 48',
    },
    {
      'image': 'assets/14.jpg',
      'title': 'Infinity Mage',
      'subtitle': 'Chapter 49',
    },
    {
      'image': 'assets/3.jpg',
      'title': 'Black Clover',
      'subtitle': 'Chaper 289',
    },
  ];

  final List<Map<String, String>> items2 = [
    {
      'image': 'assets/11.jpg',
      'title': 'Nnao Machine',
      'subtitle': 'Chapter 224',
    },
    {
      'image': 'assets/11.jpg',
      'title': 'Nano Machine',
      'subtitle': 'Chapter 223',
    },
    {
      'image': 'assets/11.jpg',
      'title': 'Nano Machine',
      'subtitle': 'Chapter 222',
    },
  ];
  final List<Map<String, String>> items3 = [
    {
      'image': 'assets/E1.png',
      'title': 'Kiryuu',
    },
    {
      'image': 'assets/E2.png',
      'title': 'Komik cast',
    },
    {
      'image': 'assets/E3.webp',
      'title': 'klik manga',
    },
    {
      'image': 'assets/11.jpg',
      'title': 'manga kita',
    },
    {
      'image': 'assets/11.jpg',
      'title': 'manhwa indo',
    },
    {
      'image': 'assets/11.jpg',
      'title': 'mangaku',
    },
    {
      'image': 'assets/11.jpg',
      'title': 'mangakyo',
    },
    {
      'image': 'assets/11.jpg',
      'title': 'manhwa list',
    },
  ];

  // Daftar history komik yang sudah dibaca
  final List<Map<String, String>> comicHistory = [
    {'title': 'Komik 1', 'image': 'assets/1.jpg'},
    {'title': 'Komik 2', 'image': 'assets/2.jpg'},
    {'title': 'Komik 3', 'image': 'assets/3.jpg'},
    // Tambahkan daftar komik lainnya
  ];

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    double imageHeight = screenWidth * 0.75;

    // Daftar widget sesuai halaman yang dipilih
    final List<Widget> widgetOptions = <Widget>[
      //HAL 1
      // Halaman Library
      SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Stack(
                      children: [
                        Image.asset(
                          'assets/10.jpg',
                          height: imageHeight,
                          fit: BoxFit.cover,
                        ),
                        Positioned(
                          bottom: 0,
                          left: 0,
                          right: 0,
                          child: Container(
                            color: Colors.black54,
                            padding: const EdgeInsets.all(4.0),
                            child: const Text(
                              'Solo Leveling : Ragnarok',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Stack(
                      children: [
                        Image.asset(
                          'assets/11.jpg',
                          height: imageHeight,
                          fit: BoxFit.cover,
                        ),
                        Positioned(
                          bottom: 0,
                          left: 0,
                          right: 0,
                          child: Container(
                            color: Colors.black54,
                            padding: const EdgeInsets.all(4.0),
                            child: const Text(
                              'Nano Machine',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Stack(
                      children: [
                        Image.asset(
                          'assets/3.jpg',
                          height: imageHeight,
                          fit: BoxFit.cover,
                        ),
                        Positioned(
                          bottom: 0,
                          left: 0,
                          right: 0,
                          child: Container(
                            color: Colors.black54,
                            padding: const EdgeInsets.all(4.0),
                            child: const Text(
                              'Black Clover',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Stack(
                      children: [
                        Image.asset(
                          'assets/4.jpg',
                          height: imageHeight,
                          fit: BoxFit.cover,
                        ),
                        Positioned(
                          bottom: 0,
                          left: 0,
                          right: 0,
                          child: Container(
                            color: Colors.black54,
                            padding: const EdgeInsets.all(4.0),
                            child: const Text(
                              'Goblin Slayer',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Stack(
                      children: [
                        Image.asset(
                          'assets/14.jpg',
                          height: imageHeight,
                          fit: BoxFit.cover,
                        ),
                        Positioned(
                          bottom: 0,
                          left: 0,
                          right: 0,
                          child: Container(
                            color: Colors.black54,
                            padding: const EdgeInsets.all(4.0),
                            child: const Text(
                              'Infinity Mage',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Stack(
                      children: [
                        Image.asset(
                          'assets/6.jpg',
                          height: imageHeight,
                          fit: BoxFit.cover,
                        ),
                        Positioned(
                          bottom: 0,
                          left: 0,
                          right: 0,
                          child: Container(
                            color: Colors.black54,
                            padding: const EdgeInsets.all(4.0),
                            child: const Text(
                              'Mashle : Magic and Muscle',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Stack(
                      children: [
                        Image.asset(
                          'assets/7.jpg',
                          height: imageHeight,
                          fit: BoxFit.cover,
                        ),
                        Positioned(
                          bottom: 0,
                          left: 0,
                          right: 0,
                          child: Container(
                            color: Colors.black54,
                            padding: const EdgeInsets.all(4.0),
                            child: const Text(
                              'Oshi No Ko',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Stack(
                      children: [
                        Image.asset(
                          'assets/8.jpg',
                          height: imageHeight,
                          fit: BoxFit.cover,
                        ),
                        Positioned(
                          bottom: 0,
                          left: 0,
                          right: 0,
                          child: Container(
                            color: Colors.black54,
                            padding: const EdgeInsets.all(4.0),
                            child: const Text(
                              'Overlord',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Stack(
                      children: [
                        Image.asset(
                          'assets/12.jpg',
                          height: imageHeight,
                          fit: BoxFit.cover,
                        ),
                        Positioned(
                          bottom: 0,
                          left: 0,
                          right: 0,
                          child: Container(
                            color: Colors.black54,
                            padding: const EdgeInsets.all(4.0),
                            child: const Text(
                              'Foreiger on the periphery',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Stack(
                      children: [
                        Image.asset(
                          'assets/13.jpg',
                          height: imageHeight,
                          fit: BoxFit.cover,
                        ),
                        Positioned(
                          bottom: 0,
                          left: 0,
                          right: 0,
                          child: Container(
                            color: Colors.black54,
                            padding: const EdgeInsets.all(4.0),
                            child: const Text(
                              'God of Blackfield',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),

      //HAL 2
      // halaman updates
      SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0),
          child: Column(
            children: [
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Hari Ini',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Card(
                elevation: 3,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Container(
                  color: Colors.grey,
                  height: screenHeight * 0.5,
                  padding: const EdgeInsets.all(10.0),
                  child: ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: items.length,
                    itemBuilder: (context, index) {
                      // Ambil data berdasarkan index
                      final item = items[index];

                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            // Gambar kecil kotak
                            Image.asset(
                              item['image']!,
                              height: 50,
                              width: 50,
                              fit: BoxFit.cover,
                            ),
                            const SizedBox(width: 16),

                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        item['title']!,
                                        style: const TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      const SizedBox(width: 8),
                                      const Icon(
                                        Icons.download_for_offline,
                                        size: 20,
                                        color: Colors.black54,
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                      height:
                                          4), // Jarak antara judul dan subjudul
                                  Text(
                                    item['subtitle']!,
                                    style: const TextStyle(
                                      fontSize: 14,
                                      color: Colors.black54,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
              const SizedBox(height: 16.0), // Jarak antara Card

              // Card Kedua
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  '1 minggu yang lalu',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Card(
                elevation: 3,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Container(
                  color: Colors.grey,
                  height: screenHeight * 0.3,
                  padding: const EdgeInsets.all(10.0),
                  child: ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            // Gambar kecil kotak
                            Image.asset(
                              'assets/7.jpg',
                              height: 50,
                              width: 50,
                              fit: BoxFit.cover,
                            ),
                            const SizedBox(width: 16),

                            // Tulisan di samping gambar
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Row(
                                    children: [
                                      Text(
                                        'Oshi No Ko',
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(width: 145),
                                      Icon(
                                        Icons.download_for_offline,
                                        size: 20,
                                        color: Colors.black54,
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 4),
                                  Text(
                                    'Chapter ${index + 1}',
                                    style: const TextStyle(
                                      fontSize: 14,
                                      color: Colors.black54,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
              const SizedBox(height: 16.0),

              // Card Ketiga
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  '1 bulan yang lalu',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Card(
                elevation: 3,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Container(
                  color: Colors.grey,
                  height: screenHeight * 0.3,
                  padding: const EdgeInsets.all(10.0),
                  child: ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: items2.length,
                    itemBuilder: (context, index) {
                      final item2 = items2[index];
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            // Gambar kecil kotak
                            Image.asset(
                              item2['image']!,
                              height: 50,
                              width: 50,
                              fit: BoxFit.cover,
                            ),
                            const SizedBox(width: 16),

                            // Tulisan di samping gambar
                            // Column untuk menampung teks dan icon
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        item2['title']!,
                                        style: const TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      const SizedBox(width: 120),
                                      const Icon(
                                        Icons.download_for_offline,
                                        size: 20,
                                        color: Colors.black54,
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 4),
                                  Text(
                                    item2['subtitle']!,
                                    style: const TextStyle(
                                      fontSize: 14,
                                      color: Colors.black54,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),

      // HAL 3
      // halaman history
      Container(
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: Colors.grey[300],
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Stack pertama
            Stack(
              clipBehavior: Clip.none,
              children: [
                Positioned(
                  left: 40,
                  top: 50,
                  child: Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                        color: Colors.black,
                        width: 2,
                      ),
                    ),
                    child: Center(
                      child: Image.asset(
                        'assets/11.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 20,
                  top: 25,
                  child: Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                        color: Colors.black,
                        width: 2,
                      ),
                    ),
                    child: Center(
                      child: Image.asset(
                        'assets/10.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.yellow,
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                      color: Colors.black,
                      width: 2,
                    ),
                  ),
                  child: Center(
                    child: Image.asset(
                      'assets/3.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              children: const [
                Text('Hari ini', style: TextStyle(fontSize: 18)),
                SizedBox(width: 40),
              ],
            ),

            // Stack kedua
            const SizedBox(height: 20),
            Stack(
              clipBehavior: Clip.none,
              children: [
                Positioned(
                  left: 40,
                  top: 50,
                  child: Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                        color: Colors.black,
                        width: 2,
                      ),
                    ),
                    child: Center(
                      child: Image.asset(
                        'assets/12.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 20,
                  top: 25,
                  child: Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.purple,
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                        color: Colors.black,
                        width: 2,
                      ),
                    ),
                    child: Center(
                      child: Image.asset(
                        'assets/13.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                      color: Colors.black,
                      width: 2,
                    ),
                  ),
                  child: Center(
                    child: Image.asset(
                      'assets/14.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              children: const [
                Text('Kemarin', style: TextStyle(fontSize: 18)),
                SizedBox(width: 40),
              ],
            ),

            // Stack ketiga
            const SizedBox(height: 20),
            Stack(
              clipBehavior: Clip.none,
              children: [
                Positioned(
                  left: 40,
                  top: 50,
                  child: Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.brown,
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                        color: Colors.black,
                        width: 2,
                      ),
                    ),
                    child: Center(
                      child: Image.asset(
                        'assets/4.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 20,
                  top: 25,
                  child: Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.teal,
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                        color: Colors.black,
                        width: 2,
                      ),
                    ),
                    child: Center(
                      child: Image.asset(
                        'assets/7.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.pink,
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                      color: Colors.black,
                      width: 2,
                    ),
                  ),
                  child: Center(
                    child: Image.asset(
                      'assets/5.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              children: const [
                Text('2 Hari Lalu', style: TextStyle(fontSize: 18)),
                SizedBox(width: 40),
              ],
            ),
          ],
        ),
      ),

      // HAL 4
      // halaman browse
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10.0,
            mainAxisSpacing: 10.0,
            childAspectRatio: 1.5,
          ),
          itemCount: items3.length,
          itemBuilder: (context, index) {
            return Card(
              elevation: 3,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Flexible(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(
                        items3[index]['image']!,
                        fit: BoxFit.cover,
                        height: 150,
                      ),
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        items3[index]['title']!,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),

      //HAL 5
      //halaman more
      ListView(
        children: [
          Center(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 20.0),
              child: Image.asset(
                'assets/logo.jpg', // Ganti dengan path gambar kamu
                width: 120, // Ganti ukuran sesuai kebutuhan
                height: 120, // Ganti ukuran sesuai kebutuhan
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.cloud_download, color: Colors.blue),
            title: const Text('Hanya yang sudah diunduh'),
            subtitle: const Text('Saring semua entri di perpustakaan Anda'),
            trailing: Switch(
              value: false,
              onChanged: (value) {},
            ),
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.visibility_off, color: Colors.blue),
            title: const Text('Mode penyamaran'),
            subtitle: const Text('Jeda riwayat membaca'),
            trailing: Switch(
              value: false,
              onChanged: (value) {},
            ),
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.download, color: Colors.blue),
            title: const Text('Antrian unduhan'),
            onTap: () {
              // Aksi saat item di-tap
            },
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.category, color: Colors.blue),
            title: const Text('Kategori'),
            onTap: () {
              // Aksi saat item di-tap
            },
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.show_chart, color: Colors.blue),
            title: const Text('Statistik'),
            onTap: () {
              // Aksi saat item di-tap
            },
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.storage, color: Colors.blue),
            title: const Text('Data dan penyimpanan'),
            onTap: () {
              // Aksi saat item di-tap
            },
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.settings, color: Colors.blue),
            title: const Text('Pengaturan'),
            onTap: () {
              // Aksi saat item di-tap
            },
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.info, color: Colors.blue),
            title: const Text('Tentang'),
            onTap: () {
              // Aksi saat item di-tap
            },
          ),
        ],
      ),
    ];

    // Fungsi saat item di-tap
    void onItemTapped(int index) {
      setState(() {
        _selectedIndex = index;
      });
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(_appBarTitles[_selectedIndex]),
        backgroundColor: Colors.blue,
        actions: _selectedIndex == 0
            ? [
                IconButton(
                  icon: const Icon(Icons.search),
                  onPressed: () {},
                ),
                IconButton(
                  icon: const Icon(Icons.filter_list),
                  onPressed: () {},
                ),
                IconButton(
                  icon: const Icon(Icons.refresh),
                  onPressed: () {},
                ),
              ]
            : null,
      ),
      body: Center(
        child: widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blue,
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.library_books_outlined),
            label: 'Library',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.new_releases),
            label: 'Updates',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            label: 'History',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            label: 'Browse',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.more_horiz),
            label: 'More',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.black,
        onTap: onItemTapped,
      ),
    );
  }
}
