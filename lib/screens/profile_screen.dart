import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 19, 19, 19),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 19, 19, 19),
        leading: const BackButton(color: Colors.white),
        title: const Text('Profile', style: TextStyle(color: Colors.white)),
        actions: [
          IconButton(
            icon: const Icon(Icons.support_agent, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const CircleAvatar(
                        radius: 35,
                        backgroundImage: AssetImage(
                          'assets/images/profile_assignment.png',
                        ),
                      ),
                      const SizedBox(width: 16),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'andaz Kumar',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            'member since Dec, 2020',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                      const Spacer(),
                      const Icon(Icons.edit, color: Colors.grey),
                    ],
                  ),
                  const SizedBox(height: 24),

                  // CRED Garage
                  Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(2),
                    ),
                    child: Row(
                      children: const [
                        Icon(Icons.directions_car, color: Colors.white),
                        SizedBox(width: 12),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'get to know your vehicles, inside out',
                                style: TextStyle(color: Colors.white),
                              ),
                              Row(
                                children: [
                                  Text(
                                    'CRED garage',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(width: 8),
                                  Icon(
                                    Icons.arrow_forward,
                                    size: 16,
                                    color: Colors.white,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 24),

                  // Credit Score Row
                  firstRow(
                    icon: Icons.speed,
                    label: 'credit score',
                    value: '757',
                    highlight: 'REFRESH AVAILABLE',
                  ),

                  const Divider(color: Color.fromARGB(255, 45, 45, 45)),

                  firstRow(
                    icon: Icons.currency_rupee,
                    label: 'lifetime cashback',
                    value: '₹3',
                  ),

                  const Divider(color: Color.fromARGB(255, 45, 45, 45)),

                  firstRow(
                    icon: Icons.account_balance_wallet_outlined,
                    label: 'bank balance',
                    value: 'check',
                  ),

                  const SizedBox(height: 32),

                  const Text(
                    'YOUR REWARDS & BENEFITS',
                    style: TextStyle(color: Colors.grey, letterSpacing: 1),
                  ),
                  const SizedBox(height: 16),

                  secondRow(title: 'cashback balance', value: '₹0'),
                  secondRow(title: 'coins', value: '26,46,583'),
                  secondRow(title: 'win upto Rs 1000', value: 'refer and earn'),

                  const SizedBox(height: 32),
                  const Text(
                    'TRANSACTIONS & SUPPORT',
                    style: TextStyle(color: Colors.grey, letterSpacing: 1),
                  ),
                  const SizedBox(height: 16),
                  secondRow(title: 'all transactions'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget firstRow({
    required IconData icon,
    required String label,
    required String value,
    String? highlight,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Row(
        children: [
          Icon(icon, color: Colors.white),
          const SizedBox(width: 12),
          Expanded(
            child: Row(
              children: [
                Text(label, style: const TextStyle(color: Colors.white)),
                if (highlight != null) ...[
                  const SizedBox(width: 8),
                  Text(
                    '• $highlight',
                    style: const TextStyle(color: Colors.green),
                  ),
                ],
              ],
            ),
          ),
          Text(value, style: const TextStyle(color: Colors.white)),
          const SizedBox(width: 8),
          const Icon(Icons.arrow_forward, size: 16, color: Colors.white),
        ],
      ),
    );
  }

  Widget secondRow({required String title, String? value}) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      title: Text(title, style: const TextStyle(color: Colors.white)),
      subtitle:
          value != null
              ? Text(value, style: const TextStyle(color: Colors.grey))
              : null,
      trailing: const Icon(
        Icons.arrow_forward_ios,
        size: 16,
        color: Colors.white,
      ),
      onTap: () {},
    );
  }
}
