class HearingTestApp extends StatelessWidget {
  const HearingTestApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App de Audição',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const TestScreen(),
    );
  }
}

class TestScreen extends StatefulWidget {
  const TestScreen({super.key});

  @override
  State<TestScreen> createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  final AudioPlayer _audioPlayer = AudioPlayer();
  String _currentEar = 'Esquerdo';
  int _currentFreq = 1000;
  double _volume = 0.5;

  // Função para tocar o tom de teste
  void _playTone() async {
    // Configura o balanço do som (Esquerdo = -1.0, Direito = 1.0)
    double balance = _currentEar == 'Esquerdo' ? -1.0 : 1.0;
    await _audioPlayer.setBalance(balance);
    await _audioPlayer.setVolume(_volume);
    
    // Altere para o caminho do seu arquivo de áudio local com a frequência correta
    await _audioPlayer.play(AssetSource('tones/${_currentFreq}hz.mp3'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Teste de Audição')),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Ouvido Atual: $_currentEar', style: const TextStyle(fontSize: 22)),
            const SizedBox(height: 10),
            Text('Frequência: $_currentFreq Hz', style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: _playTone,
              style: ElevatedButton.styleFrom(minimumSize: const Size(200, 60)),
              child: const Text('Ouvir Som', style: TextStyle(fontSize: 18)),
            ),
            const SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () => setState(() => _currentEar = 'Esquerdo'),
                  child: const Text('Ouvido Esquerdo'),
                ),
                ElevatedButton(
                  onPressed: () => setState(() => _currentEar = 'Direito'),
                  child: const Text('Ouvido Direito'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
