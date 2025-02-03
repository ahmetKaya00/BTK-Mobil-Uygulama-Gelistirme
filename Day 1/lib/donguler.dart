void main(){
  for(int i = 0; i<5; i++){
    print("For döngüsü değer: $i");
  }

  int j = 0;
  while(j<5){
    print("While döngüsü değer: $j");
    j++;
  }

  var liste = ["Ahmet", "Mehmet","Ayşe"];
  liste.forEach((isim) => print("İsim: $isim"));
}