import 'package:flutter/material.dart';
import 'package:project_two/constants/color.dart';

class QuickActionsRow extends StatelessWidget {
  const QuickActionsRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.foregroundColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _actionItem('To OPay', Icons.three_p),
          _actionItem('To Bank', Icons.account_balance),
          _actionItem('Withdraw', Icons.open_in_full),
        ],
      ),
    );
  }

  Widget _actionItem(String label, IconData icon) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: AppColors.foregroundColor2,
            borderRadius: BorderRadius.circular(16),
          ),
          child: label == 'Withdraw' ?
           Container(
             padding: const EdgeInsets.all(3),
             decoration: BoxDecoration(
               color: AppColors.primary,
               borderRadius: BorderRadius.circular(10),
             ),
             child: Icon(
               icon,
               size: 18,
               color: AppColors.foregroundColor2, // Matches OPay white icons
             ),
           )
           : Icon(
            icon,
            size: 24,
            color: AppColors.primary, // Matches OPay white icons
          ),
        ),
        const SizedBox(height: 10),
        Text(
          label,
          style: const TextStyle(
            color: AppColors.text100,
            fontSize: 12,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
