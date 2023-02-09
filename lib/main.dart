// import 'package:flutter/material.dart';
// // import 'custom_clipper.dart'; //背景组件
// // import 'page1.dart'; //页面1

// void main() {
//   runApp(
//     MaterialApp(
//       title："导航演示1"，
//       home: new FirstScreen()
//     ) 
//   );
// }  

// class MyApp extends StatelessWidget {
//   @Override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: HomePage()
//     );  
//   }
// } 









// import 'package:flutter/material.dart';

// void mian()=>runApp(MyApp());

// class MyApp extends StatelessWidget{
//   @override
//   Widget build(BuildContext context){
//     return MaterialApp(
//       title:'Welcome to Flutter',
//       home:Scaffold(
//         appBar:AppBar(
//           title:Text('Hello Word'),
//         ),//AppBar
//         body:Center(
//           child:Text('Hello Word!'),
//         )
//       )
//     );
//   }

// }

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';//

// void main() => runApp(Myapp());//在界面显示

void main(){//不返回任何类型
  runApp(Myapp());//在界面显示
}

//class Myapp extends StatelessWidget{//小部件，无法使用内部数据，只能在第一次被创建调用build方法
class Myapp extends StatefulWidget{//小部件数据，可改变，只能在第一次被创建调用build方法
@override
  State<StatefulWidget> createState() {//返回状态的对象
    // TODO: implement createState
    return _MyappState();
  }
}
//////////////////////////////
// class FlutterCardWidget extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       color: Colors.blueAccent,
//       //z轴的高度，设置card的阴影
//       elevation: 20.0,
//       //设置shape，这里设置成了R角
//       shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.all(Radius.circular(20.0)),),
//       //对Widget截取的行为，比如这里 Clip.antiAlias 指抗锯齿
//       clipBehavior: Clip.antiAlias,
//       semanticContainer: false,
//       child: getChild(),
//     );
//   }
////////////////////
///

// class Myapp extends StatefulWidget{//小部件数据，可改变，只能在第一次被创建调用build方法
// @override
//   State<StatefulWidget> createState() {//返回状态的对象
//     // TODO: implement createState
//     return _MyappState();
//   }
// }

// class SelectView(IconData icon, String text, String id) {
//   @Overflow
//          return new PopupMenuItem<String>(
//                   value: id,
//                   child: new Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                       children: <Widget>[
//                           new Icon(icon, color: Colors.blue),
//                           new Text(text),
//                       ],
//                   )
//           );
//         }


