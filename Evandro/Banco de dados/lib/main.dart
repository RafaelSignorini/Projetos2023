import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Dia de praia'),
      routes: {
        '/historico': (context) => HistoricoPage(),
        '/outraTela': (context) => OutraTela(),
      },
    );
  }
}

class TemperatureData {
  final double celsiusTemperature;
  final double fahrenheitTemperature;
  final DateTime dateTime;

  TemperatureData({
    required this.celsiusTemperature,
    required this.fahrenheitTemperature,
    required this.dateTime,
  });
}

class TemperatureDataList {
  static final List<TemperatureData> list = [];
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final TextEditingController _temperatureController = TextEditingController();

  String _texto = "";
  String img = 'assets/images/umbrella.png';

  void _calcular() {
    final double? celsiusTemperature =
        double.tryParse(_temperatureController.text);

    if (celsiusTemperature != null) {
      final double fahrenheitTemperature = (celsiusTemperature * 9 / 5) + 32;
      final DateTime now = DateTime.now();

      final temperatureData = TemperatureData(
        celsiusTemperature: celsiusTemperature,
        fahrenheitTemperature: fahrenheitTemperature,
        dateTime: now,
      );

      TemperatureDataList.list.add(temperatureData);

      setState(() {
        if (TemperatureDataList.list.isNotEmpty) {
          final TemperatureData lastData = TemperatureDataList.list.last;

          if (lastData.celsiusTemperature > 25) {
            _texto = "É dia de praia!";
          } else {
            _texto = "Assistir filme também é bom!";
          }

          print('Temperatura em Celsius: ${lastData.celsiusTemperature}');
          print(
              'Temperatura em Fahrenheit: ${lastData.fahrenheitTemperature}');
          print('Data: ${lastData.dateTime}');
        }
      });
    }
  }

  void alterarImagem() {
    setState(() {
      if (TemperatureDataList.list.isNotEmpty) {
        final TemperatureData lastData = TemperatureDataList.list.last;

        if (lastData.celsiusTemperature > 25) {
          img = 'assets/images/sun.png';
        } else {
          img = 'assets/images/sleeping.png';
        }
      }
    });
  }

  @override
  void dispose() {
    _temperatureController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Align(
              alignment: Alignment.topCenter,
              child: Transform.scale(
                scale: 0.5,
                child: Image.asset(img),
              ),
            ),
            const Text(
              'Quanto em Fahrenheit, e Oque fazer?',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 29.0,
              ),
            ),
            const SizedBox(height: 16.0),
            TextField(
              controller: _temperatureController,
              decoration: InputDecoration(
                labelText: 'Digite a temperatura em Celsius',
              ),
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: _calcular,
              child: const Text('Calcular'),
            ),
            Text(
              _texto,
            ),
            const SizedBox(height: 16.0),
            if (TemperatureDataList.list.isNotEmpty)
              Column(
                children: [
                  Text(
                    'Última Temperatura:',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Celsius: ${TemperatureDataList.list.last.celsiusTemperature.toStringAsFixed(2)}',
                  ),
                  Text(
                    'Fahrenheit: ${TemperatureDataList.list.last.fahrenheitTemperature.toStringAsFixed(2)}',
                  ),
                  Text(
                    'Data: ${TemperatureDataList.list.last.dateTime.toString()}',
                  ),
                ],
              ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/outraTela');
              },
              child: const Text('Bancos de Dados'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/historico');
        },
        child: const Icon(Icons.history),
      ),
    );
  }
}

class HistoricoPage extends StatelessWidget {
  const HistoricoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Histórico de Temperaturas'),
      ),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Histórico de Temperaturas:',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16.0),
            Expanded(
              child: ListView.builder(
                itemCount: TemperatureDataList.list.length,
                itemBuilder: (context, index) {
                  final temperatureData = TemperatureDataList.list[index];
                  return ListTile(
                    title: Text(
                      'Celsius: ${temperatureData.celsiusTemperature.toStringAsFixed(2)}',
                    ),
                    subtitle: Text(
                      'Fahrenheit: ${temperatureData.fahrenheitTemperature.toStringAsFixed(2)} | '
                      'Data: ${temperatureData.dateTime.toString()}',
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class OutraTela extends StatelessWidget {
  const OutraTela({Key? key}) : super(key: key);

  static const List<String> texto1 = [
    'SQlite'
    'Simples e eficaz',
    'Compatível com macOS, Linux, Windows, Android e iOS',
    'Serve para aplicativos desktop e servidores de baixo tráfego',
    'Utilizável para prototipagens rápidas',
  ];

  static const List<String> texto2 = [
    'POSTGRE'
    'Lida com cargas complexas que requerem alto desempenho',
    'Oferece um leque amplo de recursos, como as transições ACID, suporte a chaves estrangeiras e gatilhos, dentre outras funções',
    'Compatível com Python, Java e Ruby',
    'Tem funcionalidade robusta e personalizável',
  ];

  static const List<String> texto3 = [
    'MySQL'
    'Foco em desempenho, projetado para ser rápido e eficiente',
    'Compatível com PHP, Python e Java',
    'Utiliza tecnologias de otimização, índices, cache de consultas, particionamento de tabelas, etc',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BANCOS DE DADOS!'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Principais bancos de Dados:',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                for (String topico in texto1)
                  Text(
                    '• $topico',
                  ),
              ],
            ),
            const SizedBox(height: 16.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                for (String topico in texto2)
                  Text(
                    '• $topico',
                  ),
              ],
            ),
            const SizedBox(height: 16.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                for (String topico in texto3)
                  Text(
                    '• $topico',
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
