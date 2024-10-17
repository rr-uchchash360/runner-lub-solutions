import 'package:flutter/material.dart';

class RewardsScreen extends StatelessWidget {
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
            Container(
              constraints: BoxConstraints(
                  minWidth: double.infinity, maxWidth: double.infinity),
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: LinearGradient(
                  colors: [
                    Color(0xFF3E81F4),
                    Color(0xFF2F62CF),
                  ],
                  stops: [0.0, 1.0],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Current Credits',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 17),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image(
                        image: AssetImage('assets/credits_taka.png'),
                        width: 40,
                        height: 40,
                        fit: BoxFit.contain,
                      ),
                      SizedBox(width: 8),
                      Text(
                        '150',
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      Spacer(),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(
                              vertical: 2.0, horizontal: 5.0),
                          primary: Colors.white,
                          onPrimary: Colors.blue.withOpacity(0.1),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(7.0),
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 2.0, horizontal: 5.0),
                          child: Text(
                            'Redeem Points',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                              color: Colors.blue,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Text(
                'Redeem points for exclusive discounts on exciting products today! Shop now and save!',
                style: TextStyle(fontSize: 9, color: Colors.grey)),
            SizedBox(height: 20),
            Text('My Rewards List',
                style: TextStyle(fontSize: 18, color: Color(0xFF2C4088))),
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
                    Color(0xFF3E81F4),
                    Color(0xFF2F62CF),
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
