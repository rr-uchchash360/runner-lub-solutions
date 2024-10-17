import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
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
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('assets/dummy_pro_pic.png'),
                ),
                SizedBox(width: 20),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Md. Rafiur Rahman',
                        style: TextStyle(
                            fontSize: 24, color: Color.fromRGBO(21, 18, 89, 1)),
                      ),
                      Text(
                        'ID: 123456',
                        style: TextStyle(
                            fontSize: 14,
                            color: Color.fromRGBO(108, 123, 148, 1)),
                      ),
                      Text(
                        'Mobile Application Developer',
                        style: TextStyle(
                            fontSize: 14,
                            color: Color.fromRGBO(108, 123, 148, 1)),
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      shape: BoxShape.circle,
                    ),
                    child:
                        Icon(Icons.camera_alt, size: 24, color: Colors.white),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            _buildProfileDetail(
                icon: Icons.phone,
                title: 'Phone',
                value: '+880 11 1111 1111',
                assetIconPath: 'assets/phone.png'),
            _buildProfileDetail(
                icon: Icons.location_on,
                title: 'Address',
                value: 'Tejgaon, Dhaka',
                assetIconPath: 'assets/location.png'),
            Row(
              children: [
                _buildProfileDetail(
                    icon: Icons.lock,
                    title: 'Password',
                    value: '**************',
                    assetIconPath: 'assets/key.png'),
                SizedBox(width: 10),
                Container(
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.25,
                    height: 30,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      child: Text(
                        'Change',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildProfileDetail({
    required IconData icon,
    required String title,
    required String value,
    required String assetIconPath,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          Image.asset(
            assetIconPath,
            width: 45,
            height: 45,
          ),
          SizedBox(width: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title,
                  style: TextStyle(color: Color.fromRGBO(108, 123, 148, 1))),
              Text(value,
                  style: TextStyle(
                      fontSize: 18, color: Color.fromRGBO(21, 18, 89, 1))),
            ],
          ),
        ],
      ),
    );
  }
}
