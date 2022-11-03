import 'package:flutter/material.dart';

class NoModRow extends StatefulWidget {
  const NoModRow({super.key});

  @override
  State<NoModRow> createState() => _NoModRowState();
}

class _NoModRowState extends State<NoModRow> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 130,
          height: (MediaQuery.of(context).size.height -
                  AppBar().preferredSize.height -
                  MediaQuery.of(context).padding.top) *
              0.2,
          margin: const EdgeInsets.only(top: 15.0, right: 25.0),
          child: ElevatedButton(
              // 이미지 있는 버튼으로 변경
              onPressed: () {
                print("걸음수 지정 산책 모드 클릭");
              },
              style: ElevatedButton.styleFrom(
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(40))),
                  primary: Colors.blue.shade100),
              child: const Text("걸음수 지정 산책 모드",
                  style: TextStyle(color: Colors.black87))),
        ),
        Container(
          width: 130,
          height: (MediaQuery.of(context).size.height -
                  AppBar().preferredSize.height -
                  MediaQuery.of(context).padding.top) *
              0.2,
          margin: const EdgeInsets.only(left: 25.0, top: 15.0),
          child: ElevatedButton(
              // 이미지 있는 버튼으로 변경
              onPressed: () {
                print("가벼운 산책 모드 클릭");
              },
              style: ElevatedButton.styleFrom(
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(40))),
                  primary: Colors.blue.shade100),
              child: const Text("가벼운 산책 모드",
                  style: TextStyle(color: Colors.black87))),
        )
      ],
    );
  }
}
