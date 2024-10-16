import 'package:flutter/material.dart';
import 'package:peer_app/newsfeed/bottom_bar.dart';

class WalletScreen extends StatelessWidget {
  final double _balance = 150.75; // Example balance
  final List<Map<String, dynamic>> _transactions = [
    {
      'type': 'Deposit',
      'amount': 50.00,
      'date': 'Oct 1, 2024',
      'status': 'Completed',
    },
    {
      'type': 'Withdrawal',
      'amount': 20.00,
      'date': 'Sept 29, 2024',
      'status': 'Pending',
    },
    {
      'type': 'Payment',
      'amount': 15.99,
      'date': 'Sept 28, 2024',
      'status': 'Completed',
    },
    // Add more transactions here
  ];

  WalletScreen({super.key});

  // Function to handle adding funds
  void _addFunds(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Add Funds functionality coming soon!')),
    );
  }

  // Function to handle withdrawing funds
  void _withdrawFunds(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Withdraw Funds functionality coming soon!')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF2E2E2E),
        title: const Text('Wallet', style: TextStyle(color: Colors.white)),
        elevation: 10,
        shadowColor: Colors.black.withOpacity(0.25),
      ),
      backgroundColor: const Color(0xFF252525), // Background color for the wallet screen
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Balance Section
            _buildBalanceSection(),

            const SizedBox(height: 20),

            // Add and Withdraw Buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton.icon(
                  icon: const Icon(Icons.add),
                  label: const Text('Add Funds'),
                  onPressed: () => _addFunds(context),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF127EFC), // Button color matching the design
                    padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
                  ),
                ),
                ElevatedButton.icon(
                  icon: const Icon(Icons.remove),
                  label: const Text('Withdraw'),
                  onPressed: () => _withdrawFunds(context),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFFF5F5F), // Red button for withdraw
                    padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 20),

            // Transaction History Title
            const Text(
              'Transaction History',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white, // White text to match the dark background
              ),
            ),

            const SizedBox(height: 10),

            // Transaction History List
            Expanded(
              child: _buildTransactionList(),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBar(context),
    );
  }

  // Widget to display the balance
  Widget _buildBalanceSection() {
    return Container(
      padding: const EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        color: const Color(0xFF0B4D99), // A darker blue shade for the balance section
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.25),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Current Balance',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.w600,
              fontFamily: 'Inter',
            ),
          ),
          const SizedBox(height: 10),
          Text(
            '\$$_balance',
            style: const TextStyle(
              color: Colors.white,
              fontSize: 32,
              fontWeight: FontWeight.bold,
              fontFamily: 'Inter',
            ),
          ),
        ],
      ),
    );
  }

  // Widget to display the transaction history list
  Widget _buildTransactionList() {
    return ListView.builder(
      itemCount: _transactions.length,
      itemBuilder: (context, index) {
        return Card(
          color: const Color(0xFF2E2E2E),
          margin: const EdgeInsets.symmetric(vertical: 8.0),
          child: ListTile(
            title: Text(
              _transactions[index]['type'],
              style: const TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
            ),
            subtitle: Text(
              '${_transactions[index]['date']} - ${_transactions[index]['status']}',
              style: const TextStyle(color: Color(0xFFBABABA)),
            ),
            trailing: Text(
              _transactions[index]['amount'] > 0
                  ? '+\$${_transactions[index]['amount'].toStringAsFixed(2)}'
                  : '-\$${_transactions[index]['amount'].abs().toStringAsFixed(2)}',
              style: TextStyle(
                color: _transactions[index]['amount'] > 0 ? Colors.green : Colors.red,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        );
      },
    );
  }
}
