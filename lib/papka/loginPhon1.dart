import 'package:flutter/material.dart';
import 'package:umar_azizov/papka/konsultatsia.dart';
import 'package:umar_azizov/papka/Zaregistirvni.dart';
import 'package:umar_azizov/papka/otpravitnowkod.dart';

void main() {
  runApp(LoginScreen());
}

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool chashmak = true, chashmak2 = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
             title: Center(
               child: Image.asset("images/Logo (2).png",
                width: MediaQuery.of(context).size.width*9.0,
               ),
             ),

          ),
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
            child: Column(
              children: [
                Image.asset(
                  "images/image 134.png",
                  // height: 150,
                ),
                SizedBox(height: 20),
                const TabBar(
                  indicatorColor: Colors.blue,
                  labelColor: Colors.blue,
                  labelStyle: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 21,
                  ),
                  unselectedLabelColor: Colors.black,
                  unselectedLabelStyle: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 20,
                  ),
                  tabs: [
                    Tab(text: "Телефон"),
                    Tab(text: "Email"),
                  ],
                ),
                SizedBox(
                  height: 240,
                  child: TabBarView(
                    children: [
                      Column(
                        children: [
                          SizedBox(height: 30),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 10),
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                labelText: "Введите номер",
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 10),
                            child: TextField(
                              obscureText: chashmak,
                              decoration: InputDecoration(
                                suffixIcon: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      chashmak = !chashmak;
                                    });
                                  },
                                  icon: chashmak
                                      ? Icon(Icons.visibility_sharp)
                                      : Icon(Icons.visibility_off_sharp),
                                ),
                                border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                                labelText: "Пароль",
                              ),
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Otpravitnowkod(),
                                ),
                              );
                            },
                            child: const Text(
                              "Забыли пароль?",
                              style: TextStyle(
                                color: Colors.blue,
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          const SizedBox(height: 30),
                           Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 10),
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                                labelText: "Email",
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 10),
                            child: TextField(
                              obscureText: chashmak2,
                              decoration: InputDecoration(
                                suffixIcon: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      chashmak2 = !chashmak2;
                                    });
                                  },
                                  icon: chashmak2
                                      ? Icon(Icons.visibility_sharp)
                                      : Icon(Icons.visibility_off),
                                ),
                                border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                                labelText: "Пароль",
                              ),
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Otpravitnowkod()));
                            },
                            child: const Text(
                              "Забыли пароль?",
                              style: TextStyle(
                                color: Colors.blue,
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize:
                        Size(MediaQuery.of(context).size.width * 0.88, 50),
                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Konsuk()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: const Text(
                      "Войти",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Нет аккаунта?"),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => PasswordResetApp()));
                      },
                      child: const Text(
                        "Зарегистрироваться",
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
