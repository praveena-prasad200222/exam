

void main(){
  List<int> numbers = [5, 15, 25, 35, 45];
  int sum =0;
  for(int i = 0; i < numbers.length; i++){
    sum = sum + numbers[i];

  }
  double average = sum / numbers.length;
  print(average);

}