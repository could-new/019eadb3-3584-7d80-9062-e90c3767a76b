import 'package:flutter/material.dart';

void main() {
  runApp(const GiveMeADealApp());
}

class GiveMeADealApp extends StatelessWidget {
  const GiveMeADealApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'عطني صفقة',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.teal,
          brightness: Brightness.light,
        ),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
      },
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('عطني صفقة'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.local_offer_outlined,
              size: 100,
              color: Colors.teal,
            ),
            const SizedBox(height: 24),
            Text(
              'لا توجد صفقات حالياً',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const SizedBox(height: 16),
            ElevatedButton.icon(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('جاري البحث عن صفقات...')),
                );
              },
              icon: const Icon(Icons.search),
              label: const Text('ابحث عن صفقة'),
            ),
          ],
        ),
      ),
    );
  }
}
