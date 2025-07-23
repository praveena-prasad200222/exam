


void main(){
  List<int> n = [12, 45, 7, 89, 23];
  int largest =n[0];
  for(int i=1 ;i< n.length;i++){
    if(n[i]>largest){
      largest = n[i];
      
    }
   
  }
  print(largest);
}