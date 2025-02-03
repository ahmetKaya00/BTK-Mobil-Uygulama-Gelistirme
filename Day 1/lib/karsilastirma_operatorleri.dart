void main(){
  int a = 10, b = 5;

  if(a < b){
    print("$a küçüktür $b");
  }else{
    print("$b küçüktür $a");
  }

  String gun = "Salı";

  switch(gun){
    case "Pazartesi":
      print("Bugün Pazartesi");
      break;
    default:
      print("Tanımsız gün");
  }
}