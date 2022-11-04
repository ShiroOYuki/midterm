import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:audioplayers/audioplayers.dart';
import './pages/page1.dart';
import './pages/page2.dart';
import './pages/page3.dart';

final player = AudioPlayer();


class MyWeb extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Github"),
      ),
      body: const WebView(
        initialUrl: 'https://github.com/ShiroOYuki?tab=repositories',
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => MyPage();
}

class MyPage extends State<MyApp> with WidgetsBindingObserver {

  @override
  Widget build(BuildContext context) {
    player.play(AssetSource("bgMusic.mp3"));
    player.setReleaseMode(ReleaseMode.loop);
    debugPrint("Hello World!!!!!!!!!!!!!!!!!!!!!!!");
    return MaterialApp(
        home: MainPage()
    );
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state){
    switch (state){
      case AppLifecycleState.paused:
        player.pause();
        debugPrint("Pause");
        break;
      case AppLifecycleState.resumed:
        player.resume();
        debugPrint("Resumed");
        break;
    }
  }

  @override
  void initState(){
    super.initState();
    WidgetsBinding.instance?.addObserver(this);
  }
}

class MainPage extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // final title = "Hello World!";

    const String intro = "        從小時候就一直沒有接觸到太多3C產品的我，"
        "在升上高中第一次接觸程式設計後，就對其抱有非常大的興趣與熱誠。在一次又一次地完"
        "成作品後，更是大大的提升了我的熱誠以及自信心，同時也讓我對這門專業有越來越大的"
        "興趣、想要涉略更多。";

    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
                title: const Text("Autobiography (Midterm)"),
            ),
            body: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 20
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  height: 150,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          width: 3
                                      )
                                  ),
                                  child: const Image(
                                    image: AssetImage("images/photo.jpg"),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                SizedBox(
                                  height: 200,
                                  width: 200,
                                  child: ListView(
                                    padding: const EdgeInsets.only(
                                        top: 40,
                                        left: 40
                                    ),
                                    children: const [
                                      SizedBox(
                                        height: 50,
                                        child: Text("- 姓名：卓楷倫"),
                                      ),
                                      SizedBox(
                                        height: 50,
                                        child: Text("- 班級：四資工一甲"),
                                      ),
                                      SizedBox(
                                        height: 50,
                                        child: Text("- 學號：C111151115"),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                    const Divider(
                      height: 50,
                      thickness: 2,
                      indent: 20,
                      endIndent: 20,
                      color: Colors.black12,
                    ),
                    const Text(
                      "自傳",
                      style: TextStyle(
                          fontSize: 32
                      ),
                    ),

                    Container(
                      margin: const EdgeInsets.only(
                          top: 30,
                          left: 30,
                          right: 30
                      ),
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.black45,
                              width: 3
                          ),
                          borderRadius: const BorderRadius.all(
                              Radius.circular(10)
                          )
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(10),
                        child: Text(intro),
                      ),
                    ),
                    const Divider(
                      height: 50,
                      thickness: 2,
                      indent: 20,
                      endIndent: 20,
                      color: Colors.black12,
                    ),
                    const Text(
                      "作品集",
                      style: TextStyle(
                          fontSize: 32
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top:30
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                            children: [
                              ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      minimumSize: const Size(100, 40)
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => const Page1())
                                    );
                                  },
                                  child: const Text("精選作品 1")
                              ),
                              ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      minimumSize: const Size(100, 40)
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => const Page2())
                                    );
                                  },
                                  child: const Text("精選作品 2")
                              ),
                              ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      minimumSize: const Size(100, 40)
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => const Page3())
                                    );
                                  },
                                  child: const Text("精選作品 3")
                              )
                            ],
                          ),
                          Padding(
                              padding: const EdgeInsets.only(
                                  top:15
                              ),
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      minimumSize: const Size(356, 40)
                                  ),
                                  onPressed:  () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => MyWeb())
                                    );
                                  },
                                  child: const Text("其他作品(My Github page)")
                              )
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            )
        )
    );
  }
}