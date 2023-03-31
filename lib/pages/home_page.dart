import 'package:flutter/material.dart';
// Block Semua Nama Yang Sama (Ctrl + d)
// Rapihin Kode (shift + alt + f), gak boleh ada error merah

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget kotakMerah() {
      return Container(
        height: 80,
        width: 80,
        margin: const EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(17),
          color: Colors.red,
        ),
      );
    }

    Widget kotakHijau() {
      return Container(
        height: 160,
        width: 160,
        margin: const EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(17),
          color: Colors.green,
        ),
      );
    }

    Widget kotakBiru() {
      return Container(
        height: 160,
        width: double.infinity,
        margin: EdgeInsets.only(top: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(17),
          color: Colors.blue,
        ),
      );
    }

    return Scaffold(
      backgroundColor: Color(0xffF4F4F4),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    kotakMerah(),
                    kotakMerah(),
                    kotakMerah(),
                    kotakMerah(),
                    kotakMerah(),
                    kotakMerah(),
                    kotakMerah(),
                    kotakMerah(),
                  ],
                ),
              ),
              SizedBox(
                height: 24,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    kotakHijau(),
                    kotakHijau(),
                    kotakHijau(),
                  ],
                ),
              ),
              kotakBiru(),
              kotakBiru(),
              kotakBiru(),
              kotakBiru(),
      
            ],
          ),
        ),
      ),
    );
  }
}
