class Araba{
  String marka;
  int yil;
  Araba(this.marka, this.yil);
  void bilgiGoster(){
    print("Marka: $marka, Yıl: $yil");
  }
}

void main(){
  var araba = Araba("Toyota", 2025);
  araba.bilgiGoster();
  var araba2 = Araba("Toyota", 2024);
  araba2.bilgiGoster();
}