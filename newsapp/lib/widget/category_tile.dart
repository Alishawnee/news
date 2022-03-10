import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Screens/CategoryNews.dart';

class CategoryTile extends StatelessWidget {
  final String? imageUrl, categoryName;
  CategoryTile({this.imageUrl, this.categoryName});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => CategoryNewsPage(
              category: categoryName!.toLowerCase(),
            ),
          ),
        );
      },
      child: Stack(
        children: [
          Container(
            alignment: Alignment.center,
            width: 110,
            height: 55,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              border: Border.all(color: Color(0xff307B30), width: 1),
              color: Color(0xff028394),
            ),
            child: Text(
              categoryName!,
              style: GoogleFonts.arimo(
                  color: Colors.white,
                  fontWeight: FontWeight.w300,
                  fontSize: 16),
            ),
          )
        ],
      ),
    );
  }
}
