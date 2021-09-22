import 'package:flutter/material.dart';

// 기본 메인 프로그램
// 앱 시작 부분
void main() = > runApp(MyApp());

// 시작 클래스. 머티리얼 디자인 앱 생성
class MyApp extends StatelessWidget {
@override
Widget build(BuildContext context) {
return MaterialApp(
title: 'App title',
theme: ThemeData(
primarySwatch: Colors.blue,
),
home: MyHome(
	title: '화면 표시 타이틀'
), // 표시할 화면의 인스턴스
);  // end of function MaterialApp
} // end of build function
} // end of class

// 시작 클래스가 실제로 표시하는 클래스. 카운터 앱 화면
class MyHome extends StatefulWidget {
MyHome({Key key, this.title}): super(key: key);
final String title;
@override
_MyHomeState createState() => _MyHomeState();
}

// 위 MyHomePage 클래스의 상태를 나타내는 State 클래스
class _MyHomeState extends State<MyHome> {
int _counter = 0; // 화면에 표시할 상탯값인 카운터 숫자
// counter 변수를 1 증가시키고 화면을 다시 그리는 메서드
void _incrementCounter() {
setState(() { // 화면을 다시 그리도록 하는 함수. StatefulWidget만 가능, 자동으로 build 메소드 실행해 줌.
_counter++;
});
}

// 화면에 UI를 그리는 메서드. 그려질 위젯을 반환
@override
Widget build(BuildContext context) {
return Scaffold( // 머티리얼 디자인 기본 뼈대 위젯
appBar: AppBar( // 상단 앱바
title: Text(widget.title),
),
body: Center( // 표시할 내용
child: Column(
mainAxisAlignment: MainAxisAlignment.center,
children: <Widget>[
Text(
'You have pushed the button this many times:',
),
Text(
'$_counter', // _counter 변수를 표시
style: Theme.of(context).textTheme.display1,
),
],
),
),
floatingActionButton: FloatingActionButton(
onPressed: _incrementCounter, // 클릭 시 _incrementCounter() 메서드 실행
tooltip: 'Increment',
child: Icon(Icons.add), // 상단 앱바
),
);
}
}
