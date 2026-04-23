import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
        backgroundColor: Colors.blueAccent,
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                alignment: Alignment.center,
                clipBehavior: Clip.none,
                children: [
                  Container(
  height: 200,
  width: double.infinity,
  decoration: BoxDecoration(
    image: DecorationImage(
      image: NetworkImage(
        "https://cdn.pixabay.com/photo/2021/02/20/18/11/sea-6034191_640.jpg",
      ),
      fit: BoxFit.cover,
      alignment: Alignment.topCenter,
    ),
  ),
),

                  Positioned(
                    bottom: -60,
                    child: CircleAvatar(
                      radius: 60,
                      backgroundImage: AssetImage("assets/images/me1.jpeg"),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 70),

              const Text(
                "Siti Nurnawal Jahro",
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.blueGrey,
                  letterSpacing: 2,
                  fontWeight: FontWeight.w500,
                ),
              ),

              const SizedBox(height: 10),

              const Text(
                "Bekasi, Indonesia",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black45,
                  letterSpacing: 1.5,
                ),
              ),

              const SizedBox(height: 10),

              const Text(
                "Mahasiswa Sistem Informasi",
                style: TextStyle(fontSize: 15, color: Colors.black45),
              ),

              const SizedBox(height: 20),

              Card(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      Column(
                        children: [
                          Text(
                            "Project",
                            style: TextStyle(
                              color: Colors.blueAccent,
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text("16"),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            "Followers",
                            style: TextStyle(
                              color: Colors.blueAccent,
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text("2308"),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}
