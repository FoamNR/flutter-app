import 'package:communityapp/widgets/navbar_widget.dart';
import 'package:communityapp/widgets/quick_action_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          "Home",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.blue,
      ),
      bottomNavigationBar: MyNavBar(
        currentIndex: 0,
        onTap: (index) {},
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.all(16),
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.3),
                    blurRadius: 10,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'เมนูด่วน',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      QuickAction(
                        icon: Icons.report_problem,
                        label: 'แจ้งปัญหา',
                        color: Colors.orange,
                        onTap: () {
                          // ตัวอย่าง: Navigator.push(context, MaterialPageRoute(builder: (_) => ReportPage()));
                        
                        },
                      ),
                      QuickAction(
                        icon: Icons.event,
                        label: 'กิจกรรม',
                        color: Colors.green,
                      ),
                      QuickAction(
                        icon: Icons.people,
                        label: 'ติดต่อ',
                        color: Colors.purple,
                      ),
                      QuickAction(
                        icon: Icons.account_balance_wallet,
                        label: 'ค่าส่วนกลาง',
                        color: Colors.pink,
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
