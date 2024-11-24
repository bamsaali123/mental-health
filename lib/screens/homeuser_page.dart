import 'package:flutter/material.dart';
import 'package:graduation/category/bottom_nav_bar.dart';
import 'package:graduation/category/category_chip.dart';
import 'package:graduation/category/doctorhome_category.dart';
import 'package:graduation/model/dectorcard.dart';
import 'package:graduation/screens/book_doctor.dart';
import 'package:graduation/screens/categorypage.dart';

class HomeUserPage extends StatefulWidget {
  HomeUserPage({super.key});

  @override
  _HomeUserPageState createState() => _HomeUserPageState();
}

class _HomeUserPageState extends State<HomeUserPage> {
  final categories = [
    'Speech',
    'Autism',
    'Learning difficulties',
    'Intelligence test',
  ];

  // قائمة لتخزين حالة القلب لكل طبيب
  List<bool> favoriteStatus = [false, false, false];

  @override
  Widget build(BuildContext context) {
    List<DoctorCard> doctors = [
      DoctorCard(
        name: 'Dr. Osama Ali',
        experience: '10 years',
        price: '\$25.00',
        rating: 4.5,
        imageUrl: 'assets/osama.png',
      ),
      DoctorCard(
        name: 'Dr. Sara Selem',
        experience: '12 years',
        price: '\$20.99',
        rating: 4.8,
        imageUrl: 'assets/sara.png',
      ),
      DoctorCard(
        name: 'Dr. May morad',
        experience: '10 years',
        price: '\$25.00',
        rating: 4.5,
        imageUrl: 'assets/may.png',
      ),
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          children: [
            Image.asset('assets/logo.png', height: 40),
            SizedBox(width: 8),
            Text(
              'Markaz ElAmal',
              style: TextStyle(
                color: Color(0xff233B55),
              ),
            ),
           // Spacer(),
           // _buildIconButton(Icons.notifications_none, context),
           // SizedBox(width: 14),
          //  _buildIconButton(Icons.chat_bubble_outline, context),
          ],
        ),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildSearchBar(),
                  SizedBox(height: 16),
                  _buildTopImage(),
                  SizedBox(height: 16),
                  _buildSectionTitle(
                    context,
                    title: 'Category',
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => CategoryPage()),
                    ),
                  ),
                  SizedBox(
                    height: 45,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: categories.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: CategoryChip(label: categories[index]),
                        );
                      },
                    ),
                  ),
                  SizedBox(height: 16),
                  _buildSectionTitle(
                    context,
                    title: 'Doctors',
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => BookDoctor()),
                    ),
                  ),
                  SizedBox(
                    height: 240,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: doctors.length,
                      itemBuilder: (context, index) {
                        return Stack(
                          children: [
                            Container(
                              width: 260,
                              child: DoctorhomeCategory(doctor: doctors[index]),
                            ),
                            Positioned(
                              top: 10,
                              right: 20,
                              child: IconButton(
                                icon: Icon(
                                  favoriteStatus[index]
                                      ? Icons.favorite
                                      : Icons.favorite_border,
                                  color: favoriteStatus[index]
                                      ? Colors.red
                                      : Colors.grey,
                                  size: 24,
                                ),
                                onPressed: () {
                                  setState(() {
                                    favoriteStatus[index] =
                                        !favoriteStatus[index];
                                  });
                                },
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
      bottomNavigationBar: CustomBottomNavBar(),
    );
  }

  Widget _buildIconButton(IconData icon, BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.4),
            spreadRadius: 2,
            blurRadius: 7,
            offset: Offset(2, 2),
          ),
        ],
        borderRadius: BorderRadius.circular(8),
        color: Color(0xff336EA6),
      ),
      child: IconButton(
        icon: Icon(icon, color: Colors.white, size: 24),
        onPressed: () {},
      ),
    );
  }

  Widget _buildSearchBar() {
    return TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: Colors.black),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: Colors.black, width: 2),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: Colors.black, width: 2),
        ),
        hintText: 'Search',
        prefixIcon: Icon(Icons.search),
        filled: true,
        fillColor: Colors.white,
      ),
    );
  }

  Widget _buildTopImage() {
    return Container(
      height: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        image: DecorationImage(
          image: AssetImage('assets/reading-hard.png'),
        ),
      ),
    );
  }

  Widget _buildSectionTitle(BuildContext context,
      {required String title, required VoidCallback onTap}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Color(0xff233B55),
          ),
        ),
        TextButton(
          onPressed: onTap,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'See All',
                style: TextStyle(
                  fontSize: 18,
                  color: Color(0xff233B55),
                ),
              ),
              SizedBox(width: 8),
              Icon(Icons.arrow_forward, color: Color(0xff233B55)),
            ],
          ),
        ),
      ],
    );
  }
}
