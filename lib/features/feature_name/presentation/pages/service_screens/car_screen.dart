import 'package:flutter/material.dart';

class CarScreen extends StatelessWidget {
  const CarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Avtomobil bo\'limi'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {},
        ),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          bool isWide = constraints.maxWidth > 600;
          return SingleChildScrollView(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Yuqoridagi ikki karta
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: _buildCard(
                        icon: Icons.block,
                        title: 'Taqiqni tekshirish',
                      ),
                    ),
                    if (isWide) const SizedBox(width: 16),
                    Expanded(
                      child: _buildCard(
                        icon: Icons.directions_car,
                        title: 'Jarima maydonchasidan olib chiqish',
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 24),
                // Ma'lumotlar
                Text(
                  'Avtomobil ma\'lumotlari',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const SizedBox(height: 16),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: _buildInfoColumn([
                        'Avtomobil egasi: INTENSE BEST GROUP MCHJ',
                        'Rang: oq',
                        'Chiqarilgan yili: 2019',
                        'Modeli: Cobalt',
                        'Shassi tanasi raqami: XWBJF69VEKA150610',
                      ]),
                    ),
                    if (isWide) const SizedBox(width: 16),
                    Expanded(
                      child: _buildInfoColumn([
                        'Dvigatel raqami: B15D212193252DJ CX0902',
                        'Butun vazni (kg): 1590',
                        'Yuksiz og\'irligi (kg): 1090',
                        'Yoqlig\'i turi: Газ/бензин',
                        'Tex-pasport: AAG 1234567',
                        'Ro\'yxatga olingan sana: 20.03.2024',
                      ]),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget _buildCard({required IconData icon, required String title}) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Icon(icon, size: 40, color: Colors.red),
            const SizedBox(width: 16),
            Expanded(
              child: Text(
                title,
                style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoColumn(List<String> items) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: items
          .map(
            (item) => Card(
          color: Colors.blue.shade700,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              item,
              style: const TextStyle(color: Colors.white),
            ),
          ),
        ),
      )
          .toList(),
    );
  }

}
