
List<int> lottoNumber(){

  var number = (List.generate(45,(index) => ++index)..shuffle()).sublist(0,6);  //++index 전위연산자 : 1을 더한 후에 값을 출력

  print('당첨번호');
  print(number);

  return number;
}

List<int> myNumber(){

  var number2 = (List.generate(45,(index) => ++index)..shuffle()).sublist(0,6);

  print('내 추첨번호');
  print(number2);

  return number2;
}

void checkNumber(List<int> number, List<int> number2){

  int match = 0;

  for(int lotto in number){
    for(int myNum in number2){

      if(lotto == myNum){
        match++;
        print('당첨번호: $myNum');
      }
      //print('로또번호 = $lotto');
      //print('내 추첨번호 = $myNum');
    }
  }
  print('$match개의 당첨번호가 있습니다!');
}

void main(){

  List<int>lottoFinal = lottoNumber();
  List<int>myFinal = myNumber();

  checkNumber(lottoFinal, myFinal);
}