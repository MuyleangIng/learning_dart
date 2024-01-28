main(){
  var text = Text();
  text.render();
  text.build();
}
abstract class StatefulWidget{
  void render(){
    print('rendering');
  }
  void build(){
    print('building');
  }
}
class Text extends StatefulWidget{
  @override
  void render(){
    print('rendering text');
  }
  @override
  void build(){
    print('building text');
  }
}