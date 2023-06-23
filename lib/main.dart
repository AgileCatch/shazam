import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shazam',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 3,
      child: Builder(builder: (context) {
        DefaultTabController.of(context)?.addListener(() {
          setState(() {});
        });

        return Scaffold(
          body: Stack(
            children: [
              TabBarView(
                children: [
                  FirstTab(),
                  SecondTab(),
                  ThirdTab(),
                ],
              ),
              SafeArea(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
                  child: Column(
                    children: [
                      Container(
                        alignment: Alignment.topCenter,
                        child: TabPageSelector(
                          color: DefaultTabController.of(context)?.index == 1
                              ? Colors.blue[300]
                              : Colors.grey[400],
                          selectedColor:
                              DefaultTabController.of(context)?.index == 1
                                  ? Colors.white
                                  : Colors.blue,
                          indicatorSize: 8,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      }),
    );
  }
}

// 첫번째 페이지
class FirstTab extends StatelessWidget {
  const FirstTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const songs = [
      {
        'imageUrl': 'https://i.ytimg.com/vi/jAO0KXRdz_4/hqdefault.jpg',
        'title': '가을밤에 든 생각',
        'artist': '잔나비',
      },
      {
        'imageUrl': 'https://i.ytimg.com/vi/jAO0KXRdz_4/hqdefault.jpg',
        'title': '가을밤에 든 생각',
        'artist': '잔나비',
      },
      {
        'imageUrl': 'https://i.ytimg.com/vi/jAO0KXRdz_4/hqdefault.jpg',
        'title': '가을밤에 든 생각',
        'artist': '잔나비',
      },
      {
        'imageUrl': 'https://i.ytimg.com/vi/jAO0KXRdz_4/hqdefault.jpg',
        'title': '가을밤에 든 생각',
        'artist': '잔나비',
      },
      {
        'imageUrl': 'https://i.ytimg.com/vi/jAO0KXRdz_4/hqdefault.jpg',
        'title': '가을밤에 든 생각',
        'artist': '잔나비',
      },
      {
        'imageUrl': 'https://i.ytimg.com/vi/jAO0KXRdz_4/hqdefault.jpg',
        'title': '가을밤에 든 생각',
        'artist': '잔나비',
      },
    ];

    return SafeArea(
      child: Column(
        children: [
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.settings),
              ),
              Expanded(
                child: Text(
                  '라이브러리',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  textAlign: TextAlign.center, // 텍스트 가운데정렬
                ),
              ),
              Icon(
                Icons.settings,
                color: Colors.white,
              ),
            ],
          ),
          SizedBox(width: 8),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              children: [
                Image.network(
                  //투명박스안에 로고이미지를 넣어줌
                  "https://i.ibb.co/hxNbZ8p/shazam.png",
                  width: 20,
                  height: 20,
                ),
                SizedBox(
                  height: 10,
                  width: 10,
                ),
                Text(
                  'Shazam',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.92,
            child: Divider(
              color: Colors.grey,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              children: [
                Icon(Icons.person),
                SizedBox(
                  width: 20,
                ),
                Text(
                  '아티스트',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.92,
            child: Divider(
              color: Colors.grey,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              children: [
                Icon(
                  Icons.music_note,
                  weight: 20,
                ),
                SizedBox(
                  height: 10,
                  width: 10,
                ),
                Text(
                  '회원님을 위한 재생목록',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.92,
            child: Divider(
              color: Colors.grey,
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(15),
                child: Text(
                  '최근  Shazam',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
          Row(
            children: [
              Column(
                children: [],
              ),
            ],
          )
        ],
      ),
    );
  }
}

// 두번째 페이지
class SecondTab extends StatelessWidget {
  const SecondTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Colors.blue[300]!, Colors.blue[900]!],
        ),
      ),
      child: SafeArea(
        child: Column(
          children: [
            //상단의 탭을 선택하기위한 아이콘과 텍스트
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
              child: Row(
                children: [
                  GestureDetector(
                    //라이브러리탭을선택하면 해당탭으로 전환할 수 있도록해줌
                    onTap: () {
                      DefaultTabController.of(context).animateTo(0);
                    },
                    child: Column(
                      children: [
                        Icon(
                          Icons.person,
                          color: Colors.white,
                        ),
                        Text(
                          "라이브러리",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ),
                  Spacer(),
                  GestureDetector(
                    onTap: () {
                      //차트탭을 선택하면 탭을 전환
                      DefaultTabController.of(context).animateTo(2);
                    },
                    child: Column(
                      children: [
                        Icon(
                          Icons.show_chart,
                          color: Colors.white,
                        ),
                        Text(
                          "차트",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.1), //투명박스
            Text(
              "Shazam하려면 탭하세요",
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.06),
            Container(
              //로고이미지
              alignment: Alignment.center,
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                color: Colors.blue[300],
                shape: BoxShape.circle,
              ),
              child: Image.network(
                //투명박스안에 로고이미지를 넣어줌
                "https://i.ibb.co/hxNbZ8p/shazam.png",
                color: Colors.white,
                width: 130,
                height: 130,
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.12), //투명박스
            Container(
              width: 50,
              height: 50,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.blue[400],
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.search,
                color: Colors.white,
                size: 30,
              ),
            )
          ],
        ),
      ),
    );
  }
}

// 세번째 페이지
class ThirdTab extends StatelessWidget {
  const ThirdTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const chartData = {
      'korea': [
        {
          'imageUrl': 'https://i.ibb.co/xf2HpfG/dynamite.jpg',
          'name': 'Dynamite',
          'artist': 'BTS',
        },
        {
          'imageUrl': 'https://i.ibb.co/xf2HpfG/dynamite.jpg',
          'name': 'Dynamite',
          'artist': 'BTS',
        },
        {
          'imageUrl': 'https://i.ibb.co/xf2HpfG/dynamite.jpg',
          'name': 'Dynamite',
          'artist': 'BTS',
        },
      ],
      'global': [
        {
          'imageUrl': 'https://i.ibb.co/xf2HpfG/dynamite.jpg',
          'name': 'Dynamite',
          'artist': 'BTS',
        },
        {
          'imageUrl': 'https://i.ibb.co/xf2HpfG/dynamite.jpg',
          'name': 'Dynamite',
          'artist': 'BTS',
        },
        {
          'imageUrl': 'https://i.ibb.co/xf2HpfG/dynamite.jpg',
          'name': 'Dynamite',
          'artist': 'BTS',
        },
      ],
      'newyork': [
        {
          'imageUrl': 'https://i.ibb.co/xf2HpfG/dynamite.jpg',
          'name': 'Dynamite',
          'artist': 'BTS',
        },
        {
          'imageUrl': 'https://i.ibb.co/xf2HpfG/dynamite.jpg',
          'name': 'Dynamite',
          'artist': 'BTS',
        },
        {
          'imageUrl': 'https://i.ibb.co/xf2HpfG/dynamite.jpg',
          'name': 'Dynamite',
          'artist': 'BTS',
        },
      ],
    };

    return SafeArea(
      child: Column(
        children: [
          Text(
            '차트',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.03),
          Expanded(
            child: ListView(
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      width: double.infinity,
                      height: 180,
                      color: Colors.purple[900],
                    ),
                    Column(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.8,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.white),
                            ),
                            child: Text(
                              '국가 및 도시별 차트',
                              style: TextStyle(
                                color: Colors.purple[900],
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        Text(
                          '전 세계',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                Container(
                  height: 7,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.grey,
                ),
                Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 1,
                          child: Padding(
                            padding: const EdgeInsets.all(9.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  '대한민국 차트',
                                  style: TextStyle(fontSize: 17),
                                ), //글꼴크기조절
                                Text(
                                  '모두보기',
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.blue),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            ...chartData['korea']!.map(
                              (song) {
                                String imageUrl = song['imageUrl']!;
                                String name = song['name']!;
                                String artist = song['artist']!;

                                return Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment
                                        .start, // 텍스트를 왼쪽 정렬로 설정
                                    children: [
                                      Image.network(
                                        imageUrl,
                                        width: 120,
                                        height: 120,
                                      ),
                                      Text(
                                        name,
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(artist),
                                    ],
                                  ),
                                );
                              },
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
                Container(
                  height: 7,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.grey,
                ),
                Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 1,
                          child: Padding(
                            padding: const EdgeInsets.all(9.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  '글로벌 차트',
                                  style: TextStyle(fontSize: 17),
                                ), //글꼴크기조절
                                Text(
                                  '모두보기',
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.blue),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            ...chartData['global']!.map(
                              (song) {
                                String imageUrl = song['imageUrl']!;
                                String name = song['name']!;
                                String artist = song['artist']!;

                                return Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment
                                        .start, // 텍스트를 왼쪽 정렬로 설정
                                    children: [
                                      Image.network(
                                        imageUrl,
                                        width: 120,
                                        height: 120,
                                      ),
                                      Text(
                                        name,
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(artist),
                                    ],
                                  ),
                                );
                              },
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
                Container(
                  height: 7,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.grey,
                ),
                Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 1,
                          child: Padding(
                            padding: const EdgeInsets.all(9.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  '뉴욕 차트',
                                  style: TextStyle(fontSize: 17),
                                ), //글꼴크기조절
                                Text(
                                  '모두보기',
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.blue),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            ...chartData['newyork']!.map(
                              (song) {
                                String imageUrl = song['imageUrl']!;
                                String name = song['name']!;
                                String artist = song['artist']!;

                                return Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment
                                        .start, // 텍스트를 왼쪽 정렬로 설정
                                    children: [
                                      Image.network(
                                        imageUrl,
                                        width: 120,
                                        height: 120,
                                      ),
                                      Text(
                                        name,
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(artist),
                                    ],
                                  ),
                                );
                              },
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
