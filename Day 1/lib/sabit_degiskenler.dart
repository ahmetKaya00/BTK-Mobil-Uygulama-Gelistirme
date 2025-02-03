void main(){
  const pi = 3.14;
  final tarih = DateTime.now();

  print("Pi Sabiti: $pi, Tarih: $tarih");

  int yas = 25;
  String yasString = yas.toString();
  double yasDouble = double.parse("25.5");
  print("Yaş (string): $yasString");
  print("Yaş (double): $yasDouble");

  String metin = "Boy: ${1.75}";
  print(metin);
}