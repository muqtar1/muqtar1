import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: home(),
  ));
}

class home extends StatelessWidget {
  const home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(
            child: CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('images/mukho.jpg'),
            ),
          ),
          const SizedBox(
            height: 12.0,
          ),
          Text(
            'MukTar Ahmed Mahamoud',
          ),
          const SizedBox(
            height: 8.0,
          ),
          const Text(
            'Mobile Developer',
            style: TextStyle(letterSpacing: 3.0, color: Colors.white),
          ),
          const SizedBox(
            height: 12.0,
          ),
          Container(
            height: 65,
            margin: const EdgeInsets.only(left: 22.0, right: 22.0),
            padding: const EdgeInsets.only(left: 12.0),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(12.0)),
            child: Row(
              children: const [
                Icon(
                  Icons.phone,
                  color: Colors.cyan,
                ),
                SizedBox(
                  width: 12.0,
                ),
                Text('+252633604201')
              ],
            ),
          ),
          const SizedBox(
            height: 12.0,
          ),
          Container(
            height: 65,
            margin: const EdgeInsets.only(left: 22.0, right: 22.0),
            padding: const EdgeInsets.only(left: 12.0),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(12.0)),
            child: Row(
              children: const [
                Icon(
                  Icons.email,
                  color: Colors.cyan,
                ),
                SizedBox(
                  width: 12.0,
                ),
                Text('muq604@gmail.com')
              ],
            ),
          )
        ],
      ),
    );
  }
}
