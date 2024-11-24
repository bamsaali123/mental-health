import 'package:flutter/material.dart';
import 'package:graduation/category/bottom_nav_bar.dart';
import 'package:graduation/category/category_item.dart';
import 'package:graduation/model/category_item_model.dart';

class CategoryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<CategoryItemModel> categories = [
      CategoryItemModel(title: 'Speech', imageUrl: 'assets/تخاطب 1.png'),
      CategoryItemModel(title: 'Autism', imageUrl: 'assets/توحد 1.png'),
      CategoryItemModel(
          title: 'Learning difficulties', imageUrl: 'assets/صعوبه تعلم 1.png'),
      CategoryItemModel(
          title: 'Intelligence test', imageUrl: 'assets/اختبار ذكاء 1.png'),
      CategoryItemModel(
          title: 'Behavior modification', imageUrl: 'assets/تعديل سلوك 1.png'),
      CategoryItemModel(
          title: 'Skills development', imageUrl: 'assets/تنميه مهارات 1.png'),
    ];

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xff336EA6),
        title: Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 40.0),
            child: Text(
              'Category',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search, color: Colors.white),
            onPressed: () {
              // أضف وظيفة البحث هنا إذا لزم الأمر
            },
          ),
        ],
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.88,
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10.0,
        ),
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return CategoryItem(categoryItem: categories[index]);
        },
        padding: EdgeInsets.all(10.0),
      ),
      bottomNavigationBar: CustomBottomNavBar(),
      backgroundColor: Colors.white,
    );
    
  }
}

class CategoryItem extends StatelessWidget {
  final CategoryItemModel categoryItem;

  CategoryItem({required this.categoryItem});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // إضافة الصورة وضبطها
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Image.asset(
                categoryItem.imageUrl,
                fit: BoxFit.cover, // تعديل طريقة عرض الصورة لتغطية المساحة بشكل صحيح
                width: double.infinity,
              ),
            ),
          ),
          // إضافة النص مع خاصية الـ TextOverflow
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              categoryItem.title,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              overflow: TextOverflow.ellipsis, // إذا كان النص طويل، سيظهر مع "..."
            ),
          ),
        ],
        
      ),
      color: Color(0xFF336EA6),
    );
  
  }

}
