import 'package:flutter/material.dart';

void main() {
  runApp(const MeuApp());
}

class MeuApp extends StatelessWidget {
  const MeuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Organizador de Remédios',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const TelaInicial(),
    );
  }
}

class TelaInicial extends StatelessWidget {
  const TelaInicial({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Resumo Diário")),
      body: Column(
        children: [
          const Text("Doses tomadas: 2"),
          const Text("Doses faltantes: 3"),
          const Text("Próximos horários: 09h, 17h"),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => const ListaReceitas()));
            },
            child: const Text("Ver Receitas"),
          ),
        ],
      ),
    );
  }
}

class ListaReceitas extends StatelessWidget {
  const ListaReceitas({super.key});

  @override
  Widget build(BuildContext context) {
    final receitas = ["Receita de Dr. Silva - Paciente João", "Receita de Dra. Maria - Paciente Ana"];
    return Scaffold(
      appBar: AppBar(title: const Text("Receitas")),
      body: ListView.builder(
        itemCount: receitas.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(receitas[index]),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => const DetalhesReceita()));
            },
          );
        },
      ),
    );
  }
}

class DetalhesReceita extends StatelessWidget {
  const DetalhesReceita({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Detalhes da Receita")),
      body: Column(
        children: [
          const Text("Paracetamol 500mg - Intervalo 8h"),
          LinearProgressIndicator(value: 0.5), // régua de progresso
          ElevatedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => const Configuracoes()));
            },
            child: const Text("Configurações"),
          ),
        ],
      ),
    );
  }
}

class Configuracoes extends StatelessWidget {
  const Configuracoes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Configurações")),
      body: Column(
        children: const [
          Text("Tema: Claro/Escuro"),
          Text("Tipo de alerta: Som/Vibração"),
        ],
      ),
    );
  }
}
