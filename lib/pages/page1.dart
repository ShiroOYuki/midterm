import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // final title = "Hello World!";

    const String intro =
        "        我製作這個工具的時間是在高中統測的前一個月，當時想要寫一些歷屆試題來當作最後的"
        "溫習，個人習慣用繪圖軟體直接將算式寫在電子檔的題目上，但繪圖軟體只能編輯圖片格"
        "式的檔案，而不能編輯 PDF，因此，我就製作出了這個小工具來協助我。";

    return Scaffold(
        appBar: AppBar(
          title: const Text("作品名稱：PDF2png"),
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