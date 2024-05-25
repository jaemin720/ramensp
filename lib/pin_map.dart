import 'package:flutter/material.dart';

class PinMapPage extends StatefulWidget {
  const PinMapPage({Key? key});

  @override
  _PinMapPageState createState() => _PinMapPageState();
}

class _PinMapPageState extends State<PinMapPage> {
  String selectedDistrict = ''; // 선택한 구를 저장할 변수
  TextEditingController postItController = TextEditingController(); // 포스트잇 내용을 입력받는 컨트롤러

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 6, // 탭 개수를 6개로 변경
        child: Scaffold(
          appBar: AppBar(
            title: Text('Daejeon Map'),
            bottom: TabBar(
              tabs: [
                Tab(text: '유성구'),
                Tab(text: '대덕구'),
                Tab(text: '서구'),
                Tab(text: '중구'),
                Tab(text: '동구'),
                Tab( // 플러스 이모티콘을 추가하여 새 페이지로 이동
                  child: Icon(Icons.add),
                ),
              ],
              onTap: (index) {
                // 사용자가 탭을 선택했을 때 해당 구를 저장
                setState(() {
                  if (index < 5) {
                    selectedDistrict = ['유성구', '대덕구', '서구', '중구', '동구'][index];
                  } else {
                    selectedDistrict = ''; // "+" 탭 선택 시 선택한 구 초기화
                    Navigator.push( // "+" 탭 선택 시 새 페이지로 이동
                      context,
                      MaterialPageRoute(builder: (context) => AddPostItPage()),
                    );
                  }
                });
              },
            ),
          ),
          body: TabBarView(
            children: [
              _buildTabContent('assets/유성.png'),
              _buildTabContent('assets/대덕.png'),
              _buildTabContent('assets/서구.png'),
              _buildTabContent('assets/중구.png'),
              _buildTabContent('assets/동구.png'),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTabContent(String insideImagePath) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(height: 20),
        Container(
          width: 400, // 판의 너비
          height: 300, // 판의 높이
          decoration: BoxDecoration(
            color: Colors.white, // 배경 색상 흰색
            border: Border.all(
              color: Colors.black,
              width: 2.0,
            ),
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: Center(
            child: Image.asset(
              insideImagePath,
              width: 900, // 내부 이미지의 너비
              height: 900, // 내부 이미지의 높이
            ),
          ),
        ),
        // 필요에 따라 아래에 다른 위젯을 추가할 수 있음
      ],
    );
  }
}

class AddPostItPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Post-It'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '포스트잇을 추가하세요!',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),
            // 포스트잇 추가 UI 및 로직 구현
          ],
        ),
      ),
    );
  }
}