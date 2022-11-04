import 'package:flutter/material.dart';

class Page3 extends StatelessWidget {
  const Page3({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // final title = "Hello World!";

    const String intro =
        "        有時候在網路上聽到自己喜歡的音樂想下載時，總是會去找一些\"Mp3 轉換器\"的網"
        "站，但通常那些網站都會有速度慢、音質低、有病毒風險…等缺點，於是我就索性自己製"
        "作出一個 Mp3 下載器，讓自己能以高速度下載高音質的音樂，並且也避免了病毒的問題。";

    return Scaffold(
        appBar: AppBar(
          title: const Text("作品名稱：Mp3_Downloader"),
        ),
        body: Padding(
          padding: const EdgeInsets.only(
              top: 20
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              Text(
                "作品介紹",
                style: TextStyle(
                    fontSize: 32
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: 20,
                    right: 20,
                    left: 20
                ),
                child: Text(intro),
              ),
              Divider(
                height: 50,
                thickness: 2,
                indent: 20,
                endIndent: 20,
                color: Colors.black12,
              ),
              Text(
                "作品展示",
                style: TextStyle(
                    fontSize: 32
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(
                      top: 20,
                      right: 20,
                      left: 20
                  ),
                  child: Image(
                    image: AssetImage("images/pdf2png.png"),
                  )
              ),
            ],
          ),
        )
    );
  }
}