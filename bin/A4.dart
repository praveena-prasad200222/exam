
import 'dart:io';

void main(){
  
stdout.write("enter the number:");
int number = int.parse(stdin.readLineSync()!);

if(number%4 == 0 && number%6 == 0){
  print("QuadHex"); 
}
else if (number%4 == 0){
  print("Quad");

}
else if (number%6 == 0){
  print("Hex");
}
else{
  print("$number");
}
}