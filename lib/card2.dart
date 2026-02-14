import 'package:flutter/material.dart';

class Card2 extends StatelessWidget {
  const Card2({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8,
      margin: EdgeInsets.zero, //  เอาช่องว่างออกให้เต็มจอ
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      clipBehavior: Clip.antiAlias,
      child: SizedBox(
        height: 220,
        width: double.infinity,
        child: Stack(
          fit: StackFit.expand,
          children: [

            //  รูปพื้นหลังเต็มการ์ด
            Image.network(
              'https://images.unsplash.com/photo-1490645935967-10de6ba17061',
              fit: BoxFit.cover,
            ),

            //  ทำพื้นหลังมืดลง
            Container(
              color: Colors.black.withOpacity(0.3),
            ),

            //  แถวโปรไฟล์
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [

                  // วงกลมสีเหมือนเดิม
                  const CircleAvatar(
                    radius: 28,
                    backgroundColor: Colors.greenAccent,
                  ),

                  const SizedBox(width: 16),

                  const Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Mike Katz',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          'Smoothie Connoisseur',
                          style: TextStyle(
                            color: Colors.white70,
                          ),
                        ),
                      ],
                    ),
                  ),

                  const Icon(
                    Icons.favorite_border,
                    color: Colors.white,
                    size: 26,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
