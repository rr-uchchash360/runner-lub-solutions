import 'package:flutter/material.dart';

class RedeemedScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Image.asset(
            'assets/back_button.png',
            width: 35,
            height: 35,
          ),
          onPressed: () {},
        ),
        title: Text('', style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ToggleButtons(
              isSelected: [true, false],
              onPressed: (index) {},
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text('Rewards'),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text('Redeemed'),
                ),
              ],
              borderRadius: BorderRadius.circular(30),
            ),
            SizedBox(height: 20),
            Expanded(
              child: ListView(
                children: List.generate(5, (index) => _buildRewardItem()),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildRewardItem() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(blurRadius: 4, color: Colors.grey.withOpacity(0.2))
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text('Servo 4T 20W40 Engine Oil, 1L',
                style: TextStyle(fontSize: 16, color: Color(0xFF2C4088))),
            Text('12/07/21   03:30pm',
                style: TextStyle(fontSize: 12, color: Colors.grey)),
          ]),
          Text(
            '+10',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              foreground: Paint()
                ..shader = LinearGradient(
                  colors: [
                    Color.fromARGB(255, 112, 115, 118),
                    Color.fromARGB(255, 93, 95, 102),
                  ],
                  stops: [0.0, 1.0],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ).createShader(Rect.fromLTWH(0, 0, 100, 50)),
            ),
          ),
        ],
      ),
    );
  }
}
