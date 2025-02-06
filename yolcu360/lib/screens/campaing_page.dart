import 'package:flutter/material.dart';
import 'package:yolcu360/screens/campaing_detail.dart';

class CampaingPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade800,
        title: Text("Kampanyalar"),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            color: Colors.blue.shade800,
            padding: EdgeInsets.symmetric(vertical: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildFilterIcon(Icons.all_inclusive, "Tümü",true),
                _buildFilterIcon(Icons.directions_car, "Tümü",true),
                _buildFilterIcon(Icons.flight, "Tümü",true),
              ],
            ),
          ),
          Padding(padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildCategoryButton("Yurtiçi Kampanyalar",true),
              _buildCategoryButton("Yurt Dışı Kampanyalar",false),
            ],
          ),
          ),
          Expanded(
              child: ListView(
                padding: EdgeInsets.symmetric(horizontal: 16),
                children: [
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>CampaingDetailPage()
                      ),
                      );
                    },
                    child: _buildCampaignCard(
                      "Turkcell platinum hoşgeldiniz!",
                      "assets/images/campaign1.jpg"
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>CampaingDetailPage()
                      ),
                      );
                    },
                    child: _buildCampaignCard(
                        "Turkcell platinum hoşgeldiniz!",
                        "assets/images/campaign2.jpg"
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>CampaingDetailPage()
                      ),
                      );
                    },
                    child: _buildCampaignCard(
                        "Turkcell platinum hoşgeldiniz!",
                        "assets/images/campaign3.jpg"
                    ),
                  )
                ],
              )
          )
        ],
      ),
    );
  }
  Widget _buildFilterIcon(IconData icon, String label, bool isSelected){
    return Column(
      children: [
        Icon(
          icon,
          color: isSelected ? Colors.orange : Colors.white,
          size: 30,
        ),
        SizedBox(height: 4),
        Text(
          label,
          style: TextStyle(
            color: isSelected ? Colors.orange : Colors.white,
            fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
          ),
        )
      ],
    );
  }

  Widget _buildCategoryButton(String label, bool isSelected){
    return Expanded(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 8),
        decoration: BoxDecoration(
          color: isSelected ? Colors.blue.shade800 : Colors.white,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: Colors.blue.shade800),
        ),
        child: Center(
          child: Text(
            label,
            style: TextStyle(
              color: isSelected ? Colors.white : Colors.blue.shade800,
              fontWeight: isSelected ? FontWeight.bold : FontWeight.normal
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildCampaignCard(String title, String imagePath){
    return Card(
      margin: EdgeInsets.only(bottom: 16),
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRect(
            child: Image.asset(
              imagePath,
              height: 180,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Padding(padding: const EdgeInsets.all(16),
          child: Text(
            title,
            style: TextStyle(
              fontSize: 16, fontWeight: FontWeight.bold
            ),
          ),
          )
        ],
      ),
    );
  }
}