class _MyappState extends State<Myapp>{// _ 只能在此文件中使用，私有的
  List<String> news = ['first'];
  @override
  Widget build(BuildContext context){//返回类型为widght的小部件
    return Container(
      child:MaterialApp(

        home: Scaffold(
          backgroundColor: Colors.white,
        
        //

         appBar: AppBar(
           title: Text('我的 e 站'),

          leading: new Icon(Icons.arrow_back_ios),
             backgroundColor: Colors.pink[400],
              centerTitle: true,
              actions: <Widget>[
                // 非隐藏的菜单
                // new IconButton(
                //     icon: new Icon(Icons.add_alarm),
                //     tooltip: 'Add Alarm',
                //     onPressed: () {}
                // ),
                // 隐藏的菜单
                new PopupMenuButton<String>(
                    itemBuilder: (BuildContext context) => <PopupMenuItem<String>>[
                        // this.SelectView(Icons.message, '发起群聊', 'A'),
                        // this.SelectView(Icons.group_add, '添加服务', 'B'),
                        // this.SelectView(Icons.cast_connected, '扫一扫码', 'C'),
                    ],
                    onSelected: (String action) {
                        // 点击选项的时候
                        switch (action) {
                            case 'A': break;
                            case 'B': break;
                            case 'C': break;
                        }
                    },
                ),

                
            ],

        ),
//////////////////////////////
        

        // appBar: AppBar(
        //     title: new Text('首页'),
        //     leading: new Icon(Icons.home),
        //     backgroundColor: Colors.blue,
        //     centerTitle: true,
        //     actions: <Widget>[
        //         // 非隐藏的菜单
        //         new IconButton(
        //             icon: new Icon(Icons.add_alarm),
        //             tooltip: 'Add Alarm',
        //             onPressed: () {}
        //         ),
        //         // 隐藏的菜单
        //         new PopupMenuButton<String>(
        //             itemBuilder: (BuildContext context) => <PopupMenuItem<String>>[
        //                 this.SelectView(Icons.message, '发起群聊', 'A'),
        //                 this.SelectView(Icons.group_add, '添加服务', 'B'),
        //                 this.SelectView(Icons.cast_connected, '扫一扫码', 'C'),
        //             ],
        //             onSelected: (String action) {
        //                 // 点击选项的时候
        //                 switch (action) {
        //                     case 'A': break;
        //                     case 'B': break;
        //                     case 'C': break;
        //                 }
        //             },
        //         ),
        //     ],
        // ),
///////////////////////////////////
///

    //关键代码
 
      




        ///////////////////
        body: Column(

          


          children: <Widget>[

            Column(children: news.map((Element) => Card(
              child: Column(
                children: <Widget>[
                  Image.asset(
                    'assets/7e1.png',
                    width: 280,
                    // scale: 1000,
                  ),//调用图片组件
                  Text(
                    '本站介绍',
                    style: new TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                  
                  Image.asset(
                    'assets/7e2.png',
                    width:280,
                    // height:1000,
                  ),//调用图片组件
                  Text('通知公告')
                ],
              ),
            ),   
            ).toList(),
            ),
                       
          
            // Card(
            //   child: Column(
            //     children: <Widget>[
            //       Image.asset('assets/7e2.png'),//调用图片组件
            //       Text('通知公告')
            //     ],
            //   ),
            // ),
            
            // Container(
            //   margin: EdgeInsets.all(10.0),//按钮边距
            //   child: RaisedButton(
            //    child: Text('公示信息'),
            //    onPressed: (){},//带有背景的按钮
            //   ),
            // ),

            // Container(
            //   margin: EdgeInsets.all(10.0),//按钮边距
            //   child: RaisedButton(
            //    child: Text('本站信息'),
            //    onPressed: (){},//带有背景的按钮
            //   ),
            // ),

            // RaisedButton(
            //   textTheme: ButtonTextTheme.accent,
            //     color: Colors.pink[400],
            //     highlightColor: Colors.pink[600],
            //     // splashColor: Colors.deepOrangeAccent,
            //     splashColor: Colors.pink[600],
            //     colorBrightness: Brightness.dark,
            //     // elevation: 50.0,
            //     // highlightElevation: 100.0,
            //     // disabledElevation: 20.0,
            //       onPressed: () {
            //         //TODO
            //       },
            //     child: Text(
            //       '公示信息',
            //       style: TextStyle(color: Colors.white, fontSize: 10),
            //   ),
            // ),
            
            // RaisedButton(
            //   textTheme: ButtonTextTheme.accent,
            //     color: Colors.pink[400],
            //     highlightColor: Colors.pink[600],
            //     // splashColor: Colors.deepOrangeAccent,
            //     splashColor: Colors.pink[600],
            //     colorBrightness: Brightness.dark,
            //     // elevation: 50.0,
            //     // highlightElevation: 100.0,
            //     // disabledElevation: 20.0,
            //       onPressed: () {
            //         //TODO
            //       },
            //     child: Text(
            //       '本站信息',
            //       style: TextStyle(color: Colors.white, fontSize: 10),
            //   ),
            // ),

            Card(
              child: Column(
                children: <Widget>[
                  // Image.asset('assets/7e2.png'),//调用图片组件
                  Text(
                    '                                                                          ',),
                  Text(
                    '信息                                                                      ',
                    style: TextStyle(
                      color: Colors.grey,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ],
              ),
              
            ),

            // Expanded(
            //       child: new Container(
            //         alignment: Alignment.center,
            //       ),
            //     ), //居中 

            new ButtonBar(
              children: <Widget>[
                            
                // new CloseButton(),
                // new BackButton(), 
                RaisedButton(
                textTheme: ButtonTextTheme.accent,
                  color: Colors.pink[400],
                  highlightColor: Colors.pink[600],
                  // splashColor: Colors.deepOrangeAccent,
                  splashColor: Colors.pink[600],
                  colorBrightness: Brightness.dark,
                  // elevation: 20,
                  // highlightElevation: 100,
                  // disabledElevation: 50,
                    onPressed: () {
                      //TODO
                    },
                  child: Text(
                    '                公示信息                ',
                    style: TextStyle(color: Colors.white, fontSize: 10),
                ),
              ),
              
              RaisedButton(
                textTheme: ButtonTextTheme.accent,
                  color: Colors.pink[400],
                  highlightColor: Colors.pink[600],
                  // splashColor: Colors.deepOrangeAccent,
                  splashColor: Colors.pink[600],
                  colorBrightness: Brightness.dark,
                  // elevation: 50.0,
                  // highlightElevation: 100.0,
                  // disabledElevation: 20.0,
                    onPressed: () {
                      //TODO
                    },
                  child: Text(
                    '                本站信息                ',
                    style: TextStyle(color: Colors.white, fontSize: 10),
                ),
               ),
              ],
            ),


            Container(
              padding: EdgeInsets.symmetric(horizontal: 4.0, vertical: 2.0),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.indigo[800], width: 5.0),
                  borderRadius: BorderRadius.circular(3.0)),
              child: Text(
                'de',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 50,

                ),
                
              )
            ),


            Center(
                  child: Text(
                    '中国移动应用',
                    style: TextStyle(color: Colors.white, fontSize: 10),
                  ),
                ),

            Center(
                  child: Text(
                    '中国移动应用',
                    style: TextStyle(color: Colors.indigo[800], fontSize: 10),
                  ),
                )
            
            // Text(
            //       '中国移动应用',
            //         style: TextStyle(color: Colors.blue, fontSize: 10)

          ],

        )  
      ),
    ),
    );//返回核心根小部件，构造器，赋予参数绘制到屏幕
  }

