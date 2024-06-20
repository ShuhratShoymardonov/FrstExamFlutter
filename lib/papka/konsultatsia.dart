import 'package:flutter/material.dart';
import 'package:umar_azizov/papka/chat1.dart';

void main() {
  runApp(const Konsuk());
}

class Konsuk extends StatelessWidget {
  const Konsuk({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Онлайн-консультация',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 22.0),
              child: Icon(
                Icons.notifications_none_outlined,
                size: 30,
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Container(
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Container(
                        child: Image.asset(
                          "images/Frame 1261155011.png",
                        ),
                      ),
                      Positioned(
                        bottom: -100,
                        left: MediaQuery.of(context).size.width / 4,
                        child: Container(
                          width: 150,
                          height: 150,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: AssetImage(
                                  "images/UmarAzizov.png",
                                ),
                                fit: BoxFit.cover),
                            border: Border.all(color: Colors.white, width: 8),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 110),
              Image.asset("images/Logo (3).png"),
              Text(
                "Руководитель клиники EuroMed в Душанбе",
                style: TextStyle(
                  color: Colors.black45,
                  fontSize: 14,
                ),
              ),
              SizedBox(height: 30),
              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                height: 110,
                decoration: BoxDecoration(
                  color: Color(0xffF4F4F5),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Количество",
                        style: TextStyle(
                          color: Color(0xff525252),
                          fontWeight: FontWeight.w400,
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        "консультаций: 3",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                          fontFamily: "Helvetica ",
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 70),
              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Цена",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Color(0xff94A3B8),
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                          ),
                        ),
                        Text(
                          "60 сомони",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Chat1(),
                          ),
                        );
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.35,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.blue,
                        ),
                        child: Center(
                          child: Text(
                            "Купить",
                            style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          child: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    IconButton(
                      icon: Icon(
                        Icons.home_outlined,
                        size: 30,
                      ),
                      onPressed: () {},
                    ),
                    // Text(
                    //   "Главная",
                    // ),
                  ],
                ),
                Column(
                  children: [
                    IconButton(
                      icon: Icon(
                        Icons.subscriptions_outlined,
                        size: 30,
                      ),
                      onPressed: () {},
                    ),
                    // Text(
                    //   "Подписки",
                    // ),
                  ],
                ),
                Column(
                  children: [
                    IconButton(
                      icon: Icon(
                        Icons.school_outlined,
                        size: 30,
                      ),
                      onPressed: () {},
                    ),
                    // Text(
                    //   "Курсы",
                    // ),
                  ],
                ),
                Column(
                  children: [
                    IconButton(
                      icon: Icon(
                        Icons.chat_bubble_outline,
                        color: Colors.blue,
                        size: 30,
                      ),
                      onPressed: () {},
                    ),
                    // Text(
                    //   "Консультация",
                    //   style: TextStyle(color: Colors.blue),
                    // ),
                  ],
                ),
                Column(
                  children: [
                    IconButton(
                      icon: Icon(
                        Icons.person_outline_outlined,
                        size: 30,
                      ),
                      onPressed: () {},
                    ),
                    // Text(
                    //   "Профиль",
                    // ),
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
