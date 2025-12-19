import 'package:flutter/material.dart';
import 'package:project_two/constants/color.dart';

class ServicesGrid extends StatelessWidget {
  const ServicesGrid({super.key});

  final List<Map<String, dynamic>> services = const [
    {'icon': Icons.phone, 'label': 'Airtime'},
    {'icon': Icons.signal_wifi_4_bar, 'label': 'Data'},
    {'icon': Icons.sports_soccer, 'label': 'Betting'},
    {'icon': Icons.tv, 'label': 'TV'},
    {'icon': Icons.savings, 'label': 'Safebox'},
    {'icon': Icons.handshake, 'label': 'Loan'},
    {'icon': Icons.volunteer_activism, 'label': 'Play4aChild'},
    {'icon': Icons.apps, 'label': 'More'},
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16), // Equal padding on all sides
      decoration: BoxDecoration(
        color: AppColors.foregroundColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          childAspectRatio: 1.0,
          mainAxisSpacing: 16,  
          crossAxisSpacing: 16, 
        ),
        itemCount: services.length,
        itemBuilder: (context, index) {
          final item = services[index];
          final IconData iconData = item['icon'] as IconData;


          return Column(
            children: [
              Container(
                width: 50,
                height: 50,
                decoration: const BoxDecoration(
                  color: AppColors.foregroundColor2, 
                  shape: BoxShape.circle,
                ),
                alignment: Alignment.center,
                child: Icon(
                  iconData,
                  size: 24,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                item['label'] as String,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}