  width() {}
}




/////////////////////////////////////////////////////

// import 'package:flutter/material.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         // This is the theme of your application.
//         //
//         // Try running your application with "flutter run". You'll see the
//         // application has a blue toolbar. Then, without quitting the app, try
//         // changing the primarySwatch below to Colors.green and then invoke
//         // "hot reload" (press "r" in the console where you ran "flutter run",
//         // or simply save your changes to "hot reload" in a Flutter IDE).
//         // Notice that the counter didn't reset back to zero; the application
//         // is not restarted.
//         primarySwatch: Colors.blue,
//       ),
//       home: MyHomePage(title: 'Flutter Demo Home Page'),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   MyHomePage({Key key, this.title}) : super(key: key);

//   // This widget is the home page of your application. It is stateful, meaning
//   // that it has a State object (defined below) that contains fields that affect
//   // how it looks.

//   // This class is the configuration for the state. It holds the values (in this
//   // case the title) provided by the parent (in this case the App widget) and
//   // used by the build method of the State. Fields in a Widget subclass are
//   // always marked "final".

//   final String title;

//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {
//       // This call to setState tells the Flutter framework that something has
//       // changed in this State, which causes it to rerun the build method below
//       // so that the display can reflect the updated values. If we changed
//       // _counter without calling setState(), then the build method would not be
//       // called again, and so nothing would appear to happen.
//       _counter = _counter + 2;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     // This method is rerun every time setState is called, for instance as done
//     // by the _incrementCounter method above.
//     //
//     // The Flutter framework has been optimized to make rerunning build methods
//     // fast, so that you can just rebuild anything that needs updating rather
//     // than having to individually change instances of widgets.
//     return Scaffold(
//       appBar: AppBar(
//         // Here we take the value from the MyHomePage object that was created by
//         // the App.build method, and use it to set our appbar title.
//         title: Text(widget.title),
//       ),
//       body: Center(
//         // Center is a layout widget. It takes a single child and positions it
//         // in the middle of the parent.
//         child: Column(
//           // Column is also layout widget. It takes a list of children and
//           // arranges them vertically. By default, it sizes itself to fit its
//           // children horizontally, and tries to be as tall as its parent.
//           //
//           // Invoke "debug painting" (press "p" in the console, choose the
//           // "Toggle Debug Paint" action from the Flutter Inspector in Android
//           // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
//           // to see the wireframe for each widget.
//           //
//           // Column has various properties to control how it sizes itself and
//           // how it positions its children. Here we use mainAxisAlignment to
//           // center the children vertically; the main axis here is the vertical
//           // axis because Columns are vertical (the cross axis would be
//           // horizontal).
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Text(
//               'You have pushed the button this many times:',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.display1,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: Icon(Icons.add),
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }
////////////////////////////////////////////////////////////////