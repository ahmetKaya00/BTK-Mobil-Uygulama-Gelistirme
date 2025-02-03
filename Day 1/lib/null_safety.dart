void main(){
  String? isim = null;
  print(isim ?? "Varsayılan isim");

  if(isim != null){
    print("İsim uzunluğu: ${isim.length}");
  }
}