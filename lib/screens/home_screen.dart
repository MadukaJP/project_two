import 'package:flutter/material.dart';
import 'package:project_two/constants/color.dart';
import '../widgets/balance_card.dart';
import '../widgets/quick_actions_row.dart';
import '../widgets/share_opay_card.dart';
import '../widgets/services_grid.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.backgroundColor,
        elevation: 0,
        title: Row(
          children: [
            Stack(
              children: [
                CircleAvatar(
                  radius: 18,
                  backgroundColor: Colors.tealAccent,
                  backgroundImage: AssetImage('assets/icons/opay.png'),
                ),
                Positioned(
                  right: 0,
                  bottom: 0,
                  child: Container(
                    child: Image.asset(
                      'assets/icons/kyc.webp',
                      width: 14,
                      height: 14,
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(width: 12),
            const Text(
              'Hi, EBUKA',
              style: TextStyle(color: Color.fromARGB(255, 231, 228, 228), fontSize: 14),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.support_agent_outlined, color: AppColors.icon100),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.crop_free_outlined, color: AppColors.icon100),
            onPressed: () {},
          ),
          Stack(
            children: [
              IconButton(
                icon: const Icon(
                  Icons.notifications_outlined,
                  color: AppColors.icon100,
                ),
                onPressed: () {},
              ),
              Positioned(
                right: 4,
                top: 4,
                child: Container(
                  padding: const EdgeInsets.all(2),
                  decoration: const BoxDecoration(
                    color: AppColors.red,
                    shape: BoxShape.circle,
                  ),
                  child: const Text(
                    '10',
                    style: TextStyle(color: Colors.white, fontSize: 8),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      body: const SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            BalanceCard(),
            SizedBox(height: 24),
            QuickActionsRow(),
            SizedBox(height: 24),
            ShareOpayCard(),
            SizedBox(height: 24),
            ServicesGrid(),
            SizedBox(height: 24),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.black,
        selectedItemColor: AppColors.primary,
        unselectedItemColor: Colors.grey,
        currentIndex: 0,
        selectedFontSize: 12,
        unselectedFontSize: 12,
        items: [
          BottomNavigationBarItem(
            icon: Image.asset('assets/icons/home.webp', width: 24),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/icons/rewards.webp', width: 24),
            label: 'Rewards',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/icons/finance.webp', width: 24),
            label: 'Finance',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/icons/cards.webp', width: 24),
            label: 'Cards',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/icons/account.webp', width: 24),
            label: 'Me',
          ),
        ],
      ),
    );
  }
}
