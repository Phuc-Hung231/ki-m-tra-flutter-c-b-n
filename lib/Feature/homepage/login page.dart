import 'package:flutter/material.dart';

class LogInPage extends StatefulWidget {
  const LogInPage({super.key});

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  bool isShow = true; // ẩn hiện password
  final TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus(); // onTap ra ngoài là ẩn bàn phím
          },
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            constraints: const BoxConstraints.expand(),
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                    'assets/image/techmaster_black.png'), // ảnh techmaster
                Container(
                  // username
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 50),
                  child: const TextField(
                    style: TextStyle(fontSize: 18, color: Colors.black),
                    decoration: InputDecoration(
                      labelText: "Username",
                      labelStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
                Stack(
                    // password & button eyes
                    alignment: AlignmentDirectional.centerEnd,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 0, 40),
                        child: TextField(
                          style: const TextStyle(
                              fontSize: 18, color: Colors.black),
                          obscureText: isShow,
                          decoration: const InputDecoration(
                              labelText: "Password",
                              labelStyle: TextStyle(
                                  color: Colors.black54,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold)),
                        ),
                      ),
                      GestureDetector(
                          onTap: () {
                            setState(() {
                              isShow = !isShow;
                            });
                          },
                          child: isShow
                              ? Image.asset(
                                  'assets/image/open eyes.png',
                                  width: 24,
                                )
                              : Image.asset(
                                  'assets/image/eye.png',
                                  width: 24,
                                )),
                    ]),
                Container(
                  // button login
                  width: MediaQuery.of(context).size.width,
                  color: const Color.fromARGB(255, 49, 148, 230),
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Đăng nhập",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
