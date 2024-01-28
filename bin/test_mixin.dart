main(){
  var testMap = <int,String>{};
  testMap[1] = "a";
  testMap[2] = "b";
  testMap[3] = "c";
  print(testMap);
  testMap.forEach((key, value) {
    print('key = $key, value = $value');
  });
  testMap.update(1, (value) => value.toUpperCase());
  // testMap.removeWhere((key, value) => value.startsWith('a'));
  print(testMap);
  







  // var listTest = [];
  // listTest.add("a");
  // listTest.add("b");
  // listTest.add("c");
  // listTest.add("d");
  // var newList = listTest.map((e) => e.toString().toUpperCase());
  // listTest.forEach((element) {
  //   print(element);
  // });
  // newList.forEach((element) {
  //   print(element);
  // });

  // var setTest = <int>{};
  // setTest.add(1);
  // setTest.add(12);
  // setTest.add(13);
  // setTest.add(14);
  // print(setTest);
}
class Input with ValidationMixin{
  bool userInput(String password){
    return isValidPassword(password);
  }
}
mixin ValidationMixin{
  bool isValidPassword(String password){
    if(password.length >= 4){
      return true;
    }else{
      return false;
    }
  }
}