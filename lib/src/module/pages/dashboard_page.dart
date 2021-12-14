import 'package:external_dependencies/external_dependencies.dart';
import 'package:flutter/material.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  final List<String> rotas = [
    '/order/',
    '/product/',
    '/financial/',
    '/contact_us/',
    '/qanda/',
  ];

  void _onItemTapped(int index) {
    setState(() {
      Modular.to.pushNamed(rotas[index]);
    });
  }

  @override
  Widget build(BuildContext context) {
    String partnerName = Modular.args.data ?? "";

    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(title: Text('Dashboard: $partnerName')),
      endDrawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Drawer Header'),
            ),
            ListTile(
              title: const Text('Dados Bancários'),
              onTap: () => Modular.to.popAndPushNamed('/databank/'),
            ),
            ListTile(
              title: const Text('Minha Loja'),
              onTap: () => Modular.to.popAndPushNamed('/my_store/'),
            ),
            ListTile(
              title: const Text('Lista Parceiros'),
              onTap: () => Modular.to.popAndPushNamed('/partner_list/'),
            ),
            ListTile(
              title: const Text('Configurações'),
              onTap: () => Modular.to.popAndPushNamed('/config/'),
            ),
            ListTile(
              title: const Text('Políticas de Privacidade'),
              onTap: () => Modular.to.popAndPushNamed('/policies_and_privacy/'),
            ),
            ListTile(
              title: const Text('Sair'),
              onTap: () => Modular.to.navigate('/home/'),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedFontSize: 12,
        unselectedFontSize: 12,
        backgroundColor: Colors.grey,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.local_grocery_store),
            label: 'Vendas',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard_rounded),
            label: 'Produtos',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.attach_money_outlined),
            label: 'Financeiro',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.headset_mic),
            label: 'Fale\nconosco',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.headset_mic),
            label: 'Perguntas\ne respostas',
          ),
        ],
      ),
    );
  }
}
