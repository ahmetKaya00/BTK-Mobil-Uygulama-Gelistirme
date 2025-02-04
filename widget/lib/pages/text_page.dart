import 'package:flutter/material.dart';

class TextPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Text Widget"),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Basit bir metin"),
            SizedBox(height: 10),

            Text(
              "Kalın, renkli ve büyük bir metin",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.green
              ),
            ),
            SizedBox(height: 10),

            Text(
              "Bu bir taşan metindir. Çok uzun bir metni göstermek "
                  "ve taşan kısımları kontrol etmek için kullanılır"
                  "ve taşan kısımları kontrol etmek için kullanılır",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey[700]
              ),
            ),
            SizedBox(height: 10),
            Text(
              "Bu bir merkez hizalı metindir.",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14,
                color: Colors.amber
              ),
            ),
            Text(
              "Bu bir altı çizili ve italik metindir.",
              style: TextStyle(
                fontSize: 18,
                fontStyle: FontStyle.italic,
                decoration: TextDecoration.underline,
                decorationColor: Colors.red,
                decorationStyle: TextDecorationStyle.dashed
              ),
            )
          ],
        ),
      ),
    );
  }
}