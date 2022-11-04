import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // final title = "Hello World!";

    const String intro =
        "        這是一個 ASCII Art 產生器，ASCII Art 指的是用字元來表達圖片，會製作這個產生器"
        "是因為當時在網路上看到這種圖片時覺得非常特別，於是就萌生出自己做做看的想法。";

    return Scaffold(
        appBar: AppBar(
          title: const Text("作品名稱：Ascii_Art"),
        ),
        body: Padding(
          padding: const EdgeInsets.only(
              top: 20
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Text(
                "作品介紹",
                style: TextStyle(
                    fontSize: 32
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(
                    top: 20,
                    right: 20,
                    left: 20
                ),
                child: Text(intro),
              ),
              const Divider(
                height: 50,
                thickness: 2,
                indent: 20,
                endIndent: 20,
                color: Colors.black12,
              ),
              const Text(
                "作品展示",
                style: TextStyle(
                    fontSize: 32
                ),
              ),
              const Padding(
                  padding: EdgeInsets.only(
                      top: 20,
                      right: 20,
                      left: 20
                  ),
                  child: Image(
                    image: AssetImage("images/asciiart.png"),
                  )
              ),
              Padding(
                  padding: const EdgeInsets.only(
                      top: 20,
                      right: 20,
                      left: 20
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.red,
                          width: 5
                        ),
                      borderRadius: const BorderRadius.all(
                          Radius.circular(5)
                      )
                    ),
                    child: const Image(
                      image: AssetImage("images/asciiart2.png"),
                    ),
                  )
              ),
            ],
          ),
        )
    );
  }
}